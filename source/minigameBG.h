
//{{BLOCK(minigameBG)

//======================================================================
//
//	minigameBG, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2021-11-08, 17:37:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MINIGAMEBG_H
#define GRIT_MINIGAMEBG_H

#define minigameBGTilesLen 64
extern const unsigned short minigameBGTiles[32];

#define minigameBGMapLen 2048
extern const unsigned short minigameBGMap[1024];

#define minigameBGPalLen 512
extern const unsigned short minigameBGPal[256];

#endif // GRIT_MINIGAMEBG_H

//}}BLOCK(minigameBG)
