.class public final synthetic Lcom/android/wm/shell/splitscreen/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroid/window/WindowContainerTransaction;

.field public final synthetic e:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZZLandroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/t0;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/t0;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/t0;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/t0;->d:Landroid/window/WindowContainerTransaction;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/t0;->e:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/t0;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/t0;->b:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/t0;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/t0;->d:Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/t0;->e:Landroid/view/RemoteAnimationAdapter;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->g(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZZLandroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
