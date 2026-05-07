.class public Lo/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h0<",
        "Ll/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/b0;

.field public static final b:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lo/b0;

    invoke-direct {v0}, Lo/b0;-><init>()V

    sput-object v0, Lo/b0;->a:Lo/b0;

    const-string v0, "c"

    const-string/jumbo v1, "v"

    const-string v2, "i"

    const-string/jumbo v3, "o"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/b0;->b:Lp/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/c;F)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lp/c;->k()Lp/c$b;

    move-result-object p0

    sget-object v0, Lp/c$b;->a:Lp/c$b;

    if-ne p0, v0, :cond_b

    invoke-virtual {p1}, Lp/c;->a()V

    :cond_b
    invoke-virtual {p1}, Lp/c;->b()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v1

    move v3, v0

    :goto_13
    invoke-virtual {p1}, Lp/c;->e()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_45

    sget-object v4, Lo/b0;->b:Lp/c$a;

    invoke-virtual {p1, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_40

    if-eq v4, v5, :cond_3b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_36

    const/4 v5, 0x3

    if-eq v4, v5, :cond_31

    invoke-virtual {p1}, Lp/c;->n()V

    invoke-virtual {p1}, Lp/c;->o()V

    goto :goto_13

    :cond_31
    invoke-static {p1, p2}, Lo/p;->c(Lp/c;F)Ljava/util/List;

    move-result-object v2

    goto :goto_13

    :cond_36
    invoke-static {p1, p2}, Lo/p;->c(Lp/c;F)Ljava/util/List;

    move-result-object v1

    goto :goto_13

    :cond_3b
    invoke-static {p1, p2}, Lo/p;->c(Lp/c;F)Ljava/util/List;

    move-result-object p0

    goto :goto_13

    :cond_40
    invoke-virtual {p1}, Lp/c;->f()Z

    move-result v3

    goto :goto_13

    :cond_45
    invoke-virtual {p1}, Lp/c;->d()V

    invoke-virtual {p1}, Lp/c;->k()Lp/c$b;

    move-result-object p2

    sget-object v4, Lp/c$b;->b:Lp/c$b;

    if-ne p2, v4, :cond_53

    invoke-virtual {p1}, Lp/c;->c()V

    :cond_53
    if-eqz p0, :cond_de

    if-eqz v1, :cond_de

    if-eqz v2, :cond_de

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6e

    new-instance p0, Ll/j;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Ll/j;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    goto :goto_dd

    :cond_6e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_7e
    if-ge v6, p1, :cond_ad

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    invoke-static {v9, v8}, Lq/i;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v7, v10}, Lq/i;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    new-instance v10, Lj/a;

    invoke-direct {v10, v8, v9, v7}, Lj/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    :cond_ad
    if-eqz v3, :cond_d8

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    sub-int/2addr p1, v5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {p0, p1}, Lq/i;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {v6, v0}, Lq/i;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, Lj/a;

    invoke-direct {v0, p0, p1, v6}, Lj/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    new-instance p0, Ll/j;

    invoke-direct {p0, p2, v3, v4}, Ll/j;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    :goto_dd
    return-object p0

    :cond_de
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shape data was missing information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
