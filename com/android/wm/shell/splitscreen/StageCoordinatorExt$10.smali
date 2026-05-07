.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->registerNavigationModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDisplaySupport()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSplitScreenMode()Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NAVIGATION_MODE changed force update layout"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->forceUpdateLayout()V

    :cond_33
    return-void
.end method
