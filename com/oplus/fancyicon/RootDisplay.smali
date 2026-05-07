.class public Lcom/oplus/fancyicon/RootDisplay;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_RES_DENSITY:I = 0xf0

.field public static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "RootDisplay"

.field private static final MATRIX_WIDTH:I = 0x5a0


# instance fields
.field private mDefaultResourceDensity:I

.field public mExtraMatrix:Landroid/graphics/Matrix;

.field private mHeight:F

.field public mMatrixScale:F

.field public mRawTargetDensity:I

.field private mScale:F

.field public mScaleByDensity:Z

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mTargetDensity:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/oplus/fancyicon/RootDisplay;->mRawTargetDensity:I

    if-nez p2, :cond_16

    return-void

    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/RootDisplay;->setupScale(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/RootDisplay;->initVariable(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method private initVariable(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget v1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "raw_screen_width"

    invoke-static {v2, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget v1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "raw_screen_height"

    invoke-static {v2, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget v1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "screen_width"

    invoke-static {v2, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    iget v1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "screen_height"

    invoke-static {v2, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p1

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mRawTargetDensity:I

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v0, "screen_density"

    invoke-static {v0, p1, p0}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    return-void
.end method

.method private resolveRect(Lcom/oplus/fancyicon/ScreenElementRoot;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/fancyicon/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenHeight:I

    iget v0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    if-eq v0, p2, :cond_1a

    const/4 p2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x0

    :goto_1b
    if-eqz p2, :cond_2e

    const/16 p2, 0x5a0

    if-le v0, p2, :cond_2e

    int-to-float v0, v0

    const/high16 v1, 0x44b40000  # 1440.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenHeight:I

    iput p2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    :cond_2e
    return-void
.end method

.method private setupScale(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 9

    const-string v0, "screenWidth"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "resDensity"

    invoke-static {p1, v2, v1}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupScale defaultScreenWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RootDisplay"

    invoke-static {v3, v2}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    if-eq v0, v2, :cond_3f

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Icon"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget v0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    :cond_3f
    const/16 v2, 0x1e0

    const/16 v4, 0xf0

    if-nez v0, :cond_4d

    iget v5, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    if-nez v5, :cond_4d

    iput v4, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    move v0, v2

    goto :goto_5c

    :cond_4d
    iget v4, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    if-nez v4, :cond_57

    mul-int/lit16 v4, v0, 0xf0

    div-int/2addr v4, v2

    iput v4, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    goto :goto_5c

    :cond_57
    if-nez v0, :cond_5c

    mul-int/2addr v4, v2

    div-int/lit16 v0, v4, 0xf0

    :cond_5c
    :goto_5c
    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object v2

    iget v4, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    invoke-virtual {v2, v4}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->setResourceDensity(I)V

    invoke-direct {p0, p2, v0}, Lcom/oplus/fancyicon/RootDisplay;->resolveRect(Lcom/oplus/fancyicon/ScreenElementRoot;I)V

    const-string v2, "scaleByDensity"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScaleByDensity:Z

    :cond_7a
    iget-boolean v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScaleByDensity:Z

    if-eqz v2, :cond_88

    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mRawTargetDensity:I

    int-to-float v2, v2

    iget v4, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    goto :goto_99

    :cond_88
    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    int-to-float v2, v2

    int-to-float v4, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    iget v4, p0, Lcom/oplus/fancyicon/RootDisplay;->mDefaultResourceDensity:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mTargetDensity:I

    :goto_99
    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object p2

    iget v2, p0, Lcom/oplus/fancyicon/RootDisplay;->mTargetDensity:I

    invoke-virtual {p2, v2}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->setTargetDensity(I)V

    const-string p2, "width"

    invoke-static {p1, p2, v1}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    const-string v2, "height"

    invoke-static {p1, v2, v1}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    int-to-float p2, p2

    iget v1, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/fancyicon/RootDisplay;->mWidth:F

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/RootDisplay;->mHeight:F

    iget p1, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_d8

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/RootDisplay;->mExtraMatrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_d8
    const-string p1, "setupScale dw : "

    const-string p2, " , sw : "

    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , sh : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , scale : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mHeight:F

    return p0
.end method

.method public getMatrixScale()F
    .registers 2

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mMatrixScale:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_9

    const/high16 p0, 0x3f800000  # 1.0f

    :cond_9
    return p0
.end method

.method public getScale()F
    .registers 2

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScale:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_9

    const/high16 p0, 0x3f800000  # 1.0f

    :cond_9
    return p0
.end method

.method public getScreenHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenHeight:I

    return p0
.end method

.method public getScreenWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mScreenWidth:I

    return p0
.end method

.method public getTargetDensity()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mTargetDensity:I

    return p0
.end method

.method public getWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/RootDisplay;->mWidth:F

    return p0
.end method
