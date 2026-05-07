.class Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->springBackMotionTask(Landroid/graphics/Rect;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->access$000(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;)V

    return-void
.end method
