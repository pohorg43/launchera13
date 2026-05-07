.class public final Lcom/oplus/effectengine/blur/OplusBlurRenderer$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/effectengine/blur/OplusBlurRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic setParam$default(Lcom/oplus/effectengine/blur/OplusBlurRenderer;FFFFILjava/lang/Object;)V
    .registers 8

    if-nez p6, :cond_17

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_8

    const/high16 p2, 0x3f800000  # 1.0f

    :cond_8
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_e

    move p3, v0

    :cond_e
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_13

    move p4, v0

    :cond_13
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/effectengine/blur/OplusBlurRenderer;->setParam(FFFF)V

    return-void

    :cond_17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setParam"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
