
//{{BLOCK(pause2)

//======================================================================
//
//	pause2, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 45 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 1440 + 4096 = 6048
//
//	Time-stamp: 2021-12-06, 23:08:54
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE2_H
#define GRIT_PAUSE2_H

#define pause2TilesLen 1440
extern const unsigned short pause2Tiles[720];

#define pause2MapLen 4096
extern const unsigned short pause2Map[2048];

#define pause2PalLen 512
extern const unsigned short pause2Pal[256];

#endif // GRIT_PAUSE2_H

//}}BLOCK(pause2)
