.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private gpuBoostFd:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    return-void
.end method


# virtual methods
.method public final getGpuBoostFd()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    return-wide v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_16

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    :cond_16
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->access$setTaskDismissAnimRunning$p(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    const-string v1, "OSENSE_ACTION_CLEAN_RECENT"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->access$setTaskDismissAnimRunning$p(Z)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

.method public final setGpuBoostFd(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    return-void
.end method
