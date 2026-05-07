.class Lcom/android/launcher/Launcher$1;
.super Lcom/oplus/app/IOplusSplitScreenObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "splitScreenMinimizedChange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "isMinimized"

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    if-eqz p2, :cond_17

    iget-object v1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/launcher/Launcher;->access$002(Lcom/android/launcher/Launcher;Z)Z

    :cond_17
    const-string/jumbo v1, "splitScreenModeChange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "OLauncher"

    if-eqz v1, :cond_58

    if-eqz p2, :cond_58

    iget-object v1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    const-string v5, "isInSplitScreenMode"

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/android/launcher/Launcher;->access$102(Lcom/android/launcher/Launcher;Z)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string/jumbo v1, "onSplitScreenStateChanged: mIsInSplitScreenMode = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v5}, Lcom/android/launcher/Launcher;->access$100(Lcom/android/launcher/Launcher;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Common"

    invoke-static {v5, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/launcher/Launcher$1$1;

    invoke-direct {v5, p0}, Lcom/android/launcher/Launcher$1$1;-><init>(Lcom/android/launcher/Launcher$1;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo p2, "onSplitScreenStateChanged,minimize: "

    const-string v0, ",mIsInSplitScreenMode:"

    invoke-static {p2, p1, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->access$100(Lcom/android/launcher/Launcher;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_82

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateExpandItemsOnSplitScreenMinimizeModeExit()V

    :cond_82
    return-void
.end method
