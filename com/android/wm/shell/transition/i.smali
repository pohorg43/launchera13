.class public final synthetic Lcom/android/wm/shell/transition/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic d:Landroid/os/IBinder;

.field public final synthetic e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/i;->a:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    iput-object p2, p0, Lcom/android/wm/shell/transition/i;->b:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/i;->c:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/transition/i;->d:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/wm/shell/transition/i;->e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p6, p0, Lcom/android/wm/shell/transition/i;->f:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/i;->a:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    iget-object v1, p0, Lcom/android/wm/shell/transition/i;->b:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/transition/i;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/transition/i;->d:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/transition/i;->e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v5, p0, Lcom/android/wm/shell/transition/i;->f:Landroid/window/WindowContainerTransaction;

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->a(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
