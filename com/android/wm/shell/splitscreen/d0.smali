.class public final synthetic Lcom/android/wm/shell/splitscreen/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)V
    .registers 5

    iput p4, p0, Lcom/android/wm/shell/splitscreen/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/d0;->b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/d0;->c:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/d0;->d:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/d0;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/d0;->b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/d0;->c:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/d0;->d:Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->d(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/d0;->b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/d0;->c:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/d0;->d:Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
