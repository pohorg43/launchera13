.class public final Lcom/android/common/util/ClickUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DURATION:J = 0x1f4L

.field public static final INSTANCE:Lcom/android/common/util/ClickUtils;

.field private static final SHORT_DURATION:J = 0xfaL

.field private static sLastTime:J

.field private static sLastTimeIconFallen:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/ClickUtils;

    invoke-direct {v0}, Lcom/android/common/util/ClickUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clickable(J)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/common/util/ClickUtils;->sLastTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p0, v2, p0

    if-lez p0, :cond_14

    sput-wide v0, Lcom/android/common/util/ClickUtils;->sLastTime:J

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic clickable$default(JILjava/lang/Object;)Z
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-wide/16 p0, 0x1f4

    :cond_6
    invoke-static {p0, p1}, Lcom/android/common/util/ClickUtils;->clickable(J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final clickable()Z
    .registers 3

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lcom/android/common/util/ClickUtils;->clickable(J)Z

    move-result p0

    return p0
.end method

.method public final clickableIconFallen(J)Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/common/util/ClickUtils;->sLastTimeIconFallen:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-lez p0, :cond_14

    sput-wide v0, Lcom/android/common/util/ClickUtils;->sLastTimeIconFallen:J

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final reset()V
    .registers 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/common/util/ClickUtils;->sLastTime:J

    sput-wide v0, Lcom/android/common/util/ClickUtils;->sLastTimeIconFallen:J

    return-void
.end method

.method public final shortClickable()Z
    .registers 3

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lcom/android/common/util/ClickUtils;->clickable(J)Z

    move-result p0

    return p0
.end method
