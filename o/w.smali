.class public Lo/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/w;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo/w;

    invoke-direct {v0}, Lo/w;-><init>()V

    sput-object v0, Lo/w;->a:Lo/w;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/c;F)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lp/c;->k()Lp/c$b;

    move-result-object p0

    sget-object v0, Lp/c$b;->a:Lp/c$b;

    if-ne p0, v0, :cond_d

    invoke-static {p1, p2}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_35

    :cond_d
    sget-object v0, Lp/c$b;->c:Lp/c$b;

    if-ne p0, v0, :cond_16

    invoke-static {p1, p2}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_35

    :cond_16
    sget-object v0, Lp/c$b;->g:Lp/c$b;

    if-ne p0, v0, :cond_36

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lp/c;->g()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Lp/c;->g()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2b
    invoke-virtual {p1}, Lp/c;->e()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Lp/c;->o()V

    goto :goto_2b

    :cond_35
    :goto_35
    return-object p0

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert json to point. Next token is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
