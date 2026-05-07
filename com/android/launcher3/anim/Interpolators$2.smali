.class Lcom/android/launcher3/anim/Interpolators$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final FOCAL_LENGTH:F = 0.35f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zInterpolate(F)F
    .registers 2

    const p0, 0x3eb33333  # 0.35f

    add-float/2addr p1, p0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p1, p0

    const p0, 0x3f3da130

    div-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/Interpolators$2;->zInterpolate(F)F

    move-result p0

    return p0
.end method
