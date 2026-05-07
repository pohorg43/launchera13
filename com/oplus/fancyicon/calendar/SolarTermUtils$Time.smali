.class Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/calendar/SolarTermUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation


# instance fields
.field private day:D

.field private hour:D

.field private minute:D

.field private month:D

.field private second:D

.field private year:D


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/fancyicon/calendar/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->day:D

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->hour:D

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->minute:D

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->month:D

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->second:D

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->year:D

    return-wide v0
.end method

.method public static bridge synthetic g(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->day:D

    return-void
.end method

.method public static bridge synthetic h(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->hour:D

    return-void
.end method

.method public static bridge synthetic i(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->minute:D

    return-void
.end method

.method public static bridge synthetic j(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->month:D

    return-void
.end method

.method public static bridge synthetic k(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->second:D

    return-void
.end method

.method public static bridge synthetic l(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->year:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->year:D

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/calendar/SolarTermUtils;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->month:D

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/calendar/SolarTermUtils;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Time;->day:D

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/calendar/SolarTermUtils;->a(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
