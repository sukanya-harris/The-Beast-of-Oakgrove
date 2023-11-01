
//{{BLOCK(barnRoom)

//======================================================================
//
//	barnRoom, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 175 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5600 + 2048 = 8160
//
//	Time-stamp: 2021-12-14, 01:55:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BARNROOM_H
#define GRIT_BARNROOM_H

#define barnRoomTilesLen 5600
extern const unsigned short barnRoomTiles[2800];

#define barnRoomMapLen 2048
extern const unsigned short barnRoomMap[1024];

#define barnRoomPalLen 512
extern const unsigned short barnRoomPal[256];

#endif // GRIT_BARNROOM_H

//}}BLOCK(barnRoom)
