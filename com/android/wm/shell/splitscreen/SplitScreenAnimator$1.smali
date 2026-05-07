.class Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->startSwapAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

.field public final synthetic val$l:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$l:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->val$l:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->access$002(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
