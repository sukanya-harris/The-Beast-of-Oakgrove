
//{{BLOCK(winText)

//======================================================================
//
//	winText, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 52 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1664 + 2048 = 4224
//
//	Time-stamp: 2021-12-15, 02:29:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINTEXT_H
#define GRIT_WINTEXT_H

#define winTextTilesLen 1664
extern const unsigned short winTextTiles[832];

#define winTextMapLen 2048
extern const unsigned short winTextMap[1024];

#define winTextPalLen 512
extern const unsigned short winTextPal[256];

#endif // GRIT_WINTEXT_H

//}}BLOCK(winText)
