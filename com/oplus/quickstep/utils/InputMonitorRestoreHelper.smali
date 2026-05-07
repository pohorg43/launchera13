.class public final Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;

.field private static final INVALIDATE_TIME:J = 0x1388L

.field private static final REINIT_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "InputMonitorRestoreHelper"

.field private static volatile currentEventTime:J

.field private static volatile lastEventTime:J

.field private static reInitInputMonitor:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->INSTANCE:Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->maybeInputMonitorInvalidate$lambda-0()V

    return-void
.end method

.method public static final init(Ljava/lang/Runnable;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->currentEventTime:J

    sput-wide v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->lastEventTime:J

    sput-object p0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->reInitInputMonitor:Ljava/lang/Runnable;

    return-void
.end method

.method public static final maybeInputMonitorInvalidate()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "InputMonitorRestoreHelper"

    const-string v1, "maybeInputMonitorInvalidate: we will check if input monitor unresponsive"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/c0;->f:Lcom/android/common/util/c0;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final maybeInputMonitorInvalidate$lambda-0()V
    .registers 6

    const-string v0, "maybeInputMonitorInvalidate: currentEventTime = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->currentEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastEventTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->lastEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMonitorRestoreHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v2, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->currentEventTime:J

    sget-wide v4, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->lastEventTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gez v0, :cond_2a

    return-void

    :cond_2a
    const-string v0, "input monitor maybe unresponsive, so we should try to reinit input monitor"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->reInitInputMonitor:Ljava/lang/Runnable;

    if-nez v0, :cond_34

    goto :goto_37

    :cond_34
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_37
    return-void
.end method

.method public static final refreshCurrentEventTime()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->currentEventTime:J

    return-void
.end method

.method public static final refreshLastEventTime()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->lastEventTime:J

    return-void
.end method

.method public static final reset()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->currentEventTime:J

    sput-wide v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->lastEventTime:J

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->reInitInputMonitor:Ljava/lang/Runnable;

    return-void
.end method
