
//{{BLOCK(office)

//======================================================================
//
//	office, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 226 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7232 + 2048 = 9792
//
//	Time-stamp: 2021-11-26, 14:05:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_OFFICE_H
#define GRIT_OFFICE_H

#define officeTilesLen 7232
extern const unsigned short officeTiles[3616];

#define officeMapLen 2048
extern const unsigned short officeMap[1024];

#define officePalLen 512
extern const unsigned short officePal[256];

#endif // GRIT_OFFICE_H

//}}BLOCK(office)
