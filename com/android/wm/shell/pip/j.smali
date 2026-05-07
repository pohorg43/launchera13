.class public final synthetic Lcom/android/wm/shell/pip/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic b:Landroid/app/TaskInfo;

.field public final synthetic c:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/j;->a:Lcom/android/wm/shell/pip/PipTransition;

    iput-object p2, p0, Lcom/android/wm/shell/pip/j;->b:Landroid/app/TaskInfo;

    iput-object p3, p0, Lcom/android/wm/shell/pip/j;->c:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/j;->a:Lcom/android/wm/shell/pip/PipTransition;

    iget-object v1, p0, Lcom/android/wm/shell/pip/j;->b:Landroid/app/TaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/pip/j;->c:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/pip/PipTransition;->a(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method
