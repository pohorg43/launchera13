.class Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorListenerWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->lambda$onAnimationStart$2(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->lambda$onAnimationEnd$1(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->lambda$onAnimationCancel$0(Landroid/animation/Animator;)V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$0(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$200(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$300(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_29

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_18

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private synthetic lambda$onAnimationEnd$1(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$400(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$200(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$300(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_2e

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1d

    :cond_2d
    return-void

    :catchall_2e
    move-exception p0

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method private synthetic lambda$onAnimationStart$2(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$200(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$300(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_29

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_18

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$100(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/animation/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/splitscreen/animation/b;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/wm/shell/WMShellBooster;->setUx(ZI)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$100(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/animation/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/splitscreen/animation/b;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/wm/shell/WMShellBooster;->setUx(ZI)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->this$0:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->access$100(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/animation/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/splitscreen/animation/b;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
