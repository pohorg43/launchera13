.class Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/graphics/Point;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->access$000(Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;)V

    return-void
.end method
