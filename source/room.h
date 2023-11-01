
//{{BLOCK(room)

//======================================================================
//
//	room, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 133 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4256 + 2048 = 6816
//
//	Time-stamp: 2021-11-18, 16:47:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ROOM_H
#define GRIT_ROOM_H

#define roomTilesLen 4256
extern const unsigned short roomTiles[2128];

#define roomMapLen 2048
extern const unsigned short roomMap[1024];

#define roomPalLen 512
extern const unsigned short roomPal[256];

#endif // GRIT_ROOM_H

//}}BLOCK(room)
