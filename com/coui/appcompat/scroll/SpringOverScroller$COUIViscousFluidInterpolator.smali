.class Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIViscousFluidInterpolator"
.end annotation


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->a(F)F

    move-result v1

    div-float v1, v0, v1

    sput v1, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->a:F

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->a(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->b:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .registers 5

    const/high16 v0, 0x41000000  # 8.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_13

    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_25

    :cond_13
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    const v2, 0x3f21d2a7

    invoke-static {v0, p0, v2, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    :goto_25
    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    sget p0, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->a:F

    invoke-static {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->a(F)F

    move-result p1

    mul-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_f

    sget p1, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;->b:F

    add-float/2addr p0, p1

    :cond_f
    return p0
.end method
