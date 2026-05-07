.class public Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;
    }
.end annotation


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAnimatorListenerWrapper:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mPendingAnimations:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mPendingAnimations:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimatorListenerWrapper:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_23

    goto :goto_24

    :cond_23
    move-object p2, p1

    :goto_24
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->lambda$start$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->onAnimationEnd()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->lambda$start$2()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->lambda$cancel$0()V

    return-void
.end method

.method private cancel()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/animation/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/animation/a;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cancel$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private synthetic lambda$start$1(Landroid/animation/ValueAnimator;)V
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mPendingAnimations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$start$2()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mPendingAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method


# virtual methods
.method public addAnimation(Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mPendingAnimations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public isStarted()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public start()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mPendingAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;->getDurationHint()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1d

    :cond_32
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/quickstep/views/a;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/a;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimatorListenerWrapper:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_54

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/animation/a;

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/splitscreen/animation/a;-><init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_54
    move-exception p0

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method
