
//{{BLOCK(forest)

//======================================================================
//
//	forest, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 302 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9664 + 2048 = 12224
//
//	Time-stamp: 2021-12-14, 18:11:07
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FOREST_H
#define GRIT_FOREST_H

#define forestTilesLen 9664
extern const unsigned short forestTiles[4832];

#define forestMapLen 2048
extern const unsigned short forestMap[1024];

#define forestPalLen 512
extern const unsigned short forestPal[256];

#endif // GRIT_FOREST_H

//}}BLOCK(forest)
