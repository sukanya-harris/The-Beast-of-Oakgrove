# 1 "dialogue.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "dialogue.c"


const unsigned int dialogue_sampleRate = 11025;
const unsigned int dialogue_length = 2656;

const signed char dialogue_data[] = {
7, 29, 39, 47, 52, 57, 61, 64, 66, 67, 67, 68, 66, 65, 62, 59, 55, 50, 42, 34, 16,
-21, -37, -45, -52, -57, -61, -64, -66, -68, -69, -69, -68, -66, -64, -61, -56, -51, -43, -35, -17,
21, 36, 44, 51, 56, 60, 63, 66, 67, 68, 68, 67, 65, 63, 60, 55, 50, 42, 34, 16,
-22, -38, -45, -53, -57, -62, -64, -67, -68, -69, -68, -67, -66, -63, -59, -54, -49, -40, -32, -2,
31, 39, 48, 53, 58, 62, 64, 66, 67, 68, 67, 66, 63, 61, 56, 52, 44, 36, 22, -17,
-37, -43, -52, -56, -62, -64, -67, -67, -69, -68, -68, -65, -63, -59, -54, -48, -39, -27, 10, 33,
41, 50, 54, 60, 62, 65, 67, 68, 68, 67, 65, 62, 59, 54, 49, 39, 31, 1, -32, -40,
-50, -55, -60, -63, -66, -68, -69, -68, -68, -66, -63, -60, -54, -49, -40, -29, 8, 33, 41, 50,
54, 60, 62, 66, 67, 68, 67, 67, 64, 62, 58, 53, 46, 37, 24, -15, -36, -44, -52, -57,
-62, -64, -67, -68, -69, -68, -67, -64, -62, -56, -52, -42, -35, -6, 29, 38, 48, 53, 59, 62,
65, 66, 68, 67, 67, 65, 62, 58, 53, 46, 37, 24, -16, -37, -45, -53, -58, -62, -65, -67,
-68, -69, -68, -66, -63, -60, -55, -49, -40, -28, 11, 34, 42, 51, 56, 61, 63, 66, 67, 68,
67, 66, 63, 60, 54, 49, 39, 30, -3, -34, -42, -51, -57, -61, -65, -67, -68, -68, -68, -66,
-64, -60, -55, -48, -40, -26, 13, 35, 43, 52, 56, 61, 64, 66, 67, 68, 67, 65, 62, 58,
53, 46, 37, 21, -19, -39, -46, -55, -59, -64, -66, -68, -68, -69, -67, -65, -62, -57, -51, -42,
-33, -2, 32, 41, 50, 56, 61, 64, 66, 68, 67, 67, 65, 63, 58, 54, 45, 37, 20, -20,
-40, -47, -55, -59, -64, -66, -69, -68, -69, -66, -65, -60, -56, -48, -40, -25, 15, 37, 44, 53,
57, 63, 65, 67, 67, 68, 66, 64, 60, 55, 49, 40, 28, -11, -36, -44, -53, -58, -63, -65,
-68, -68, -69, -67, -65, -61, -56, -49, -41, -27, 13, 36, 44, 53, 57, 63, 65, 67, 67, 68,
66, 64, 59, 55, 47, 39, 23, -18, -39, -47, -55, -59, -64, -66, -69, -68, -68, -66, -64, -58,
-54, -44, -37, -8, 30, 40, 50, 55, 61, 64, 67, 67, 68, 66, 64, 61, 56, 49, 40, 28,
-13, -37, -45, -54, -59, -64, -66, -69, -68, -68, -66, -64, -58, -54, -44, -36, -5, 32, 41, 51,
56, 62, 64, 67, 67, 68, 66, 64, 59, 54, 46, 37, 18, -24, -41, -50, -56, -61, -65, -67,
-68, -69, -67, -65, -61, -56, -48, -39, -20, 22, 40, 48, 55, 60, 64, 66, 67, 68, 66, 64,
60, 55, 47, 38, 21, -22, -41, -49, -57, -61, -65, -67, -69, -69, -67, -65, -60, -55, -46, -39,
-10, 29, 41, 51, 56, 62, 65, 67, 67, 67, 65, 63, 58, 53, 43, 34, 2, -35, -44, -54,
-59, -64, -67, -68, -69, -67, -66, -62, -57, -50, -41, -24, 18, 40, 47, 56, 60, 65, 66, 68,
67, 66, 63, 59, 53, 44, 35, 4, -34, -44, -54, -59, -64, -67, -68, -69, -67, -66, -61, -57,
-47, -40, -14, 26, 41, 50, 57, 61, 65, 66, 68, 67, 66, 61, 57, 50, 41, 26, -17, -40,
-48, -57, -61, -66, -67, -69, -68, -67, -63, -59, -52, -43, -28, 14, 38, 46, 56, 60, 65, 66,
68, 67, 66, 62, 58, 51, 42, 28, -14, -39, -47, -57, -61, -66, -67, -69, -68, -67, -63, -58,
-51, -42, -25, 18, 40, 48, 57, 61, 65, 66, 68, 66, 65, 61, 57, 48, 39, 18, -25, -43,
-51, -59, -63, -67, -68, -69, -67, -65, -60, -55, -45, -36, -2, 35, 44, 54, 59, 64, 66, 68,
67, 66, 62, 58, 50, 41, 25, -19, -41, -49, -58, -62, -67, -68, -69, -67, -66, -60, -56, -45,
-36, -1, 36, 45, 55, 59, 65, 66, 68, 67, 66, 61, 57, 48, 40, 13, -30, -42, -53, -59,
-65, -67, -69, -68, -67, -63, -59, -51, -42, -25, 21, 41, 50, 58, 62, 66, 67, 67, 66, 63,
59, 52, 43, 27, -17, -41, -49, -59, -62, -67, -67, -69, -67, -65, -59, -53, -43, -27, -57, -71,
-66, -70, -66, -67, -63, -61, -55, -52, -44, -36, -20, 18, 35, 43, 50, 55, 59, 63, 65, 67,
67, 68, 67, 66, 63, 61, 56, 52, 45, 37, 25, -12, -34, -42, -50, -55, -60, -63, -66, -67,
-68, -69, -68, -67, -64, -62, -57, -52, -46, -37, -24, 14, 34, 42, 50, 54, 60, 62, 65, 66,
68, 68, 67, 66, 63, 60, 56, 51, 44, 35, 20, -18, -37, -44, -52, -56, -62, -64, -67, -68,
-69, -68, -68, -66, -63, -60, -54, -49, -40, -31, -2, 31, 39, 48, 53, 58, 62, 64, 67, 67,
68, 67, 66, 63, 61, 56, 51, 43, 35, 18, -20, -38, -45, -53, -57, -62, -64, -67, -68, -69,
-68, -67, -65, -62, -57, -53, -46, -37, -22, 17, 36, 43, 51, 56, 61, 63, 66, 67, 68, 67,
67, 64, 61, 57, 52, 45, 37, 23, -16, -36, -44, -52, -57, -62, -64, -67, -68, -69, -68, -67,
-64, -62, -57, -53, -44, -37, -13, 24, 37, 46, 52, 57, 61, 64, 66, 67, 68, 67, 66, 63,
60, 54, 50, 40, 33, 4, -31, -40, -50, -55, -60, -63, -66, -68, -69, -68, -67, -65, -62, -58,
-53, -46, -37, -20, 20, 37, 45, 52, 57, 62, 64, 66, 67, 68, 67, 65, 62, 59, 54, 48,
39, 28, -10, -35, -43, -52, -57, -62, -64, -67, -68, -69, -68, -67, -64, -61, -55, -50, -40, -30,
7, 33, 42, 51, 55, 61, 63, 66, 67, 68, 67, 66, 63, 60, 54, 49, 39, 30, -4, -34,
-43, -52, -57, -62, -65, -67, -68, -68, -68, -66, -64, -59, -55, -47, -39, -24, 16, 37, 44, 53,
57, 62, 64, 67, 67, 68, 66, 64, 62, 57, 52, 43, 36, 9, -28, -40, -49, -55, -60, -64,
-66, -69, -68, -69, -66, -64, -60, -56, -48, -40, -26, 14, 36, 44, 53, 57, 62, 64, 67, 67,
68, 66, 64, 61, 56, 51, 41, 33, 3, -33, -42, -51, -57, -62, -65, -67, -69, -68, -68, -65,
-63, -57, -53, -43, -36, -6, 30, 40, 50, 55, 60, 64, 66, 68, 67, 67, 64, 62, 57, 53,
43, 36, 8, -30, -41, -50, -56, -61, -65, -67, -69, -68, -68, -65, -63, -57, -53, -43, -34, -2,
33, 42, 51, 56, 62, 64, 67, 67, 68, 66, 64, 60, 56, 49, 40, 28, -13, -37, -45, -54,
-59, -64, -66, -68, -68, -69, -66, -64, -59, -55, -45, -38, -10, 28, 39, 49, 55, 61, 64, 66,
67, 68, 66, 64, 61, 56, 50, 40, 28, -13, -37, -45, -55, -59, -64, -66, -69, -68, -68, -66,
-64, -58, -53, -43, -34, -2, 34, 42, 52, 57, 62, 65, 67, 67, 68, 65, 63, 58, 54, 44,
37, 8, -31, -41, -52, -57, -63, -65, -68, -68, -69, -66, -64, -59, -55, -45, -37, -8, 31, 41,
51, 56, 62, 64, 67, 67, 68, 65, 63, 58, 54, 44, 36, 5, -33, -43, -53, -58, -63, -66,
-68, -69, -68, -66, -63, -58, -52, -43, -31, 9, 36, 44, 54, 58, 63, 66, 67, 68, 67, 64,
61, 56, 48, 39, 23, -20, -41, -48, -57, -61, -66, -67, -69, -68, -67, -64, -59, -54, -44, -35,
-2, 34, 43, 53, 58, 63, 66, 67, 68, 66, 65, 60, 56, 48, 39, 20, -22, -42, -49, -58,
-62, -67, -67, -69, -67, -67, -62, -58, -51, -42, -27, 16, 39, 47, 56, 60, 65, 66, 68, 67,
66, 62, 58, 52, 43, 30, -10, -38, -46, -56, -60, -65, -67, -69, -68, -67, -64, -59, -53, -44,
-31, 9, 37, 45, 55, 59, 64, 66, 68, 67, 66, 62, 58, 52, 43, 30, -12, -38, -47, -56,
-61, -66, -67, -69, -68, -67, -63, -58, -51, -42, -25, 19, 40, 48, 57, 61, 66, 66, 68, 66,
65, 60, 56, 47, 39, 11, -30, -43, -53, -59, -64, -67, -68, -68, -67, -64, -60, -54, -44, -32,
10, 37, 46, 56, 60, 65, 66, 68, 67, 66, 61, 57, 48, 40, 14, -28, -42, -52, -59, -64,
-67, -69, -68, -67, -64, -59, -53, -43, -28, 15, 40, 48, 57, 61, 66, 66, 68, 66, 65, 59,
55, 44, 35, 1, -37, -46, -56, -60, -66, -67, -69, -67, -67, -61, -57, -46, -39, -5, 34, 44,
54, 59, 65, 66, 69, 66, 66, 60, 58, 45, 40, 5, -31, -48, -50, -69, -28, 32, -18, -32,
-43, -49, -55, -60, -63, -66, -67, -69, -68, -69, -66, -66, -61, -59, -52, -49, -38, -30, 3, 31,
40, 48, 53, 58, 61, 64, 66, 67, 67, 68, 66, 65, 61, 59, 53, 49, 39, 32, 3, -30,
-39, -48, -53, -59, -62, -65, -67, -68, -69, -68, -67, -65, -62, -58, -54, -48, -39, -28, 7, 32,
40, 49, 53, 59, 62, 65, 66, 67, 68, 67, 66, 63, 61, 56, 52, 45, 37, 23, -15, -36,
-43, -52, -56, -61, -63, -67, -68, -69, -68, -68, -66, -63, -60, -55, -50, -40, -32, -3, 30, 39,
48, 53, 58, 62, 64, 67, 67, 68, 67, 66, 63, 61, 55, 51, 43, 35, 17, -21, -38, -45,
-53, -57, -62, -64, -67, -68, -69, -68, -67, -64, -62, -57, -52, -44, -36, -18, 20, 37, 44, 52,
56, 61, 64, 66, 67, 68, 67, 66, 63, 61, 56, 51, 44, 35, 18, -21, -38, -46, -53, -58,
-63, -65, -68, -68, -69, -68, -67, -64, -61, -55, -51, -41, -34, -5, 30, 39, 48, 53, 59, 62,
65, 67, 68, 67, 67, 65, 62, 58, 53, 47, 38, 25, -13, -36, -43, -52, -57, -62, -64, -67,
-68, -69, -68, -67, -64, -61, -55, -51, -41, -33, -3, 31, 40, 49, 54, 60, 63, 66, 67, 68,
67, 67, 64, 61, 56, 52, 43, 36, 11, -27, -39, -48, -54, -60, -63, -66, -68, -69, -68, -68,
-65, -63, -57, -53, -44, -37, -10, 27, 38, 48, 53, 59, 62, 65, 67, 68, 67, 67, 64, 61,
56, 52, 42, 35, 8, -29, -40, -49, -55, -60, -64, -66, -68, -68, -68, -67, -65, -61, -56, -50,
-41, -30, 7, 34, 42, 51, 56, 61, 64, 66, 67, 68, 67, 65, 62, 58, 53, 46, 37, 20,
-20, -39, -46, -55, -59, -64, -66, -69, -68, -69, -66, -65, -61, -56, -50, -41, -29, 10, 35, 43,
52, 56, 62, 64, 67, 67, 68, 67, 64, 62, 56, 52, 42, 34, 5, -32, -41, -51, -56, -62,
-65, -67, -69, -68, -68, -65, -63, -58, -53, -43, -36, -6, 30, 40, 50, 55, 60, 64, 66, 68,
67, 67, 64, 62, 57, 52, 43, 35, 6, -31, -41, -51, -57, -62, -65, -67, -68, -69, -67, -65,
-62, -57, -51, -42, -31, 7, 35, 43, 52, 57, 62, 64, 67, 67, 68, 66, 64, 59, 55, 48,
39, 24, -18, -39, -47, -55, -60, -65, -66, -69, -68, -68, -65, -63, -58, -53, -43, -35, -3, 33,
42, 52, 56, 62, 64, 67, 67, 68, 66, 63, 59, 54, 46, 37, 20, -21, -40, -48, -55, -59,
-63, -65, -67, -66, -65, -63, -59, -54, -48, -39, -25, 16, 36, 44, 52, 56, 60, 62, 64, 63,
63, 60, 57, 52, 47, 38, 26, -12, -34, -42, -50, -55, -59, -61, -62, -62, -62, -59, -56, -51,
-46, -37, -25, 13, 33, 41, 48, 52, 56, 58, 59, 59, 58, 56, 53, 48, 42, 34, 21, -16,
-34, -41, -48, -52, -55, -57, -58, -58, -56, -54, -50, -46, -38, -32, -8, 25, 34, 42, 46, 50,
53, 54, 55, 54, 53, 49, 46, 41, 34, 24, -7, -29, -36, -43, -47, -51, -52, -53, -53, -52,
-50, -46, -43, -35, -30, -7, 22, 31, 38, 42, 46, 48, 49, 50, 48, 48, 44, 41, 35, 29,
18, -12, -29, -34, -40, -43, -46, -47, -48, -47, -46, -43, -41, -36, -30, -20, 7, 25, 30, 36,
39, 42, 43, 44, 43, 42, 40, 37, 34, 27, 21, 0, -23, -28, -34, -37, -40, -41, -42, -41,
-40, -38, -35, -32, -26, -20, 1, 21, 25, 31, 33, 36, 36, 37, 37, 36, 34, 31, 28, 22,
16, -6, -20, -24, -29, -31, -33, -34, -34, -33, -33, -30, -28, -24, -20, -11, 9, 18, 22, 25,
27, 28, 28, 29, 28, 27, 24, 22, 18, 15, 3, -13, -17, -20, -22, -24, -24, -24, -24, -23,
-21, -19, -17, -14, -9, 4, 11, 13, 15, 15, 16, 16, 15, 14, 13, 12, 10, 8, 6, 1,
-4, -5, -2, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1,
0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, 0, 0, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, };
