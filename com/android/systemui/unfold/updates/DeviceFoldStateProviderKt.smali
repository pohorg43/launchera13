.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field public static final FULLY_OPEN_THRESHOLD_DEGREES:F = 15.0f

.field public static final START_CLOSING_ON_APPS_THRESHOLD_DEGREES:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "DeviceFoldProvider"


# direct methods
.method public static final synthetic access$stateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFULLY_OPEN_THRESHOLD_DEGREES$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getSTART_CLOSING_ON_APPS_THRESHOLD_DEGREES$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static final stateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const-string p0, "UNKNOWN"

    goto :goto_25

    :cond_14
    const-string p0, "FINISH_CLOSED"

    goto :goto_25

    :cond_17
    const-string p0, "FINISH_FULL_OPEN"

    goto :goto_25

    :cond_1a
    const-string p0, "FINISH_HALF_OPEN"

    goto :goto_25

    :cond_1d
    const-string p0, "UNFOLDED_SCREEN_AVAILABLE"

    goto :goto_25

    :cond_20
    const-string p0, "START_CLOSING"

    goto :goto_25

    :cond_23
    const-string p0, "START_OPENING"

    :goto_25
    return-object p0
.end method
