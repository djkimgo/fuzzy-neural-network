#include "stdafx.h"
#include "Image.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define DIB_HEADER_MARKER   ((WORD) ('M' << 8) | 'B')
/////////////////////////////////////////////////////////////////////////////
// CCImage load/save bmp

BOOL CmyImage::SaveBMP(LPCTSTR lpszFileName)
{
	CFile file;
	CFileException fe;
	BITMAPFILEHEADER bmfHdr;
	LPBITMAPINFOHEADER lpBI;
	DWORD dwDIBSize;

	// ���� ���� ���� ����
	if (!file.Open(lpszFileName, CFile::modeCreate | CFile::modeWrite | CFile::shareDenyWrite, &fe)) return FALSE;

	// �޸� �ڵ��� ��ȿ���� Ȯ��
	if (m_hImage == NULL) return FALSE;

	// �޸� ����
	lpBI = (LPBITMAPINFOHEADER)::GlobalLock((HGLOBAL)m_hImage);
	if (lpBI == NULL) return FALSE;

	// ��Ʈ�� ���� ��� ������ ����
	bmfHdr.bfType = DIB_HEADER_MARKER;  // "BM"
	dwDIBSize = *(LPDWORD)lpBI + ::PaletteSize((LPSTR)lpBI);
	if((lpBI->biCompression==BI_RLE8) || (lpBI->biCompression==BI_RLE4))
		dwDIBSize += lpBI->biSizeImage;
	else 
	{
		DWORD dwBmBitsSize;  // Size of Bitmap Bits only
		dwBmBitsSize = WIDTHBYTES((lpBI->biWidth)*((DWORD)lpBI->biBitCount)) * lpBI->biHeight;
		dwDIBSize += dwBmBitsSize;
		lpBI->biSizeImage = dwBmBitsSize;
	}

	bmfHdr.bfSize = dwDIBSize + sizeof(BITMAPFILEHEADER);
	bmfHdr.bfReserved1 = 0;
	bmfHdr.bfReserved2 = 0;
	bmfHdr.bfOffBits=(DWORD)sizeof(BITMAPFILEHEADER)+lpBI->biSize + PaletteSize((LPSTR)lpBI);
	TRY
	{
		// ��Ʈ�� ���� ����� ���Ͽ� ����
		file.Write((LPSTR)&bmfHdr, sizeof(BITMAPFILEHEADER));
		// ������ �����͸� ���Ͽ� ����
		file.WriteHuge(lpBI, dwDIBSize);
	}
	CATCH (CFileException, e)
	{
		::GlobalUnlock((HGLOBAL) m_hImage);
		THROW_LAST();
	}
	END_CATCH

	// �޸� Ǯ����
	::GlobalUnlock((HGLOBAL) m_hImage);
	return TRUE;
}


BOOL CmyImage::LoadBMP(LPCTSTR lpszFileName)
{
	CFile file;
	CFileException fe;
	LPSTR pDIB;
	DWORD dwBitsSize;
	BITMAPFILEHEADER bmfHeader;

	// �б� ���� ���� ����
	if(!file.Open(lpszFileName, CFile::modeRead|CFile::shareDenyWrite, &fe))
		return FALSE;

	// ������ ���̸� ����
	dwBitsSize = file.GetLength();

	// ���� ��� �б�
	if(file.Read((LPSTR)&bmfHeader, sizeof(bmfHeader))!=sizeof(bmfHeader))
		return FALSE;

	// BMP �������� ��Ÿ���� "BM" ��Ŀ�� �ִ��� Ȯ��
	if (bmfHeader.bfType != DIB_HEADER_MARKER)
		return FALSE;

	// �޸� �Ҵ�
	if((m_hImage = (HDIB)::GlobalAlloc(GMEM_MOVEABLE | GMEM_ZEROINIT, dwBitsSize)) == NULL) return FALSE;

	// �޸� ����
	pDIB = (LPSTR) ::GlobalLock((HGLOBAL) m_hImage);

	// ���� �б�
	if (file.ReadHuge(pDIB, dwBitsSize - sizeof(BITMAPFILEHEADER)) != dwBitsSize - sizeof(BITMAPFILEHEADER) ) 
	{
		::GlobalUnlock((HGLOBAL) m_hImage);
		::GlobalFree((HGLOBAL) m_hImage);
		return FALSE;
	}

	// �޸� Ǯ����
	::GlobalUnlock((HGLOBAL) m_hImage);

	// DIB �ʱ�ȭ
	InitDIB();

	return TRUE;
}