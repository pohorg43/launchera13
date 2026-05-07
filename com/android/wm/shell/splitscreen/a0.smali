.class public final synthetic Lcom/android/wm/shell/splitscreen/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

.field public final synthetic b:Landroid/view/animation/Animation;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Landroid/view/SurfaceControl;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/a0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/a0;->b:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/a0;->c:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/a0;->d:Landroid/view/SurfaceControl;

    iput-boolean p5, p0, Lcom/android/wm/shell/splitscreen/a0;->e:Z

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/a0;->f:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/a0;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/a0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/a0;->b:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/a0;->c:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/a0;->d:Landroid/view/SurfaceControl;

    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/a0;->e:Z

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/a0;->f:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/a0;->g:Landroid/graphics/Rect;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->c(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
