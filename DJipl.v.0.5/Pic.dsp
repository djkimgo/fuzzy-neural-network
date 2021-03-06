# Microsoft Developer Studio Project File - Name="Pic" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Pic - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Pic.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Pic.mak" CFG="Pic - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Pic - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Pic - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Pic - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o /win32 "NUL"
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o /win32 "NUL"
# ADD BASE RSC /l 0x412 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x412 /d "NDEBUG"
# SUBTRACT RSC /x
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 jpeg.lib tiff.lib cv.lib ipl.lib vlgrfmts.lib highgui.lib /nologo /subsystem:windows /incremental:yes /machine:I386 /nodefaultlib:"libc.lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "Pic - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "HAVE_IPL" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD BASE RSC /l 0x412 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x412 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 jpegd.lib tiffd.lib ipl.lib cv.lib highgui.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"libcmtd" /nodefaultlib:"LIBCD" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none /incremental:no

!ENDIF 

# Begin Target

# Name "Pic - Win32 Release"
# Name "Pic - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AffDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\Algebra.cpp
# End Source File
# Begin Source File

SOURCE=.\IPL\background.cpp
# End Source File
# Begin Source File

SOURCE=.\BPNN.cpp
# End Source File
# Begin Source File

SOURCE=.\cimage.cpp
# End Source File
# Begin Source File

SOURCE=.\complex.cpp
# End Source File
# Begin Source File

SOURCE=.\ConvDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\edgeEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\FaceEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\FaceTool.cpp
# End Source File
# Begin Source File

SOURCE=.\fuzzy.cpp
# End Source File
# Begin Source File

SOURCE=.\fuzzyRule.cpp
# End Source File
# Begin Source File

SOURCE=.\GaborEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\GaborFilter.cpp
# End Source File
# Begin Source File

SOURCE=.\hist1d.cpp
# End Source File
# Begin Source File

SOURCE=.\histEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\HLAC.cpp
# End Source File
# Begin Source File

SOURCE=.\HLACEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\HoughEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\Image.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageAdjust.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageFileBmp.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageFileGif.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageFileJpg.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageFileTif.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageFiltering.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageGeometry.cpp
# End Source File
# Begin Source File

SOURCE=.\ImagePixel.cpp
# End Source File
# Begin Source File

SOURCE=.\ImageTransform.cpp
# End Source File
# Begin Source File

SOURCE=.\ImgMisc.cpp
# End Source File
# Begin Source File

SOURCE=.\IplFace.cpp
# End Source File
# Begin Source File

SOURCE=.\lft.cpp
# End Source File
# Begin Source File

SOURCE=.\LPEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\moment.cpp
# End Source File
# Begin Source File

SOURCE=.\Morph.cpp
# End Source File
# Begin Source File

SOURCE=.\MorphEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\MyPrintPreview.cpp
# End Source File
# Begin Source File

SOURCE=.\MyPrSheet.cpp
# End Source File
# Begin Source File

SOURCE=.\OpticalFlow.cpp
# End Source File
# Begin Source File

SOURCE=.\PGMimage.cpp
# End Source File
# Begin Source File

SOURCE=.\Pic.cpp
# End Source File
# Begin Source File

SOURCE=.\Pic.rc
# End Source File
# Begin Source File

SOURCE=.\PicDoc.cpp
# End Source File
# Begin Source File

SOURCE=.\PicFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\PicView.cpp
# End Source File
# Begin Source File

SOURCE=.\ProgressBar.cpp
# End Source File
# Begin Source File

SOURCE=.\projEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\RLPEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\SoftEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\SVV.cpp
# End Source File
# Begin Source File

SOURCE=.\ThresEnv.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\AffDlg.h
# End Source File
# Begin Source File

SOURCE=.\Algebra.h
# End Source File
# Begin Source File

SOURCE=.\IPL\background.h
# End Source File
# Begin Source File

SOURCE=.\BPNN.h
# End Source File
# Begin Source File

SOURCE=.\cimage.h
# End Source File
# Begin Source File

SOURCE=.\complex.h
# End Source File
# Begin Source File

SOURCE=.\ConvDlg.h
# End Source File
# Begin Source File

SOURCE=.\edgeEnv.h
# End Source File
# Begin Source File

SOURCE=.\FaceEnv.h
# End Source File
# Begin Source File

SOURCE=.\FaceTool.h
# End Source File
# Begin Source File

SOURCE=.\fuzzy.h
# End Source File
# Begin Source File

SOURCE=.\fuzzyRule.h
# End Source File
# Begin Source File

SOURCE=.\GaborEnv.h
# End Source File
# Begin Source File

SOURCE=.\GaborFilter.h
# End Source File
# Begin Source File

SOURCE=.\histEnv.h
# End Source File
# Begin Source File

SOURCE=.\histogram.h
# End Source File
# Begin Source File

SOURCE=.\HLAC.h
# End Source File
# Begin Source File

SOURCE=.\HLACEnv.h
# End Source File
# Begin Source File

SOURCE=.\HoughEnv.h
# End Source File
# Begin Source File

SOURCE=.\Image.h
# End Source File
# Begin Source File

SOURCE=.\ImageAdjust.h
# End Source File
# Begin Source File

SOURCE=.\ImageFileGif.h
# End Source File
# Begin Source File

SOURCE=.\ImageFileTiff.h
# End Source File
# Begin Source File

SOURCE=.\ImageFiltering.h
# End Source File
# Begin Source File

SOURCE=.\ImageGeometry.h
# End Source File
# Begin Source File

SOURCE=.\ImagePixel.h
# End Source File
# Begin Source File

SOURCE=.\ImageTransform.h
# End Source File
# Begin Source File

SOURCE=.\ImgMisc.h
# End Source File
# Begin Source File

SOURCE=.\IplFace.h
# End Source File
# Begin Source File

SOURCE=.\lft.h
# End Source File
# Begin Source File

SOURCE=.\LPEnv.h
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\mask.h
# End Source File
# Begin Source File

SOURCE=.\moment.h
# End Source File
# Begin Source File

SOURCE=.\Morph.h
# End Source File
# Begin Source File

SOURCE=.\MorphEnv.h
# End Source File
# Begin Source File

SOURCE=.\MyPrintPreview.h
# End Source File
# Begin Source File

SOURCE=.\MyPrSheet.h
# End Source File
# Begin Source File

SOURCE=.\Nrutil.h
# End Source File
# Begin Source File

SOURCE=.\OpticalFlow.h
# End Source File
# Begin Source File

SOURCE=.\PGMimage.h
# End Source File
# Begin Source File

SOURCE=.\Pic.h
# End Source File
# Begin Source File

SOURCE=.\PicDoc.h
# End Source File
# Begin Source File

SOURCE=.\PicFrm.h
# End Source File
# Begin Source File

SOURCE=.\PicView.h
# End Source File
# Begin Source File

SOURCE=.\ProgressBar.h
# End Source File
# Begin Source File

SOURCE=.\projEnv.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\RLPEnv.h
# End Source File
# Begin Source File

SOURCE=.\SoftEnv.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\SVV.h
# End Source File
# Begin Source File

SOURCE=.\ThresEnv.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\bitmap1.bmp
# End Source File
# Begin Source File

SOURCE=.\res\bmp00001.bmp
# End Source File
# Begin Source File

SOURCE=.\res\idr_imag.ico
# End Source File
# Begin Source File

SOURCE=.\res\IMAGE.ico
# End Source File
# Begin Source File

SOURCE=.\res\Pic.ico
# End Source File
# Begin Source File

SOURCE=.\res\Pic.rc2
# End Source File
# Begin Source File

SOURCE=.\res\PicDoc.ico
# End Source File
# Begin Source File

SOURCE=.\res\Toolbar.bmp
# End Source File
# End Group
# End Target
# End Project
# Section Pic : {EEF65E82-E91A-11D1-994B-444553540000}
# 	2:13:ProgressBar.h:ProgressBar.h
# 	2:19:CLASS: CProgressBar:CProgressBar
# 	2:19:Application Include:Pic.h
# 	2:15:ProgressBar.cpp:ProgressBar.cpp
# End Section
