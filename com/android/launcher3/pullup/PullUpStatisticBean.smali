.class public final Lcom/android/launcher3/pullup/PullUpStatisticBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private startResult:I

.field private startTime:J

.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startTime:J

    const-string p1, ""

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->traceId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/pullup/PullUpStatisticBean;IILjava/lang/Object;)Lcom/android/launcher3/pullup/PullUpStatisticBean;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/PullUpStatisticBean;->copy(I)Lcom/android/launcher3/pullup/PullUpStatisticBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    return p0
.end method

.method public final copy(I)Lcom/android/launcher3/pullup/PullUpStatisticBean;
    .registers 2

    new-instance p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/PullUpStatisticBean;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/pullup/PullUpStatisticBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/pullup/PullUpStatisticBean;

    iget p0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    iget p1, p1, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final generateTraceId(J)Ljava/lang/String;
    .registers 8

    iput-wide p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startTime:J

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s-%s"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(locale, format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->traceId:Ljava/lang/String;

    return-object p1
.end method

.method public final getStartResult()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    return p0
.end method

.method public final getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startTime:J

    return-wide v0
.end method

.method public final getTraceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->traceId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final setStartResult(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startResult:I

    return-void
.end method

.method public final setStartTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->startTime:J

    return-void
.end method

.method public final setTraceId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpStatisticBean;->traceId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
