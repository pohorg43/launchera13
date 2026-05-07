.class public final synthetic Lcom/android/wm/shell/stagesplit/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/stagesplit/StageCoordinator;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/x;->a:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iput-boolean p2, p0, Lcom/android/wm/shell/stagesplit/x;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/stagesplit/x;->c:Z

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/x;->a:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iget-boolean v1, p0, Lcom/android/wm/shell/stagesplit/x;->b:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/x;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->d(Lcom/android/wm/shell/stagesplit/StageCoordinator;ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
