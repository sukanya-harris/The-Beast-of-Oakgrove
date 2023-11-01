
//{{BLOCK(testBG)

//======================================================================
//
//	testBG, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 289 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 9248 + 8192 = 17952
//
//	Time-stamp: 2021-12-08, 14:13:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TESTBG_H
#define GRIT_TESTBG_H

#define testBGTilesLen 9248
extern const unsigned short testBGTiles[4624];

#define testBGMapLen 8192
extern const unsigned short testBGMap[4096];

#define testBGPalLen 512
extern const unsigned short testBGPal[256];

#endif // GRIT_TESTBG_H

//}}BLOCK(testBG)
