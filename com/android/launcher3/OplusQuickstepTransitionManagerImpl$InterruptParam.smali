.class public Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterruptParam"
.end annotation


# static fields
.field private static final PROGRESS_END:F = 1.0f

.field private static final PROGRESS_START:F = 0.0f

.field private static final RESET_PROGRESS_WHEN_ANIMATION_CANCEL_DELAY:J = 0x32L


# instance fields
.field private final mCachedViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseLauncherAnimProgress:F

.field private mCloseWindowAnimProgress:F

.field private mDuration:J

.field private mIconLaunchAnimation:Landroid/animation/AnimatorSet;

.field private final mInterruptRectF:Landroid/graphics/RectF;

.field private mIsSameItem:Z

.field private mNeedAnimateToCurrent:Z

.field private mOpenAnimProgress:F

.field private mOpenLauncerAnimProgress:F

.field private mOpenWindowAnimProgress:F

.field private final mWrfLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mInterruptRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCachedViewMap:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseWindowAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenWindowAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseLauncherAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenLauncerAnimProgress:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIsSameItem:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mNeedAnimateToCurrent:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIconLaunchAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenAnimProgress:F

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mWrfLauncher:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->lambda$resetCacheProgressWhenAnimationCancel$0()V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIconLaunchAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseWindowAnimProgress:F

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->clearCacheView()V

    return-void
.end method

.method private checkSameItem(Landroid/view/View;I)Z
    .registers 6

    const-string v0, "OplusQuickstepTransitionManagerImpl"

    const/4 v1, -0x1

    if-eq p2, v1, :cond_35

    iget-object v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCachedViewMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCachedViewMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIsSameItem:Z

    return p1

    :cond_29
    const-string v1, "checkSameItem not same view"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_2f
    const-string v1, "checkSameItem not same taskId, taskId:"

    invoke-static {v1, p2, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3a

    :cond_35
    const-string v1, "checkSameItem not same taskId invalid"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->clearCacheView()V

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCachedViewMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIsSameItem:Z

    return p1
.end method

.method private clean()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseWindowAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenWindowAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseLauncherAnimProgress:F

    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenLauncerAnimProgress:F

    return-void
.end method

.method private clearCacheView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCachedViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private synthetic lambda$resetCacheProgressWhenAnimationCancel$0()V
    .registers 3

    const-string v0, "OplusQuickstepTransitionManagerImpl"

    const-string/jumbo v1, "resetCacheProgressWhenAnimationCancel, success"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->clean()V

    return-void
.end method

.method private parseTaskId([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)I
    .registers 6

    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_10

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v2, p2, :cond_d

    iget p0, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    return p0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mDuration:J

    return-wide v0
.end method

.method public getIconLaunchAnimation()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIconLaunchAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getInterruptRectF()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mInterruptRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getLauncherAnimProgress(Z)F
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIsSameItem:Z

    if-eqz v0, :cond_f

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_b

    iget v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseLauncherAnimProgress:F

    goto :goto_d

    :cond_b
    iget v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenLauncerAnimProgress:F

    :goto_d
    sub-float/2addr v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "getLauncherAnimProgress, isOpening:"

    const-string v2, ", isSameItem:"

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIsSameItem:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", progress:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusQuickstepTransitionManagerImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getOpenAnimProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenAnimProgress:F

    return p0
.end method

.method public getWindowCloseStartFactor([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;)F
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->parseTaskId([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->checkSameItem(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/high16 p1, 0x3f800000  # 1.0f

    iget p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenWindowAnimProgress:F

    sub-float/2addr p1, p0

    return p1

    :cond_11
    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->clean()V

    const/4 p0, 0x0

    return p0
.end method

.method public getWindowOpenStartFactor([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;)F
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->parseTaskId([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->checkSameItem(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/high16 p1, 0x3f800000  # 1.0f

    iget p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseWindowAnimProgress:F

    sub-float/2addr p1, p0

    return p1

    :cond_11
    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->clean()V

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedAnimateToCurrent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mNeedAnimateToCurrent:Z

    return p0
.end method

.method public resetCacheProgressWhenAnimationCancel()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mWrfLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mWrfLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/h0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/h0;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    :cond_1f
    const-string p0, "OplusQuickstepTransitionManagerImpl"

    const-string/jumbo v0, "resetCacheProgressWhenAnimationCancel null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method public setDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mDuration:J

    return-void
.end method

.method public setIconLaunchAnimation(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mIconLaunchAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setInterruptRectF(Landroid/graphics/RectF;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mInterruptRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setNeedAnimateToCurrent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mNeedAnimateToCurrent:Z

    return-void
.end method

.method public updateCloseWindowAnimProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseWindowAnimProgress:F

    return-void
.end method

.method public updateLauncherAnimProgress(ZF)V
    .registers 3

    if-eqz p1, :cond_5

    iput p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenLauncerAnimProgress:F

    goto :goto_7

    :cond_5
    iput p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mCloseLauncherAnimProgress:F

    :goto_7
    return-void
.end method

.method public updateOpenAnimProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenAnimProgress:F

    return-void
.end method

.method public updateOpenWindowAnimProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mOpenWindowAnimProgress:F

    return-void
.end method
