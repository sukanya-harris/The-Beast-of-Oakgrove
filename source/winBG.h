
//{{BLOCK(winBG)

//======================================================================
//
//	winBG, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 110 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 3520 + 4096 = 8128
//
//	Time-stamp: 2021-12-15, 02:30:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINBG_H
#define GRIT_WINBG_H

#define winBGTilesLen 3520
extern const unsigned short winBGTiles[1760];

#define winBGMapLen 4096
extern const unsigned short winBGMap[2048];

#define winBGPalLen 512
extern const unsigned short winBGPal[256];

#endif // GRIT_WINBG_H

//}}BLOCK(winBG)
