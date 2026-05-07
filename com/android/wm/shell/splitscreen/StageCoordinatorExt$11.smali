.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;
.super Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OplusZoomWindowObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideZoomWindowWhenSplitPairStart(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$adapter:Landroid/view/RemoteAnimationAdapter;

.field public final synthetic val$mainOptions:Landroid/os/Bundle;

.field public final synthetic val$mainTaskId:I

.field public final synthetic val$sideOptions:Landroid/os/Bundle;

.field public final synthetic val$sidePosition:I

.field public final synthetic val$sideTaskId:I

.field public final synthetic val$splitRatio:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 9

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$mainTaskId:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$mainOptions:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$sideTaskId:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$sideOptions:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$sidePosition:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$splitRatio:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OplusZoomWindowObserver;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->lambda$onZoomWindowHide$0(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method

.method private synthetic lambda$onZoomWindowHide$0(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 16

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method


# virtual methods
.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomWindowHide oplusZoomWindowInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$mainTaskId:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$mainOptions:Landroid/os/Bundle;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$sideTaskId:I

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$sideOptions:Landroid/os/Bundle;

    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$sidePosition:I

    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$splitRatio:F

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    new-instance v9, Lcom/android/wm/shell/splitscreen/g1;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/g1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    const-wide/16 v0, 0x64

    invoke-interface {p1, v9, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
