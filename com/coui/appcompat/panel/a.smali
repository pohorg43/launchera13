.class public final synthetic Lcom/coui/appcompat/panel/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(FFF)F
    .registers 3

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method
