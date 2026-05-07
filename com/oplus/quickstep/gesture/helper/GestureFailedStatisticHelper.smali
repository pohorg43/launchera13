.class public final Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;,
        Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

.field private static final SEND_EVENT_THRESHOLD:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "GestureFailedStatisticHelper"


# instance fields
.field private moveDistanceFailedCountLandscape:I

.field private moveDistanceFailedCountPortrait:I

.field private speedFailedCountLandscape:I

.field private speedFailedCountPortrait:I

.field private timeOutCountLandscape:I

.field private timeOutCountPortrait:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isLandscape(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private final sendMoveDistanceFailedEventIfNeed(Landroid/content/Context;)V
    .registers 7

    const-string v0, "sendMoveDistanceFailedEventIfNeed:, moveDistanceFailedCountPortrait = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountPortrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", moveDistanceFailedCountLandscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountLandscape:I

    const-string v2, "QuickStep"

    const-string v3, "GestureFailedStatisticHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountPortrait:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_30

    iput v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountPortrait:I

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v3, 0x1

    sget-object v4, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->MOVE_DISTANCE_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->getValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/statistics/LauncherStatistics;->statGestureRecognitionFailed(II)V

    :cond_30
    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountLandscape:I

    if-lt v0, v2, :cond_44

    iput v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountLandscape:I

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const/4 p1, 0x2

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->MOVE_DISTANCE_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->getValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/statistics/LauncherStatistics;->statGestureRecognitionFailed(II)V

    :cond_44
    return-void
.end method

.method private final sendSpeedFailedEventIfNeed(Landroid/content/Context;)V
    .registers 7

    const-string v0, "sendTimeOutEventIfNeed: speedFailedCountPortrait = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountPortrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speedFailedCountLandscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountLandscape:I

    const-string v2, "QuickStep"

    const-string v3, "GestureFailedStatisticHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountPortrait:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_30

    iput v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountPortrait:I

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v3, 0x1

    sget-object v4, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->SPEED_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->getValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/statistics/LauncherStatistics;->statGestureRecognitionFailed(II)V

    :cond_30
    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountLandscape:I

    if-lt v0, v2, :cond_44

    iput v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountLandscape:I

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const/4 p1, 0x2

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->SPEED_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->getValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/statistics/LauncherStatistics;->statGestureRecognitionFailed(II)V

    :cond_44
    return-void
.end method

.method private final sendTimeOutEventIfNeed(Landroid/content/Context;)V
    .registers 7

    const-string v0, "sendTimeOutEventIfNeed: timeOutCountPortrait = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountPortrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOutCountLandscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountLandscape:I

    const-string v2, "QuickStep"

    const-string v3, "GestureFailedStatisticHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountPortrait:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_30

    iput v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountPortrait:I

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v3, 0x1

    sget-object v4, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->TIME_OUT:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->getValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/statistics/LauncherStatistics;->statGestureRecognitionFailed(II)V

    :cond_30
    iget v0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountLandscape:I

    if-lt v0, v2, :cond_44

    iput v1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountLandscape:I

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const/4 p1, 0x2

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->TIME_OUT:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->getValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/statistics/LauncherStatistics;->statGestureRecognitionFailed(II)V

    :cond_44
    return-void
.end method


# virtual methods
.method public final moveDistanceFailedInc(I)V
    .registers 4

    const-string v0, "moveDistanceFailedInc: rotation = "

    const-string v1, "GestureFailedStatisticHelper"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountLandscape:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountLandscape:I

    goto :goto_1a

    :cond_14
    iget p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountPortrait:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedCountPortrait:I

    :goto_1a
    return-void
.end method

.method public final sendGestureFailedEventIfNeed(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "GestureFailedStatisticHelper"

    const-string v2, "sendGestureFailedEventIfNeed()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->sendTimeOutEventIfNeed(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->sendSpeedFailedEventIfNeed(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->sendMoveDistanceFailedEventIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public final speedFailedInc(I)V
    .registers 4

    const-string v0, "speedFailedInc: rotation = "

    const-string v1, "GestureFailedStatisticHelper"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountLandscape:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountLandscape:I

    goto :goto_1a

    :cond_14
    iget p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountPortrait:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedCountPortrait:I

    :goto_1a
    return-void
.end method

.method public final timeOutInc(I)V
    .registers 5

    const-string v0, "timeOutInc: rotation = "

    const-string v1, "QuickStep"

    const-string v2, "GestureFailedStatisticHelper"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountLandscape:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountLandscape:I

    goto :goto_1c

    :cond_16
    iget p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountPortrait:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutCountPortrait:I

    :goto_1c
    return-void
.end method
