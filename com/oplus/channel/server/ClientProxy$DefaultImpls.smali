.class public final Lcom/oplus/channel/server/ClientProxy$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/ClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic destroy$default(Lcom/oplus/channel/server/ClientProxy;ZILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-interface {p0, p1}, Lcom/oplus/channel/server/ClientProxy;->destroy(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: destroy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic observe$default(Lcom/oplus/channel/server/ClientProxy;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V
    .registers 14

    if-nez p7, :cond_16

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_7

    const/4 p4, 0x0

    :cond_7
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_d

    const/4 p5, 0x0

    :cond_d
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/oplus/channel/server/ClientProxy;->observe(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: observe"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic replaceObserve$default(Lcom/oplus/channel/server/ClientProxy;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V
    .registers 14

    if-nez p7, :cond_11

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    :cond_7
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/oplus/channel/server/ClientProxy;->replaceObserve(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: replaceObserve"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic request$default(Lcom/oplus/channel/server/ClientProxy;[BZLjava/lang/Object;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_10

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/ClientProxy;->request([BZLjava/lang/Object;)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: request"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic request$default(Lcom/oplus/channel/server/ClientProxy;[BZLjava/lang/Object;ZILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_15

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_c

    const/4 p3, 0x0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    const/4 p4, 0x1

    :cond_11
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/channel/server/ClientProxy;->request([BZLjava/lang/Object;Z)V

    return-void

    :cond_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: request"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic requestOnce$default(Lcom/oplus/channel/server/ClientProxy;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;JZLjava/lang/Object;ILjava/lang/Object;)V
    .registers 19

    if-nez p9, :cond_2c

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_a

    const-string v0, "default"

    move-object v2, v0

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_13

    const-wide/16 v0, -0x1

    move-wide v5, v0

    goto :goto_14

    :cond_13
    move-wide v5, p4

    :goto_14
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1c

    :cond_1b
    move v7, p6

    :goto_1c
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_25

    :cond_23
    move-object/from16 v8, p7

    :goto_25
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v8}, Lcom/oplus/channel/server/ClientProxy;->requestOnce(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;JZLjava/lang/Object;)V

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: requestOnce"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic stopObserve$default(Lcom/oplus/channel/server/ClientProxy;Lkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_10

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/ClientProxy;->stopObserve(Lkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stopObserve"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic unObserve$default(Lcom/oplus/channel/server/ClientProxy;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/oplus/channel/server/ClientProxy;->unObserve(Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unObserve"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
