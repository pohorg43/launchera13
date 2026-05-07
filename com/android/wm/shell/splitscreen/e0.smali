.class public final synthetic Lcom/android/wm/shell/splitscreen/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Landroid/view/SurfaceControl;

.field public final synthetic f:Landroid/view/SurfaceControl;

.field public final synthetic g:Landroid/graphics/Rect;

.field public final synthetic h:Landroid/graphics/Rect;

.field public final synthetic i:Landroid/view/SurfaceControl;

.field public final synthetic j:Landroid/view/SurfaceControl;

.field public final synthetic k:Landroid/view/SurfaceControl;

.field public final synthetic l:Landroid/graphics/Rect;

.field public final synthetic m:Landroid/graphics/Rect;

.field public final synthetic n:Landroid/view/SurfaceControl;

.field public final synthetic o:Landroid/graphics/Rect;

.field public final synthetic p:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->b:Landroid/view/SurfaceControl;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->c:Landroid/graphics/Rect;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->d:Landroid/graphics/Rect;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->e:Landroid/view/SurfaceControl;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->f:Landroid/view/SurfaceControl;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->g:Landroid/graphics/Rect;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->h:Landroid/graphics/Rect;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->i:Landroid/view/SurfaceControl;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->j:Landroid/view/SurfaceControl;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->k:Landroid/view/SurfaceControl;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->l:Landroid/graphics/Rect;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->m:Landroid/graphics/Rect;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->n:Landroid/view/SurfaceControl;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->o:Landroid/graphics/Rect;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->p:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/e0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/e0;->b:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/e0;->c:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/e0;->d:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/e0;->e:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/e0;->f:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/e0;->g:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/e0;->h:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/e0;->i:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/e0;->j:Landroid/view/SurfaceControl;

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/e0;->k:Landroid/view/SurfaceControl;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/e0;->l:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/e0;->m:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/e0;->n:Landroid/view/SurfaceControl;

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/e0;->o:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/e0;->p:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->c(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
