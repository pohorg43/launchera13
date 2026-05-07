.class public final synthetic Lcom/android/wm/shell/splitscreen/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic b:Landroid/window/WindowContainerTransaction;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/view/RemoteAnimationAdapter;

.field public final synthetic e:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;ZLandroid/view/RemoteAnimationAdapter;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/v0;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/v0;->b:Landroid/window/WindowContainerTransaction;

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/v0;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/v0;->d:Landroid/view/RemoteAnimationAdapter;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/v0;->e:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/v0;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/v0;->b:Landroid/window/WindowContainerTransaction;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/v0;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/v0;->d:Landroid/view/RemoteAnimationAdapter;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/v0;->e:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->k(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;ZLandroid/view/RemoteAnimationAdapter;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
