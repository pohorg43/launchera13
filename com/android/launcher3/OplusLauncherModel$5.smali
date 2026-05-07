.class Lcom/android/launcher3/OplusLauncherModel$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusLauncherModel;->checkMultiAppUnlock(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic val$userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/os/UserManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherModel$5;->val$userManager:Landroid/os/UserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherModel;->access$100(Lcom/android/launcher3/OplusLauncherModel;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/OplusLauncherModel;->access$014(Lcom/android/launcher3/OplusLauncherModel;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "run: mQueryTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/OplusLauncherModel;->access$000(Lcom/android/launcher3/OplusLauncherModel;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mQueryDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/OplusLauncherModel;->access$100(Lcom/android/launcher3/OplusLauncherModel;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherModel;->access$000(Lcom/android/launcher3/OplusLauncherModel;)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-gtz v0, :cond_7b

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherModel;->access$100(Lcom/android/launcher3/OplusLauncherModel;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/OplusLauncherModel;->access$102(Lcom/android/launcher3/OplusLauncherModel;J)J

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherModel;->access$100(Lcom/android/launcher3/OplusLauncherModel;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel$5;->val$userManager:Landroid/os/UserManager;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string/jumbo v0, "run: MULTI_USER_ID 999 is unlocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel$5;->this$0:Lcom/android/launcher3/OplusLauncherModel;

    new-instance v1, Lcom/android/launcher3/model/OplusUserUnlockedTask;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/android/launcher3/model/OplusUserUnlockedTask;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    :cond_7b
    return-void
.end method
