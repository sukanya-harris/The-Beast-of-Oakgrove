
//{{BLOCK(barn)

//======================================================================
//
//	barn, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 175 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5600 + 2048 = 8160
//
//	Time-stamp: 2021-12-14, 02:48:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BARN_H
#define GRIT_BARN_H

#define barnTilesLen 5600
extern const unsigned short barnTiles[2800];

#define barnMapLen 2048
extern const unsigned short barnMap[1024];

#define barnPalLen 512
extern const unsigned short barnPal[256];

#endif // GRIT_BARN_H

//}}BLOCK(barn)
