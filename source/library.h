
//{{BLOCK(library)

//======================================================================
//
//	library, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 73 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2336 + 2048 = 4896
//
//	Time-stamp: 2021-12-13, 20:01:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LIBRARY_H
#define GRIT_LIBRARY_H

#define libraryTilesLen 2336
extern const unsigned short libraryTiles[1168];

#define libraryMapLen 2048
extern const unsigned short libraryMap[1024];

#define libraryPalLen 512
extern const unsigned short libraryPal[256];

#endif // GRIT_LIBRARY_H

//}}BLOCK(library)
