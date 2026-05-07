.class public final Lcom/android/launcher3/card/RenderFailRetry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/RenderFailRetry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/RenderFailRetry$Companion;

.field private static final RETRY_INTERVAL_BASE:D = 2.0

.field private static final TAG:Ljava/lang/String; = "RenderFailRetry"


# instance fields
.field private final cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

.field private final errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

.field private final hostView:Lcom/android/launcher3/card/CommonCardView;

.field private lastResetRetryCountTime:J

.field private final mRenderFailRunnable:Ljava/lang/Runnable;

.field private renderFailRetryCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/RenderFailRetry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/RenderFailRetry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/RenderFailRetry;->Companion:Lcom/android/launcher3/card/RenderFailRetry$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/CommonCardView;)V
    .registers 4

    const-string v0, "cardModelWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    iput-object p2, p0, Lcom/android/launcher3/card/RenderFailRetry;->hostView:Lcom/android/launcher3/card/CommonCardView;

    new-instance p1, Lcom/android/launcher3/card/b;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/b;-><init>(Lcom/android/launcher3/card/RenderFailRetry;)V

    iput-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry;->mRenderFailRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;-><init>(Lcom/android/launcher3/card/RenderFailRetry;)V

    iput-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry;->errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/RenderFailRetry;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/RenderFailRetry;->mRenderFailRunnable$lambda-0(Lcom/android/launcher3/card/RenderFailRetry;)V

    return-void
.end method

.method public static final synthetic access$getMRenderFailRunnable$p(Lcom/android/launcher3/card/RenderFailRetry;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/RenderFailRetry;->mRenderFailRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final checkSatisfyMinRetryInterval()Z
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/launcher3/card/RenderFailRetry;->lastResetRetryCountTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iget v4, p0, Lcom/android/launcher3/card/RenderFailRetry;->renderFailRetryCount:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkRetryInterval, interval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", intervalThreshold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RenderFailRetry"

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_40

    const/4 p0, 0x0

    goto :goto_43

    :cond_40
    iput-wide v0, p0, Lcom/android/launcher3/card/RenderFailRetry;->lastResetRetryCountTime:J

    const/4 p0, 0x1

    :goto_43
    return p0
.end method

.method private static final mRenderFailRunnable$lambda-0(Lcom/android/launcher3/card/RenderFailRetry;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/RenderFailRetry;->checkSatisfyMinRetryInterval()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "RenderFailRetry"

    const-string/jumbo v1, "onCall: uri security exception, render fail."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/card/RenderFailRetry;->renderFailRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/card/RenderFailRetry;->renderFailRetryCount:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/RenderFailRetry;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->renderFail()V

    :cond_21
    return-void
.end method


# virtual methods
.method public final clearRetryRecord()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/RenderFailRetry;->hostView:Lcom/android/launcher3/card/CommonCardView;

    iget-object v1, p0, Lcom/android/launcher3/card/RenderFailRetry;->mRenderFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/card/RenderFailRetry;->lastResetRetryCountTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/card/RenderFailRetry;->renderFailRetryCount:I

    return-void
.end method

.method public final getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/RenderFailRetry;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-object p0
.end method

.method public final getErrorCallback()Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/RenderFailRetry;->errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    return-object p0
.end method

.method public final getHostView()Lcom/android/launcher3/card/CommonCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/RenderFailRetry;->hostView:Lcom/android/launcher3/card/CommonCardView;

    return-object p0
.end method
