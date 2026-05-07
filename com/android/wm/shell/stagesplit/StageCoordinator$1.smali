.class Lcom/android/wm/shell/stagesplit/StageCoordinator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/stagesplit/StageCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/stagesplit/StageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->this$0:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/stagesplit/StageCoordinator$1;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->lambda$onLeashReady$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onLeashReady$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->this$0:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->access$300(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->this$0:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->access$100(Lcom/android/wm/shell/stagesplit/StageCoordinator;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->this$0:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->access$000(Lcom/android/wm/shell/stagesplit/StageCoordinator;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public onLeashReady(Landroid/view/SurfaceControl;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->this$0:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->access$200(Lcom/android/wm/shell/stagesplit/StageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/stagesplit/w;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/stagesplit/w;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator$1;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method
