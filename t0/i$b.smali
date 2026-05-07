.class public Lt0/i$b;
.super Lt0/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lt0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)I
    .registers 5

    sget-boolean p0, Lt0/i;->e:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public b(IIII)F
    .registers 5

    sget-boolean p0, Lt0/i;->e:Z

    if-eqz p0, :cond_f

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_f
    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    if-nez p0, :cond_1a

    goto :goto_20

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    :goto_20
    return p1
.end method
