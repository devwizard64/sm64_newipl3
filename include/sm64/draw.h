#ifndef __SM64_DRAW_H__
#define __SM64_DRAW_H__

extern S_SCENE *s_scene;
extern S_LAYER *s_layer;
extern S_PERSP *s_persp;
extern S_CAMERA *s_camera;
extern S_OBJECT *s_object;
extern S_HAND *s_hand;
extern u16 draw_timer;

extern void draw_scene(S_SCENE *shp, Vp *viewport, Vp *scissor, u32 fill);

#endif /* __SM64_DRAW_H__ */
