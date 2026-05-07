.class public Lm1/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lm1/e;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x4044000000000000L  # 40.0

    const-wide/high16 v2, 0x401c000000000000L  # 7.0

    invoke-static {v0, v1, v2, v3}, Lm1/e;->b(DD)Lm1/e;

    move-result-object v0

    sput-object v0, Lm1/e;->c:Lm1/e;

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm1/e;->b:D

    iput-wide p3, p0, Lm1/e;->a:D

    return-void
.end method

.method public static a(DD)Lm1/e;
    .registers 15

    const-wide v0, 0x3ffb333333333333L  # 1.7

    div-double/2addr p0, v0

    const-wide/16 v2, 0x0

    sub-double/2addr p0, v2

    const-wide/high16 v4, 0x4034000000000000L  # 20.0

    div-double/2addr p0, v4

    const-wide v6, 0x3fe999999999999aL  # 0.8

    mul-double/2addr p0, v6

    add-double/2addr p0, v2

    div-double/2addr p2, v0

    sub-double/2addr p2, v2

    div-double/2addr p2, v4

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    const-wide v4, 0x4068f00000000000L  # 199.5

    mul-double/2addr p2, v4

    add-double/2addr p2, v0

    const-wide/high16 v0, 0x4032000000000000L  # 18.0

    cmpg-double v4, p2, v0

    const-wide/high16 v5, 0x4008000000000000L  # 3.0

    const-wide/high16 v7, 0x4000000000000000L  # 2.0

    if-gtz v4, :cond_4b

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3f46f0068db8bac7L  # 7.0E-4

    mul-double/2addr v0, v2

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3f9fbe76c8b43958L  # 0.031

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3fe47ae147ae147bL  # 0.64

    mul-double/2addr v2, p2

    add-double/2addr v2, v0

    const-wide v0, 0x3ff47ae147ae147bL  # 1.28

    goto :goto_98

    :cond_4b
    cmpl-double v0, p2, v0

    const-wide/high16 v9, 0x4046000000000000L  # 44.0

    if-lez v0, :cond_73

    cmpg-double v0, p2, v9

    if-gtz v0, :cond_73

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3f0711947cfa26a2L  # 4.4E-5

    mul-double/2addr v0, v2

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3f789374bc6a7efaL  # 0.006

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3fd70a3d70a3d70aL  # 0.36

    mul-double/2addr v2, p2

    add-double/2addr v2, v0

    add-double/2addr v2, v7

    goto :goto_99

    :cond_73
    cmpl-double v0, p2, v9

    if-lez v0, :cond_99

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3e9e32f0ee144531L  # 4.5E-7

    mul-double/2addr v0, v2

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3f35c209246bf013L  # 3.32E-4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3fbb98c7e28240b8L  # 0.1078

    mul-double/2addr v2, p2

    add-double/2addr v2, v0

    const-wide v0, 0x40175c28f5c28f5cL  # 5.84

    :goto_98
    add-double/2addr v2, v0

    :cond_99
    :goto_99
    const-wide v0, 0x3f847ae147ae147bL  # 0.01

    mul-double/2addr v7, p0

    mul-double/2addr p0, p0

    sub-double/2addr v7, p0

    mul-double/2addr v0, v7

    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr p0, v7

    mul-double/2addr p0, v2

    add-double/2addr p0, v0

    invoke-static {p2, p3, p0, p1}, Lm1/e;->b(DD)Lm1/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(DD)Lm1/e;
    .registers 5

    new-instance v0, Lm1/e;

    invoke-static {p0, p1}, Lq/d;->o(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lq/d;->j(D)D

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lm1/e;-><init>(DD)V

    return-object v0
.end method
