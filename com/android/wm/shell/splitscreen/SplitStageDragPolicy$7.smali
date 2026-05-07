.class Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startDimAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "##### dimAnimation cancel"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "##### dimAnimation over"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1900(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "##### dimAnimation start"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
