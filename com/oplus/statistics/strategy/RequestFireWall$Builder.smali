.class public Lcom/oplus/statistics/strategy/RequestFireWall$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/statistics/strategy/RequestFireWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mLimit:I

.field private final mPeriod:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 6
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2  # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->mLimit:I

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->mPeriod:J

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;)I
    .registers 1

    iget p0, p0, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->mLimit:I

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->mPeriod:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/oplus/statistics/strategy/RequestFireWall;
    .registers 3

    new-instance v0, Lcom/oplus/statistics/strategy/RequestFireWall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/statistics/strategy/RequestFireWall;-><init>(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;Lcom/oplus/statistics/strategy/RequestFireWall$1;)V

    return-object v0
.end method
