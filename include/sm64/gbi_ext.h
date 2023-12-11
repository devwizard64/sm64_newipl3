#ifndef __SM64_GBI_EXT_H__
#define __SM64_GBI_EXT_H__

#define G_CC_SHADE_ENV          0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT
#define G_CC_MODULATERGB_ENVA   TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT
#define G_CC_MODULATERGBA_ENVA  TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0
#define G_CC_MODULATERGBA_ENV   TEXEL0, 0, ENVIRONMENT, 0, TEXEL0, 0, ENVIRONMENT, 0
#define G_CC_DECALRGB_ENV       0, 0, 0, TEXEL0, 0, 0, 0, ENVIRONMENT
#define G_CC_DECALRGBA_ENV      0, 0, 0, TEXEL0, TEXEL0, 0, ENVIRONMENT, 0
#define G_CC_BLENDRGB_ENVA      TEXEL0, SHADE, TEXEL0_ALPHA, SHADE, 0, 0, 0, ENVIRONMENT
#define G_CC_MODULATESE         SHADE, 0, ENVIRONMENT, 0, SHADE, 0, ENVIRONMENT, 0

#define __gdSPDefMatrixI(x, y) (((u32)(int)(0x10000*(x)) & ~0xFFFF) | (u32)(int)(0x10000*(y)) >> 16)
#define __gdSPDefMatrixF(x, y) ((u32)(int)(0x10000*(x)) << 16 | ((u32)(int)(0x10000*(y)) & 0xFFFF))
#define gdSPDefMatrix(m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33) \
{{ \
	{__gdSPDefMatrixI(m00, m01), __gdSPDefMatrixI(m02, m03), __gdSPDefMatrixI(m10, m11), __gdSPDefMatrixI(m12, m13)}, \
	{__gdSPDefMatrixI(m20, m21), __gdSPDefMatrixI(m22, m23), __gdSPDefMatrixI(m30, m31), __gdSPDefMatrixI(m32, m33)}, \
	{__gdSPDefMatrixF(m00, m01), __gdSPDefMatrixF(m02, m03), __gdSPDefMatrixF(m10, m11), __gdSPDefMatrixF(m12, m13)}, \
	{__gdSPDefMatrixF(m20, m21), __gdSPDefMatrixF(m22, m23), __gdSPDefMatrixF(m30, m31), __gdSPDefMatrixF(m32, m33)}, \
}}

#define gdSPDefLight(a, r, g, b) \
	gdSPDefLights1((a)*(r), (a)*(g), (a)*(b), r, g, b, 40, 40, 40)

#ifndef gSP2Triangles
#define gSP2Triangles(pkt, v00, v01, v02, flag0, v10, v11, v12, flag1) \
{ \
	gSP1Triangle(pkt, v00, v01, v02, flag0); \
	gSP1Triangle(pkt, v10, v11, v12, flag1); \
}
#endif

#define gSPSetLights1N(pkt, name) \
{ \
	gSPLight(pkt,&name.l[0],1); \
	gSPLight(pkt,&name.a,2); \
}

#define gDPLoadTextureBlockN(pkt, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt) \
{ \
	gDPSetTile(pkt, fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,  0 , cmt, maskt, shiftt, cms, masks, shifts); \
	gDPLoadSync(pkt); \
	gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0, (((width)*(height) + siz##_INCR) >> siz##_SHIFT)-1, CALC_DXT(width, siz##_BYTES)); \
	gDPSetTile(pkt, fmt, siz, ((((width) * siz##_LINE_BYTES)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts); \
	gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC); \
}

#define gDPLoadTextureBlock_4bN(pkt, fmt, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt) \
{ \
	gDPSetTile(pkt, fmt, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0 , cmt, maskt, shiftt, cms, masks, shifts); \
	gDPLoadSync(pkt); \
	gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0, (((width)*(height)+3)>>2)-1, CALC_DXT_4b(width)); \
	gDPSetTile(pkt, fmt, G_IM_SIZ_4b, ((((width)>>1)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts); \
	gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC); \
}

#define gDPSetLoadTile(pkt, fmt, siz) \
	gDPSetTile(pkt, fmt, siz, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0)

#define gDPLoadImageBlockT(pkt, timg, fmt, siz, width, height) \
{ \
	gDPSetTextureImage(pkt, fmt, siz, 1, timg); \
	gDPTileSync(pkt); \
	gDPSetLoadTile(pkt, fmt, siz); \
	gDPLoadSync(pkt); \
	gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0, (width)*(height)-1, CALC_DXT(width, siz##_BYTES)); \
}

#define gDPLoadImageBlock(pkt, timg, fmt, siz, width, height) \
{ \
	gDPSetTextureImage(pkt, fmt, siz, 1, timg); \
	gDPLoadSync(pkt); \
	gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0, (width)*(height)-1, CALC_DXT(width, siz##_BYTES)); \
}

#define gDPSetImageBlock(pkt, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt) \
{ \
	gDPTileSync(pkt); \
	gDPSetTile(pkt, fmt, siz, ((((width) * siz##_LINE_BYTES)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts); \
	gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC); \
}

#ifndef gsSP2Triangles
#define gsSP2Triangles(v00, v01, v02, flag0, v10, v11, v12, flag1) \
	gsSP1Triangle(v00, v01, v02, flag0), \
	gsSP1Triangle(v10, v11, v12, flag1)
#endif

#define gsSPSetLights1N(name) \
	gsSPLight(&name.l[0],1), \
	gsSPLight(&name.a,2)

#define gsDPLoadTextureBlockN(fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt) \
	gsDPSetTile(fmt, siz##_LOAD_BLOCK, 0, 0, G_TX_LOADTILE,  0 , cmt, maskt, shiftt, cms, masks, shifts), \
	gsDPLoadSync(), \
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((width)*(height) + siz##_INCR) >> siz##_SHIFT)-1, CALC_DXT(width, siz##_BYTES)), \
	gsDPSetTile(fmt, siz, ((((width) * siz##_LINE_BYTES)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts), \
	gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC)

#define gsDPLoadTextureBlock_4bN(fmt, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt) \
	gsDPSetTile(fmt, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0 , cmt, maskt, shiftt, cms, masks, shifts), \
	gsDPLoadSync(), \
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((width)*(height)+3)>>2)-1, CALC_DXT_4b(width)), \
	gsDPSetTile(fmt, G_IM_SIZ_4b, ((((width)>>1)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts), \
	gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC)

#define gsDPSetLoadTile(fmt, siz) \
	gsDPSetTile(fmt, siz, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0)

#define gsDPLoadImageBlockT(timg, fmt, siz, width, height) \
	gsDPSetTextureImage(fmt, siz, 1, timg), \
	gsDPTileSync(), \
	gsDPSetLoadTile(fmt, siz), \
	gsDPLoadSync(), \
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (width)*(height)-1, CALC_DXT(width, siz##_BYTES))

#define gsDPLoadImageBlock(timg, fmt, siz, width, height) \
	gsDPSetTextureImage(fmt, siz, 1, timg), \
	gsDPLoadSync(), \
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (width)*(height)-1, CALC_DXT(width, siz##_BYTES))

#define gsDPSetImageBlock(fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt) \
	gsDPTileSync(), \
	gsDPSetTile(fmt, siz, ((((width) * siz##_LINE_BYTES)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts), \
	gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC)

#endif /* __SM64_GBI_EXT_H__ */
