.class public final synthetic Lcom/android/wm/shell/transition/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/transition/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/transition/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/p;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/transition/p;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/transition/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/transition/p;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/p;->d:Ljava/lang/Object;

    check-cast p0, Landroid/window/TransitionRequestInfo;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->b(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/transition/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    iget-object v1, p0, Lcom/android/wm/shell/transition/p;->c:Ljava/lang/Object;

    check-cast v1, Landroid/window/TransitionFilter;

    iget-object p0, p0, Lcom/android/wm/shell/transition/p;->d:Ljava/lang/Object;

    check-cast p0, Landroid/window/RemoteTransition;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->a(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/wm/shell/transition/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/transition/p;->c:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/transition/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->d(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
