.class final Lcom/oplus/glcomponent/math/MathUtils$Sin;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/math/MathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sin"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/math/MathUtils$Sin;

.field private static final table:[F


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/oplus/glcomponent/math/MathUtils$Sin;

    invoke-direct {v0}, Lcom/oplus/glcomponent/math/MathUtils$Sin;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/math/MathUtils$Sin;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils$Sin;

    const/16 v0, 0x4000

    new-array v1, v0, [F

    sput-object v1, Lcom/oplus/glcomponent/math/MathUtils$Sin;->table:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/oplus/glcomponent/math/MathUtils$Sin;->table:[F

    int-to-float v5, v2

    const/high16 v6, 0x3f000000  # 0.5f

    add-float/2addr v5, v6

    int-to-float v6, v0

    div-float/2addr v5, v6

    const v6, 0x40c90fdb

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v2

    if-lt v3, v0, :cond_5f

    const/16 v0, 0x168

    invoke-static {v1, v0}, Li1/d;->g(II)Lm3/d;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Li1/d;->f(Lm3/b;I)Lm3/b;

    move-result-object v0

    iget v1, v0, Lm3/b;->a:I

    iget v2, v0, Lm3/b;->b:I

    iget v0, v0, Lm3/b;->c:I

    if-lez v0, :cond_3d

    if-le v1, v2, :cond_41

    :cond_3d
    if-gez v0, :cond_5e

    if-gt v2, v1, :cond_5e

    :cond_41
    :goto_41
    add-int v3, v1, v0

    sget-object v4, Lcom/oplus/glcomponent/math/MathUtils$Sin;->table:[F

    int-to-float v5, v1

    const v6, 0x42360b61

    mul-float/2addr v6, v5

    float-to-int v6, v6

    and-int/lit16 v6, v6, 0x3fff

    const v7, 0x3c8efa35

    mul-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v5, v7

    aput v5, v4, v6

    if-ne v1, v2, :cond_5c

    goto :goto_5e

    :cond_5c
    move v1, v3

    goto :goto_41

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v2, v3

    goto :goto_f
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTable()[F
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/math/MathUtils$Sin;->table:[F

    return-object p0
.end method
