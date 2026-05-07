.class public final synthetic Landroidx/core/animation/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(FFI)I
    .registers 3

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, p2

    return p0
.end method
