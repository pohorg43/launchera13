.class public Lo/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "x"

    const-string/jumbo v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/p;->a:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;)I
    .registers 7
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lp/c;->a()V

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L  # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    :goto_1a
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_1a

    :cond_24
    invoke-virtual {p0}, Lp/c;->c()V

    const/16 p0, 0xff

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static b(Lp/c;F)Landroid/graphics/PointF;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_75

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1a
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_1a

    :cond_24
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown point starts with "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    invoke-virtual {p0}, Lp/c;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_48
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_6a

    sget-object v2, Lo/p;->a:Lp/c$a;

    invoke-virtual {p0, v2}, Lp/c;->m(Lp/c$a;)I

    move-result v2

    if-eqz v2, :cond_65

    const/4 v3, 0x1

    if-eq v2, v3, :cond_60

    invoke-virtual {p0}, Lp/c;->n()V

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_48

    :cond_60
    invoke-static {p0}, Lo/p;->d(Lp/c;)F

    move-result v1

    goto :goto_48

    :cond_65
    invoke-static {p0}, Lo/p;->d(Lp/c;)F

    move-result v0

    goto :goto_48

    :cond_6a
    invoke-virtual {p0}, Lp/c;->d()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_75
    invoke-virtual {p0}, Lp/c;->a()V

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_82
    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v2

    sget-object v3, Lp/c$b;->b:Lp/c$b;

    if-eq v2, v3, :cond_8e

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_82

    :cond_8e
    invoke-virtual {p0}, Lp/c;->c()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static c(Lp/c;F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/c;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lp/c;->a()V

    :goto_8
    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->a:Lp/c$b;

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Lp/c;->a()V

    invoke-static {p0, p1}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lp/c;->c()V

    goto :goto_8

    :cond_1e
    invoke-virtual {p0}, Lp/c;->c()V

    return-object v0
.end method

.method public static d(Lp/c;)F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v2, 0x6

    if-ne v1, v2, :cond_13

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value for token of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    invoke-virtual {p0}, Lp/c;->a()V

    invoke-virtual {p0}, Lp/c;->g()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_32
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_32

    :cond_3c
    invoke-virtual {p0}, Lp/c;->c()V

    return v0
.end method
