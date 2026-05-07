.class public final synthetic Lcom/android/wm/shell/transition/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/g;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p4, p0, Lcom/android/wm/shell/transition/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/transition/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/g;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/transition/g;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/transition/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/g;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p4, p0, Lcom/android/wm/shell/transition/g;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/transition/g;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_2a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/transition/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

    iget-object v1, p0, Lcom/android/wm/shell/transition/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/g;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/g;->e:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->a(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_18  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/transition/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/transition/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/transition/g;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/g;->e:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/transition/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/g;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/transition/g;->e:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/g;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->c(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
