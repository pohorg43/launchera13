.class public final Lcom/oplus/quickstep/utils/RecentsBooster;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/RecentsBooster$Companion;
    }
.end annotation


# static fields
.field private static final CPU_SCENE_NAME:Ljava/lang/String; = "InRecentsView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/oplus/quickstep/utils/RecentsBooster$Companion;

.field private static final GPU_BOOST_MAX_TIME:I = 0x157c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GPU_BOOST_PAGE_SCROLL_ACTION:Ljava/lang/String; = "OSENSE_ACTION_SWIPE_RECENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GPU_BOOST_TIMEOUT:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NOTIFY_SF_ANIMATING_TIMEOUT:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecentsBooster"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private isGestureRunning:Z

.field private mGpuResourceFd:J

.field private final mGpuTimeoutTask:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCpuBoostOpened:Z

.field private mIsGpuOpened:Z

.field private mIsSfOpened:Z

.field private mSfTimeoutTask:Ljava/lang/Runnable;

.field private rc:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private sfDuration:J

.field private sfOpenTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/RecentsBooster$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/RecentsBooster$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/RecentsBooster;->Companion:Lcom/oplus/quickstep/utils/RecentsBooster$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "rc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->rc:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oplus/quickstep/utils/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oplus/quickstep/utils/a;-><init>(Lcom/oplus/quickstep/utils/RecentsBooster;I)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuTimeoutTask:Ljava/lang/Runnable;

    new-instance p1, Lcom/oplus/quickstep/utils/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/oplus/quickstep/utils/a;-><init>(Lcom/oplus/quickstep/utils/RecentsBooster;I)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mSfTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuResourceFd:J

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/utils/RecentsBooster;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuTimeoutTask$lambda-0(Lcom/oplus/quickstep/utils/RecentsBooster;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/utils/RecentsBooster;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->mSfTimeoutTask$lambda-1(Lcom/oplus/quickstep/utils/RecentsBooster;)V

    return-void
.end method

.method private static final mGpuTimeoutTask$lambda-0(Lcom/oplus/quickstep/utils/RecentsBooster;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "RecentsBooster"

    const-string v2, "gpu boost timeout, so close"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    return-void
.end method

.method private static final mSfTimeoutTask$lambda-1(Lcom/oplus/quickstep/utils/RecentsBooster;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "RecentsBooster"

    const-string v2, "sf boost timeout, so close"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    return-void
.end method

.method public static synthetic openSf$default(Lcom/oplus/quickstep/utils/RecentsBooster;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x1f4

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    return-void
.end method


# virtual methods
.method public final closeAll()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    return-void
.end method

.method public final closeCpu()V
    .registers 5

    const-string v0, "closeCpu: mIsCpuBoostOpened = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsCpuBoostOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGestureRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->isGestureRunning:Z

    const-string v2, "RecentsBooster"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsCpuBoostOpened:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->isGestureRunning:Z

    if-eqz v0, :cond_20

    goto :goto_38

    :cond_20
    const-wide/16 v0, 0x8

    const-string v2, "RecentsBooster#closeCpu"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsCpuBoostOpened:Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const-string v3, "InRecentsView"

    invoke-virtual {p0, v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_38
    :goto_38
    return-void
.end method

.method public final closeGpu()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->rc:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isFreeScroll()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsGpuOpened:Z

    if-nez v0, :cond_d

    goto :goto_22

    :cond_d
    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsGpuOpened:Z

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuResourceFd:J

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final closeSf()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsSfOpened:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "QuickStep"

    const-string v1, "RecentsBooster"

    const-string v2, "closeSf: reset data"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfOpenTime:J

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsSfOpened:Z

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mSfTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getRc()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->rc:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public final openAll()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openCpu()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openGpu()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf$default(Lcom/oplus/quickstep/utils/RecentsBooster;IILjava/lang/Object;)V

    return-void
.end method

.method public final openCpu()V
    .registers 5

    const-string v0, "openCpu: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsCpuBoostOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGestureRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->isGestureRunning:Z

    const-string v2, "RecentsBooster"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsCpuBoostOpened:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    const-wide/16 v0, 0x8

    const-string v2, "RecentsBooster#openCpu"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsCpuBoostOpened:Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const-string v3, "InRecentsView"

    invoke-virtual {p0, v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final openGpu()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "RecentsBooster"

    const-string v2, "open gpu boost"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsGpuOpened:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->rc:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isFreeScroll()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsGpuOpened:Z

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    const/16 v1, 0x157c

    const-string v2, "OSENSE_ACTION_SWIPE_RECENT"

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openAction(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuResourceFd:J

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mGpuTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_38
    return-void
.end method

.method public final openSf(I)V
    .registers 13

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "RecentsBooster"

    const-string v4, "QuickStep"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3e

    iget-wide v7, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfOpenTime:J

    cmp-long v0, v7, v2

    if-eqz v0, :cond_3e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfDuration:J

    iget-wide v9, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfOpenTime:J

    sub-long/2addr v2, v9

    sub-long/2addr v7, v2

    int-to-long v2, p1

    cmp-long v0, v7, v2

    if-gez v0, :cond_24

    move v6, v5

    :cond_24
    const-string v0, "openSf: mIsSfOpened = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsSfOpened:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceNotify = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsSfOpened:Z

    if-eqz v0, :cond_45

    if-nez v6, :cond_45

    return-void

    :cond_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfOpenTime:J

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->sfDuration:J

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mSfTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mSfTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->mIsSfOpened:Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "openSf: notify sf animating and the duration is "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setIsGestureRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->isGestureRunning:Z

    return-void
.end method

.method public final setRc(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsBooster;->rc:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method
