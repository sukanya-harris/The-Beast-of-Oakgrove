
//{{BLOCK(startText)

//======================================================================
//
//	startText, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 162 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5184 + 2048 = 7744
//
//	Time-stamp: 2021-11-12, 03:40:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTTEXT_H
#define GRIT_STARTTEXT_H

#define startTextTilesLen 5184
extern const unsigned short startTextTiles[2592];

#define startTextMapLen 2048
extern const unsigned short startTextMap[1024];

#define startTextPalLen 512
extern const unsigned short startTextPal[256];

#endif // GRIT_STARTTEXT_H

//}}BLOCK(startText)
