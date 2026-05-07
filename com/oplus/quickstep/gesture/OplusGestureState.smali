.class public final Lcom/oplus/quickstep/gesture/OplusGestureState;
.super Lcom/android/quickstep/GestureState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusGestureState"


# instance fields
.field private continueLastGesture:Z

.field private endProgress:F

.field private endScale:F

.field private endTranslationY:F

.field private finishRecentsAnim:Z

.field private forceToRecents:Z

.field private hasControllerReceived:Z

.field private isFallbackRecents:Z

.field private isGestureValid:Z

.field private isInExitFocusMode:Z

.field private isInSplitScreenMode:Z

.field private isPreviousGestureToNewTask:Z

.field private isStartingNewTask:Z

.field private isSupportFloatingWindow:Z

.field private lastGestureConfig:Landroid/content/res/Configuration;

.field private lastStartNewTaskTime:J

.field private mSystemWindowClosed:Z

.field private startingNewTaskCanceled:Z

.field private useSpecialInputConsumer:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusGestureState;->Companion:Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/GestureState;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;IZ)V
    .registers 5

    const-string v0, "componentObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents:Z

    return-void
.end method


# virtual methods
.method public final getContinueLastGesture()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->continueLastGesture:Z

    return p0
.end method

.method public final getEndProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endProgress:F

    return p0
.end method

.method public final getEndScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endScale:F

    return p0
.end method

.method public final getEndTranslationY()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endTranslationY:F

    return p0
.end method

.method public final getForceToRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->forceToRecents:Z

    return p0
.end method

.method public final getHasControllerReceived()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->hasControllerReceived:Z

    return p0
.end method

.method public final getLastGestureConfig()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastGestureConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public final getMSystemWindowClosed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mSystemWindowClosed:Z

    return p0
.end method

.method public final getUseSpecialInputConsumer()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->useSpecialInputConsumer:Z

    return p0
.end method

.method public final isFallbackRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents:Z

    return p0
.end method

.method public final isFinishRecentsAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->finishRecentsAnim:Z

    return p0
.end method

.method public final isGestureValid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid:Z

    return p0
.end method

.method public final isInExitFocusMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode:Z

    return p0
.end method

.method public final isInSplitScreenMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode:Z

    return p0
.end method

.method public final isPreviousGestureToNewTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewTask:Z

    return p0
.end method

.method public final isStartNewTaskCanceled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->startingNewTaskCanceled:Z

    return p0
.end method

.method public final isStartingNewTask()Z
    .registers 5

    const-string v0, "isStartingNewTask: \nelapsedRealtime: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nlastStartNewTaskTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastStartNewTaskTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGestureState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isStartingNewTask:Z

    if-eqz v0, :cond_33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastStartNewTaskTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0
.end method

.method public final isSupportFloatingWindow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow:Z

    return p0
.end method

.method public final onFinishRecentsAnimation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->finishRecentsAnim:Z

    return-void
.end method

.method public final onRecentsAnimationFinished()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->finishRecentsAnim:Z

    return-void
.end method

.method public final onStartNewTaskCanceled()V
    .registers 3

    const-string v0, "OplusGestureState"

    const-string v1, "onStartNewTaskCanceled"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->startingNewTaskCanceled:Z

    return-void
.end method

.method public final onStartNewTaskFinished()V
    .registers 3

    const-string v0, "OplusGestureState"

    const-string v1, "onStartNewTaskFinished"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isStartingNewTask:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastStartNewTaskTime:J

    return-void
.end method

.method public final onStartingNewTask()V
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastStartNewTaskTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "onStartingNewTask: \nlastStartNewTaskTime: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGestureState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->startingNewTaskCanceled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isStartingNewTask:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastStartNewTaskTime:J

    return-void
.end method

.method public final setContinueLastGesture(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->continueLastGesture:Z

    return-void
.end method

.method public final setEndProgress(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endProgress:F

    return-void
.end method

.method public final setEndScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endScale:F

    return-void
.end method

.method public final setEndTranslationY(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endTranslationY:F

    return-void
.end method

.method public final setFallbackRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents:Z

    return-void
.end method

.method public final setForceToRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->forceToRecents:Z

    return-void
.end method

.method public final setGestureValid(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid:Z

    return-void
.end method

.method public final setHasControllerReceived(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->hasControllerReceived:Z

    return-void
.end method

.method public final setInExitFocusMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode:Z

    return-void
.end method

.method public final setInSplitScreenMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode:Z

    return-void
.end method

.method public final setLastGestureConfig(Landroid/content/res/Configuration;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastGestureConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public final setMSystemWindowClosed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mSystemWindowClosed:Z

    return-void
.end method

.method public final setPreviousGestureToNewTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewTask:Z

    return-void
.end method

.method public final setSupportFloatingWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow:Z

    return-void
.end method

.method public final setUseSpecialInputConsumer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->useSpecialInputConsumer:Z

    return-void
.end method
