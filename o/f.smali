.class public Lo/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo/f;

    invoke-direct {v0}, Lo/f;-><init>()V

    sput-object v0, Lo/f;->a:Lo/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/c;F)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lp/c;->k()Lp/c$b;

    move-result-object p0

    sget-object p2, Lp/c$b;->a:Lp/c$b;

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lp/c;->a()V

    :cond_10
    invoke-virtual {p1}, Lp/c;->g()D

    move-result-wide v0

    invoke-virtual {p1}, Lp/c;->g()D

    move-result-wide v2

    invoke-virtual {p1}, Lp/c;->g()D

    move-result-wide v4

    invoke-virtual {p1}, Lp/c;->g()D

    move-result-wide v6

    if-eqz p0, :cond_25

    invoke-virtual {p1}, Lp/c;->c()V

    :cond_25
    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_40

    cmpg-double p2, v2, p0

    if-gtz p2, :cond_40

    cmpg-double p2, v4, p0

    if-gtz p2, :cond_40

    cmpg-double p0, v6, p0

    if-gtz p0, :cond_40

    const-wide p0, 0x406fe00000000000L  # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    mul-double/2addr v6, p0

    :cond_40
    double-to-int p0, v6

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
