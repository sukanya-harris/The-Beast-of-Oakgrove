
//{{BLOCK(startBG)

//======================================================================
//
//	startBG, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 416 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13312 + 2048 = 15872
//
//	Time-stamp: 2021-11-08, 22:53:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTBG_H
#define GRIT_STARTBG_H

#define startBGTilesLen 13312
extern const unsigned short startBGTiles[6656];

#define startBGMapLen 2048
extern const unsigned short startBGMap[1024];

#define startBGPalLen 512
extern const unsigned short startBGPal[256];

#endif // GRIT_STARTBG_H

//}}BLOCK(startBG)
