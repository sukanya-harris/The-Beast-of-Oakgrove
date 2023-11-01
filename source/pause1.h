
//{{BLOCK(pause1)

//======================================================================
//
//	pause1, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 59 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 1888 + 4096 = 6496
//
//	Time-stamp: 2021-12-06, 23:08:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE1_H
#define GRIT_PAUSE1_H

#define pause1TilesLen 1888
extern const unsigned short pause1Tiles[944];

#define pause1MapLen 4096
extern const unsigned short pause1Map[2048];

#define pause1PalLen 512
extern const unsigned short pause1Pal[256];

#endif // GRIT_PAUSE1_H

//}}BLOCK(pause1)
