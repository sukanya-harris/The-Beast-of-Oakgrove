# 1 "bossBattle.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bossBattle.c"
# 18 "bossBattle.c"
const unsigned short bossBattleTiles[928] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x3000,0x3333,0x3300,0x3333,0x3330,0x3333,
 0x3330,0x2222,0x3330,0x1112,0x3330,0x2212,0x3330,0x1212,
 0x0000,0x0000,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x2222,0x2222,0x2221,0x2222,0x2222,0x2222,0x2221,0x2222,
 0x0000,0x0000,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

 0x0000,0x0000,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x2222,0x2222,0x2222,0x1122,0x2222,0x2222,0x2222,0x1122,
 0x0000,0x0000,0x3333,0x0000,0x3333,0x0003,0x3333,0x0033,
 0x3222,0x0033,0x3211,0x0033,0x3212,0x0033,0x3212,0x0033,
 0x3330,0x1212,0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,
 0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,
 0x2221,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x1122,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x3212,0x0033,0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,
 0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,
 0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,
 0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,

 0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,
 0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x4444,0x4444,
 0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,
 0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,
 0x4444,0x4444,0x2224,0x2222,0x2224,0x2222,0x2224,0x2222,
 0x2224,0x2222,0x2224,0x2222,0x2224,0x2222,0x2224,0x2222,

 0x3330,0x2222,0x3330,0x2222,0x3330,0x2222,0x3330,0x2211,
 0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2221,0x2222,0x2211,0x2222,0x2111,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x1122,0x2222,0x1112,0x2222,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x1111,0x2222,0x1111,0x2221,0x1111,0x2211,

 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x1222,0x1111,0x1112,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x1122,0x2222,0x1112,0x2222,0x1111,0x1222,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1111,0x2221,
 0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2221,0x2222,0x2211,0x2222,

 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x1112,0x2222,0x1111,0x1222,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x1122,0x2111,0x1111,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1222,
 0x2222,0x1112,0x2222,0x1111,0x1222,0x1111,0x1122,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1111,0x2222,
 0x1111,0x2211,0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,

 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2211,0x2222,0x2111,0x2222,0x1111,0x1222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1122,
 0x2222,0x1111,0x1222,0x1111,0x1122,0x1111,0x1112,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2111,0x2222,
 0x1111,0x2221,0x1111,0x2211,0x1111,0x2111,0x1111,0x1111,
 0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,0x3222,0x0033,
 0x3222,0x0033,0x3222,0x0033,0x3122,0x0033,0x3112,0x0033,

 0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,
 0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,
 0x2111,0x2222,0x1111,0x2222,0x1111,0x2222,0x1111,0x2222,
 0x1111,0x2222,0x1111,0x2222,0x1111,0x2222,0x1111,0x1222,
 0x1222,0x1111,0x1122,0x1111,0x1122,0x1111,0x1122,0x1111,
 0x1122,0x1111,0x1122,0x1111,0x1122,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

 0x1111,0x2222,0x1111,0x2221,0x1111,0x2211,0x1111,0x2211,
 0x1111,0x2111,0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x1222,0x2222,0x1122,0x2222,0x1112,0x2111,0x1112,
 0x2222,0x2222,0x2222,0x2222,0x1122,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1222,0x1111,0x1122,0x1111,0x1122,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

 0x2211,0x2222,0x2111,0x2222,0x2111,0x2222,0x2111,0x2222,
 0x2111,0x2222,0x2111,0x2222,0x2111,0x2222,0x2111,0x1122,
 0x1122,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,0x1111,
 0x1112,0x1111,0x1112,0x1111,0x1112,0x1111,0x1111,0x1111,
 0x2111,0x2222,0x1111,0x2222,0x1111,0x2221,0x1111,0x2221,
 0x1111,0x2211,0x1111,0x2211,0x1111,0x2111,0x1111,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1222,
 0x2222,0x1122,0x2222,0x1112,0x2222,0x1111,0x2211,0x1111,

 0x2222,0x2222,0x2222,0x2222,0x1112,0x2111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1122,0x1111,0x1112,0x1111,0x1112,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x2221,0x2222,0x2211,0x2222,0x2211,0x2222,0x2211,0x2222,
 0x2211,0x2222,0x2211,0x2222,0x2211,0x2222,0x2211,0x1112,
 0x1112,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

 0x2211,0x2222,0x2111,0x2222,0x1111,0x2222,0x1111,0x2222,
 0x1111,0x2221,0x1111,0x2221,0x1111,0x2211,0x1111,0x1111,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1122,
 0x2222,0x1112,0x2222,0x1111,0x1222,0x1111,0x1221,0x1111,
 0x2222,0x2222,0x2221,0x1222,0x2221,0x1222,0x2221,0x1222,
 0x2221,0x1222,0x2221,0x1222,0x2221,0x1222,0x2221,0x1111,
 0x3111,0x0033,0x3111,0x0033,0x3111,0x0033,0x3111,0x0033,
 0x3111,0x0033,0x3111,0x0033,0x3111,0x0033,0x3111,0x0033,

 0x1111,0x1112,0x1111,0x1112,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1211,0x1111,0x1211,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1121,0x1111,0x1121,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x3330,0x1111,0x3330,0x1111,0x3330,0x1111,0x3330,0x3333,
 0x3300,0x3333,0x3000,0x3333,0x0000,0x0000,0x0000,0x0000,

 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x3333,0x3333,
 0x3333,0x3333,0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,
 0x3111,0x0033,0x3111,0x0033,0x3111,0x0033,0x3333,0x0033,
 0x3333,0x0003,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short bossBattleMap[1024] __attribute__((aligned(4)))=
{
 0x0001,0x0002,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
 0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
 0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
 0x0003,0x0003,0x0003,0x0003,0x0004,0x0005,0x0000,0x0000,
 0x0006,0x0007,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0009,0x000A,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x0008,0x000D,0x000D,0x000D,0x000D,
 0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,
 0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,
 0x000D,0x000D,0x0008,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x000E,0x000F,0x080D,0x080D,0x080D,
 0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,
 0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,
 0x080D,0x040F,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x000E,0x040E,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x000E,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x000E,0x040E,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x000E,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x000E,0x040E,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x000E,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x000E,0x040E,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x000E,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x000E,0x040E,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x000E,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x000E,0x040E,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
 0x0008,0x000E,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x000B,0x0008,0x0008,0x000E,0x080F,0x000D,0x000D,0x000D,
 0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,
 0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,0x000D,
 0x000D,0x0C0F,0x040E,0x0008,0x0008,0x000C,0x0000,0x0000,
 0x000B,0x0008,0x0008,0x0008,0x080D,0x080D,0x080D,0x080D,
 0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,
 0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,0x080D,
 0x080D,0x080D,0x0008,0x0008,0x0008,0x000C,0x0000,0x0000,

 0x0010,0x0011,0x0012,0x0013,0x0014,0x0C09,0x0008,0x0008,
 0x0015,0x0016,0x0017,0x0018,0x0418,0x0019,0x0807,0x0008,
 0x0008,0x001A,0x001B,0x0807,0x0413,0x001C,0x0419,0x0008,
 0x0008,0x0008,0x001D,0x001E,0x0008,0x001F,0x0000,0x0000,
 0x0020,0x0021,0x0022,0x0023,0x0023,0x0024,0x0025,0x0026,
 0x0027,0x0023,0x0028,0x0029,0x0023,0x0023,0x002A,0x002B,
 0x002C,0x002D,0x0023,0x002E,0x002F,0x0023,0x0023,0x0030,
 0x0031,0x0426,0x002F,0x0023,0x0032,0x0033,0x0000,0x0000,

 0x0020,0x0034,0x0023,0x0023,0x0023,0x0023,0x0023,0x0023,
 0x0023,0x0023,0x0434,0x0023,0x0023,0x0023,0x0023,0x0023,
 0x0023,0x0023,0x0023,0x0035,0x0023,0x0023,0x0023,0x0023,
 0x0023,0x0023,0x0023,0x0023,0x0036,0x0033,0x0000,0x0000,
 0x0037,0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,
 0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,
 0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,0x0038,
 0x0038,0x0038,0x0038,0x0038,0x0038,0x0039,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short bossBattlePal[256] __attribute__((aligned(4)))=
{
 0x0000,0x4D4E,0x77DF,0x565C,0x0821,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};