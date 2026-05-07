.class Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/calendar/SolarTermUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nutation"
.end annotation


# instance fields
.field private Lon:D

.field private Obl:D


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/fancyicon/calendar/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;->Lon:D

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;)D
    .registers 3

    iget-wide v0, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;->Obl:D

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;->Lon:D

    return-void
.end method

.method public static bridge synthetic d(Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;D)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/fancyicon/calendar/SolarTermUtils$Nutation;->Obl:D

    return-void
.end method
