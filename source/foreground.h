
//{{BLOCK(foreground)

//======================================================================
//
//	foreground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 15 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 480 + 2048 = 3040
//
//	Time-stamp: 2021-11-07, 13:54:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FOREGROUND_H
#define GRIT_FOREGROUND_H

#define foregroundTilesLen 480
extern const unsigned short foregroundTiles[240];

#define foregroundMapLen 2048
extern const unsigned short foregroundMap[1024];

#define foregroundPalLen 512
extern const unsigned short foregroundPal[256];

#endif // GRIT_FOREGROUND_H

//}}BLOCK(foreground)
