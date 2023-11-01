
//{{BLOCK(maze)

//======================================================================
//
//	maze, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2021-11-10, 09:40:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAZE_H
#define GRIT_MAZE_H

#define mazeTilesLen 64
extern const unsigned short mazeTiles[32];

#define mazeMapLen 2048
extern const unsigned short mazeMap[1024];

#define mazePalLen 512
extern const unsigned short mazePal[256];

#endif // GRIT_MAZE_H

//}}BLOCK(maze)
