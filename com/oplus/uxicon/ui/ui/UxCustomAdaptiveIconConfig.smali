.class public Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
    }
.end annotation


# static fields
.field public static final OPLUS_ADAPTIVE_MASK_SIZE:I = 0x96


# instance fields
.field private mConvertFloatNum:F

.field private mCustomIconFgSize:I

.field private mCustomIconSize:I

.field private mCustomMask:Landroid/graphics/Path;

.field private mDefaultIconSize:I

.field private mForegroundScalePercent:F

.field private mIsAdaptiveIconDrawable:Z

.field private mIsPlatformDrawable:Z

.field private mScalePercent:F


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mConvertFloatNum:F

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget v2, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mDefaultIconSize:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconSize:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconFgSize:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mScalePercent:F

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mForegroundScalePercent:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconSize:I

    return p1
.end method

.method public static synthetic access$202(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mScalePercent:F

    return p1
.end method

.method public static synthetic access$302(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconFgSize:I

    return p1
.end method

.method public static synthetic access$402(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mForegroundScalePercent:F

    return p1
.end method

.method public static synthetic access$502(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    return p1
.end method


# virtual methods
.method public getCustomIconFgSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconFgSize:I

    return p0
.end method

.method public getCustomIconSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconSize:I

    return p0
.end method

.method public getCustomMask()Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    return-object p0
.end method

.method public getDefaultIconSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mDefaultIconSize:I

    return p0
.end method

.method public getForegroundScalePercent()F
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mForegroundScalePercent:F

    return p0
.end method

.method public getIsAdaptiveIconDrawable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    return p0
.end method

.method public getIsPlatformDrawable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    return p0
.end method

.method public getScalePercent()F
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mScalePercent:F

    return p0
.end method

.method public setCustomFgSize(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconFgSize:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mConvertFloatNum:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mDefaultIconSize:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mForegroundScalePercent:F

    return-void
.end method

.method public setCustomIconSize(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconSize:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mConvertFloatNum:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mDefaultIconSize:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mScalePercent:F

    return-void
.end method

.method public setCustomMask(Landroid/graphics/Path;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CustomIconConfig:DefaultIconSize = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mDefaultIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";CustomIconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";CustomIconFgSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mCustomIconFgSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";ScalePercent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mScalePercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";ForegroundScalePercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mForegroundScalePercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";IsPlatformDrawable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";IsAdaptiveIconDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
