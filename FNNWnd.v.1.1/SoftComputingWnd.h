// SoftComputingWnd.h : main header file for the SOFTCOMPUTINGWND application
//

#if !defined(AFX_SOFTCOMPUTINGWND_H__43AC5FFC_D0FB_4EB5_ACD5_870DAFAC31E8__INCLUDED_)
#define AFX_SOFTCOMPUTINGWND_H__43AC5FFC_D0FB_4EB5_ACD5_870DAFAC31E8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols
#define M_PI	3.1415926535897932384626433832795

/////////////////////////////////////////////////////////////////////////////
// CSoftComputingWndApp:
// See SoftComputingWnd.cpp for the implementation of this class
//

class CSoftComputingWndApp : public CWinApp
{
public:
	CSoftComputingWndApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSoftComputingWndApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CSoftComputingWndApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SOFTCOMPUTINGWND_H__43AC5FFC_D0FB_4EB5_ACD5_870DAFAC31E8__INCLUDED_)
