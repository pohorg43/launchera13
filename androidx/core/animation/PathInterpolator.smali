.class public Landroidx/core/animation/PathInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/animation/Interpolator;


# static fields
.field private static final EPSILON:F = 0.01f

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mData:[F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Landroidx/core/animation/PathInterpolator;->initQuad(FF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/animation/PathInterpolator;->initCubic(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_d

    sget-object p1, Landroidx/core/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    :cond_d
    sget-object p2, Landroidx/core/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_13
    invoke-direct {p0, p1, p4}, Landroidx/core/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 2
    .param p1  # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private static floatEquals(FF)Z
    .registers 2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a  # 0.01f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private getFractionAtIndex(I)F
    .registers 2

    iget-object p0, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    aget p0, p0, p1

    return p0
.end method

.method private getNumOfPoints()I
    .registers 1

    iget-object p0, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private getXAtIndex(I)F
    .registers 2

    iget-object p0, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private getYAtIndex(I)F
    .registers 2

    iget-object p0, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private initCubic(FFFF)V
    .registers 13

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, v7}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .registers 7

    const v0, 0x3b03126f  # 0.002f

    invoke-static {p1, v0}, Landroidx/core/animation/PathUtils;->createKeyFrameData(Landroid/graphics/Path;F)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    invoke-direct {p0}, Landroidx/core/animation/PathInterpolator;->getNumOfPoints()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-direct {p0, v0}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v1

    invoke-static {v1, v2}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_69

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v3, v4}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-direct {p0, v1}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v1

    invoke-static {v1, v4}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_69

    move v1, v2

    :goto_3c
    if-ge v0, p1, :cond_68

    invoke-direct {p0, v0}, Landroidx/core/animation/PathInterpolator;->getFractionAtIndex(I)F

    move-result v3

    invoke-direct {p0, v0}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v4

    cmpl-float v2, v3, v2

    if-nez v2, :cond_57

    cmpl-float v2, v4, v1

    if-nez v2, :cond_4f

    goto :goto_57

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    cmpg-float v1, v4, v1

    if-ltz v1, :cond_60

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v1, v4

    goto :goto_3c

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot loop back on itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    return-void

    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initQuad(FF)V
    .registers 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct {p0, v0}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    const-string/jumbo v0, "pathData"

    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    if-eqz p2, :cond_18

    invoke-direct {p0, p2}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    goto :goto_60

    :cond_18
    new-instance p0, Landroid/view/InflateException;

    const-string p2, "The path is null, which is created from "

    invoke-static {p2, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    const-string v0, "controlX1"

    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "controlY1"

    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    const-string v2, "controlX2"

    invoke-static {p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "controlY2"

    invoke-static {p2, v5}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-ne v4, v6, :cond_61

    if-nez v4, :cond_53

    invoke-direct {p0, v0, v1}, Landroidx/core/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_60

    :cond_53
    const/4 v4, 0x2

    invoke-static {p1, p2, v2, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    const/4 v4, 0x3

    invoke-static {p1, p2, v5, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/core/animation/PathInterpolator;->initCubic(FFFF)V

    :goto_60
    return-void

    :cond_61
    new-instance p0, Landroid/view/InflateException;

    const-string/jumbo p1, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    new-instance p0, Landroid/view/InflateException;

    const-string/jumbo p1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    new-instance p0, Landroid/view/InflateException;

    const-string/jumbo p1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_6

    return v0

    :cond_6
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_d

    return v1

    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/core/animation/PathInterpolator;->getNumOfPoints()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_14
    sub-int v4, v2, v1

    if-le v4, v3, :cond_28

    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_26

    move v2, v4

    goto :goto_14

    :cond_26
    move v1, v4

    goto :goto_14

    :cond_28
    invoke-direct {p0, v2}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v3

    invoke-direct {p0, v1}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v0, v3, v0

    if-nez v0, :cond_3a

    invoke-direct {p0, v1}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result p0

    return p0

    :cond_3a
    invoke-direct {p0, v1}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    invoke-direct {p0, v1}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v0

    invoke-direct {p0, v2}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result p0

    invoke-static {p0, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method
