.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeInterpolator"
.end annotation


# static fields
.field public static final b:[F

.field public static final c:[I

.field public static final d:[F


# instance fields
.field public final a:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->b:[F

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->d:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    sget-object v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->c:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2c

    aget v2, v2, v0

    add-int/2addr v1, v2

    sget-object v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->d:[F

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v1

    const/high16 v4, 0x43e10000  # 450.0f

    div-float/2addr v3, v4

    aput v3, v2, v0

    goto :goto_19

    :cond_2c
    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        -0x40800000  # -1.0f
        0x3f000000  # 0.5f
        -0x41000000  # -0.5f
        0x0
    .end array-data

    :array_3c
    .array-data 4
        0x53
        0x85
        0x75
        0x75
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->d:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    aget v2, v1, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2a

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    sub-float/2addr p1, v3

    aget v3, v1, v0

    aget v1, v1, v2

    sub-float/2addr v3, v1

    div-float/2addr p1, v3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->a:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    sget-object p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->b:[F

    aget v1, p1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v2, v1

    aget p1, p1, v0

    mul-float/2addr p1, p0

    add-float/2addr p1, v2

    return p1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method
