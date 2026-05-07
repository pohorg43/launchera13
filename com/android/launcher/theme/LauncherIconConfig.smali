.class public Lcom/android/launcher/theme/LauncherIconConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ADAPTIVE_ICON_ANIM_ENABLED:Z = true

.field private static final ICON_FLAG_MASK:J = 0x1L

.field private static final ICON_SIZE_FOLD_SCREEN:[F

.field private static final ICON_SIZE_FOLD_TABLET:[F

.field private static final MAX_ICON_SIZE_FOLD_SCREEN_IN_EXPANDED:F = 56.0f

.field private static final MAX_ICON_SIZE_FOLD_SCREEN_IN_FOLDED:F = 62.0f

.field private static final NUM_FLOAT_1:F = 1.0f

.field private static final OLD_ICON_SHAPE_RADIUS_MIN:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "LauncherIconConfig"

.field private static final THIRD_ICON_BIT:I = 0xffff

.field private static final THIRD_ICON_BIT_OFFSET:I = 0x20

.field private static sBackgroundScale:F

.field public static sCurrentDensity:F

.field private static sDefaultStyleIconSize:F

.field private static sIconSize:F

.field private static volatile sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

.field public static sIsDefaultTheme:Z

.field public static sLeafPath:Landroid/graphics/Path;

.field private static sMaxStyleIconSize:F

.field private static sMinStyleIconSize:F

.field public static sOctagonPath:Landroid/graphics/Path;

.field public static sStickerPath:Landroid/graphics/Path;

.field private static sUXDesignScale:F

.field private static sWholeIconScale:F


# instance fields
.field private mBackgroundSize:I

.field private mForegroundSize:I

.field private volatile mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

.field private mIconRadius:I

.field private mRadiusRatio:F

.field private mScalerForEditedIcon:F

.field private mSupportAdaptiveIconAnim:Z

.field private misLocalSpecial:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_2e

    sput-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_TABLET:[F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    const/high16 v0, 0x43280000  # 168.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    const/high16 v0, 0x43160000  # 150.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    const/high16 v0, 0x42f00000  # 120.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    const/high16 v0, 0x42600000  # 56.0f

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    return-void

    :array_2e
    .array-data 4
        0x42300000  # 44.0f
        0x42580000  # 54.0f
        0x42700000  # 60.0f
    .end array-data

    :array_38
    .array-data 4
        0x42400000  # 48.0f
        0x42600000  # 56.0f
        0x42800000  # 64.0f
    .end array-data
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    const p0, 0x7f120271

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sOctagonPath:Landroid/graphics/Path;

    const p0, 0x7f120270

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sLeafPath:Landroid/graphics/Path;

    const p0, 0x7f120272

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sStickerPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43200000  # 160.0f

    div-float/2addr p0, p1

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_59

    sget-object p1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v0, p1, v3

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    aget v0, p1, v2

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    aget v0, p1, v1

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    aget p0, p1, v3

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    goto :goto_74

    :cond_59
    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_74

    sget-object p1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_TABLET:[F

    aget v0, p1, v3

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    aget v0, p1, v2

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    aget v0, p1, v1

    mul-float/2addr v0, p0

    sput v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    aget p0, p1, v3

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    :cond_74
    :goto_74
    return-void
.end method

.method public static getBackgroundIconScalarInFoldScreen()F
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1a

    const/high16 v0, 0x42600000  # 56.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    :goto_17
    div-float v1, v0, v1

    goto :goto_27

    :cond_1a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_27

    const/high16 v0, 0x42780000  # 62.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    goto :goto_17

    :cond_27
    :goto_27
    return v1
.end method

.method public static getCurrentWholeIconScale(Landroid/content/Context;)F
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v0, p0}, Lcom/android/launcher/theme/LauncherIconConfig;->updateContainerScaler(Landroid/content/res/Resources;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentWholeIconScale: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    const-string v1, "LauncherIconConfig"

    invoke-static {p0, v0, v1}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget p0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    return p0
.end method

.method public static getFoldScreenIconVisualSize(Landroid/content/res/Resources;F)F
    .registers 7

    const v0, 0x7f070725

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070723

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f070724

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "getFoldScreenIconVisualSize maxVisibleSize:"

    const-string v3, ",defaultVisibleSize:"

    const-string v4, ",minVisibleSize:"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LauncherIconConfig"

    invoke-static {v2, p0, v3}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_2d
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_3b

    move p1, v0

    goto :goto_6c

    :cond_3b
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_49

    move p1, p0

    goto :goto_6c

    :cond_49
    sget v2, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_59

    sub-float/2addr p1, v2

    sget p0, Lcom/android/launcher/theme/LauncherIconConfig;->sMaxStyleIconSize:F

    sub-float/2addr p0, v2

    div-float/2addr p1, p0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    goto :goto_6c

    :cond_59
    cmpg-float v0, p1, v2

    if-gez v0, :cond_67

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sMinStyleIconSize:F

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    invoke-static {p1, p0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    goto :goto_6c

    :cond_67
    cmpl-float p0, p1, v2

    if-nez p0, :cond_6c

    move p1, v1

    :cond_6c
    :goto_6c
    return p1
.end method

.method public static getForegroundIconScalarInFoldScreen()F
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1a

    const/high16 v0, 0x42600000  # 56.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    :goto_17
    div-float v1, v0, v1

    goto :goto_27

    :cond_1a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_27

    const/high16 v0, 0x42780000  # 62.0f

    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->ICON_SIZE_FOLD_SCREEN:[F

    aget v1, v1, v2

    goto :goto_17

    :cond_27
    :goto_27
    return v1
.end method

.method public static getForegroundSize()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    int-to-float v0, v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getForegroundIconScalarInFoldScreen()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static getForeign()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getForeign()Z

    move-result v0

    return v0
.end method

.method public static getIconRadius()F
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getIconShape()I
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v0

    return v0
.end method

.method public static getIconSize()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    int-to-float v0, v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getBackgroundIconScalarInFoldScreen()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static getIconVisualSize(Landroid/content/res/Resources;F)F
    .registers 11

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    const v1, 0x7f070725

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_22

    const v1, 0x7f070726

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2f

    :cond_22
    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_30

    const v1, 0x7f070727

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2f
    int-to-float v1, v1

    :cond_30
    div-float v2, p1, v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "LauncherIconConfig"

    if-eqz v3, :cond_71

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "getVisualIconSize----iconSize is "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "density is "

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "containerSize is "

    aput-object v6, v3, v5

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "containerFactor is "

    aput-object v6, v3, v5

    const/4 v5, 0x7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_71
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_a8

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/IconThemedUtil;->getThirdIconScale(Landroid/content/res/Resources;)F

    move-result p0

    float-to-double v5, p0

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-lez p1, :cond_a5

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    cmpg-double p1, v5, v7

    if-gtz p1, :cond_a5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ThirdIconScale is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-float/2addr v1, p0

    mul-float/2addr v1, v2

    return v1

    :cond_a5
    mul-float/2addr v1, v2

    return v1

    :cond_a7
    return p1

    :cond_a8
    const/4 v1, 0x0

    :try_start_a9
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1
    :try_end_ad
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a9 .. :try_end_ad} :catch_ae

    goto :goto_c3

    :catch_ae
    move-exception v3

    const-string v5, "getConfiguration e:"

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c3
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :try_start_c9
    invoke-static {v1}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_d1
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_c9 .. :try_end_d1} :catch_d2

    goto :goto_d7

    :catch_d2
    const-string v1, "getConfiguration error !!"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d7
    invoke-static {p0, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVisualIconSize： mIconConfig = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_12f

    invoke-static {v1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result v1

    const-string v3, "getVisualIconSize： realIconSize = "

    invoke-static {v3, v1, v4}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-lez v1, :cond_12f

    invoke-static {v0, v1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    int-to-float p1, p1

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_10e

    invoke-static {p0, p1}, Lcom/android/launcher/theme/LauncherIconConfig;->getFoldScreenIconVisualSize(Landroid/content/res/Resources;F)F

    move-result p0

    goto :goto_110

    :cond_10e
    mul-float p0, p1, v2

    :goto_110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVisualIconSize： visualSizePx = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",visualSizeDp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v0, p0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_12f
    return p1
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;
    .registers 3

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/theme/LauncherIconConfig;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-direct {v1, p0}, Lcom/android/launcher/theme/LauncherIconConfig;-><init>(Landroid/content/res/Resources;)V

    sput-object v1, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    return-object p0
.end method

.method public static getMaxSizeInFoldScreen(Landroid/content/res/Resources;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42780000  # 62.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getRadiusRatio()F
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    return v0
.end method

.method public static getStyleIconSizeAndIconRadius(Landroid/content/res/Resources;F)[F
    .registers 8

    const-string v0, "LauncherIconConfig"

    const v1, 0x7f070720

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    :try_start_a
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v2
    :try_end_e
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_25

    :catch_f
    move-exception v2

    const-string v3, "getConfiguration e:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_25
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :try_start_2b
    invoke-static {v2}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_33
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_39

    :catch_34
    const-string v2, "getConfiguration error !!"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    invoke-static {p0, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v2

    if-ne v2, v0, :cond_5d

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x43160000  # 150.0f

    div-float/2addr p0, v1

    mul-float v1, p0, p1

    :cond_5d
    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v2, 0x0

    aput p1, p0, v2

    aput v1, p0, v0

    return-object p0
.end method

.method public static getTheme()I
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v0

    return v0

    :cond_f
    const-string v0, "LauncherIconConfig"

    const-string v1, "Call update to init first!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getThirdThemeIconConfiguration(Landroid/content/res/Resources;)J
    .registers 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, 0x0

    :goto_1d
    return-wide v0
.end method

.method public static getThirdThemeIconSize(Landroid/content/res/Resources;)F
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    if-nez p0, :cond_5

    return v0

    :cond_5
    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-class v3, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v3, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    iget-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    :cond_21
    const/16 p0, 0x20

    shr-long/2addr v1, p0

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    long-to-int p0, v1

    if-eqz p0, :cond_2c

    int-to-float v0, p0

    :cond_2c
    return v0
.end method

.method public static getUXDesignScale()F
    .registers 3

    const-string v0, "getUXDesignScale: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    const-string v2, "LauncherIconConfig"

    invoke-static {v0, v1, v2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    return v0
.end method

.method public static getWholeIconScale()F
    .registers 3

    const-string v0, "getWholeIconScale: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    const-string v2, "LauncherIconConfig"

    invoke-static {v0, v1, v2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget v0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    return v0
.end method

.method private static initCheck()V
    .registers 2

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call update to init first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAdaptiveIconAnimSupportted()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-boolean v0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-boolean v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mSupportAdaptiveIconAnim:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static isDarkModeIcon()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIcon()Z

    move-result v0

    return v0
.end method

.method private static isDefaultTheme()Z
    .registers 7

    const-string/jumbo v0, "persist.sys.themeflag"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "isDefaultTheme: "

    const-string v2, "LauncherIconConfig"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v0
.end method

.method public static isIconConfigLoaded()Z
    .registers 1

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-object v0, v0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isTargetPath(Landroid/graphics/Path;)Z
    .registers 2

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sStickerPath:Landroid/graphics/Path;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sOctagonPath:Landroid/graphics/Path;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/launcher/theme/LauncherIconConfig;->sLeafPath:Landroid/graphics/Path;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static onOplusThemeChanged()V
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    :cond_f
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "themed_icons"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "config_theme_init"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWholeIconScale(F)V
    .registers 3

    sput p0, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWholeIconScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherIconConfig"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .registers 16

    const-string v0, "LauncherIconConfig"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :try_start_a
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v4
    :try_end_12
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_2d

    :catch_13
    move-exception v4

    const-string v5, "getUxIconConfig e:"

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v4, 0x0

    :goto_2d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v4

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(Landroid/content/Context;)I

    move-result v5

    div-int/lit16 v5, v5, 0xa0

    int-to-float v5, v5

    sput v5, Lcom/android/launcher/theme/LauncherIconConfig;->sCurrentDensity:F

    invoke-static {v3}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v5

    sput-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    if-nez v4, :cond_4d

    const-string/jumbo p0, "update: IconConfig is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    sget-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iput-object v4, v5, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v5

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5f

    move v6, v8

    goto :goto_60

    :cond_5f
    move v6, v7

    :goto_60
    sget-object v9, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v10

    iput-boolean v10, v9, Lcom/android/launcher/theme/LauncherIconConfig;->misLocalSpecial:Z

    if-eqz v6, :cond_77

    const/4 v6, 0x2

    if-eq v5, v6, :cond_70

    const/4 v6, 0x3

    if-ne v5, v6, :cond_77

    :cond_70
    sget-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget-boolean v5, v5, Lcom/android/launcher/theme/LauncherIconConfig;->misLocalSpecial:Z

    if-nez v5, :cond_77

    move v7, v8

    :cond_77
    sget-object v5, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iput-boolean v7, v5, Lcom/android/launcher/theme/LauncherIconConfig;->mSupportAdaptiveIconAnim:Z

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v5, 0x43200000  # 160.0f

    div-float/2addr v3, v5

    const-string v5, ", radiusRatio: "

    const-string v6, ", radius: "

    const-string v8, ", foregIconSize: "

    if-eqz v7, :cond_f7

    invoke-static {v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v9

    invoke-static {v3, v9}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v10

    const/16 v11, 0x4b

    if-le v10, v11, :cond_ab

    invoke-static {v3, v10}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v10

    :cond_ab
    int-to-float v10, v10

    sget v11, Lcom/android/launcher/theme/LauncherIconConfig;->sDefaultStyleIconSize:F

    const/high16 v12, 0x40000000  # 2.0f

    div-float/2addr v11, v12

    div-float v11, v10, v11

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    float-to-int v13, v7

    int-to-float v13, v13

    sget v14, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    float-to-int v13, v9

    iput v13, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    float-to-int v13, v10

    iput v13, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mIconRadius:I

    sget-object v12, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iput v11, v12, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    div-float v12, v7, v3

    sget v13, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    div-float/2addr v12, v13

    sput v12, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    mul-float v12, v13, v3

    div-float v12, v7, v12

    mul-float/2addr v13, v3

    div-float v13, v9, v13

    mul-float/2addr v13, v12

    sput v13, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    const-string/jumbo v12, "styleIconSize: "

    invoke-static {v12, v7, v8, v9, v6}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", sUXDesignScale: "

    invoke-static {v7, v10, v5, v11, v9}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    sget v9, Lcom/android/launcher/theme/LauncherIconConfig;->sUXDesignScale:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", sBackgroundScale: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    invoke-static {v7, v9, v0}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_f7
    sget v7, Lcom/android/launcher/theme/LauncherIconConfig;->sBackgroundScale:F

    invoke-static {v7}, Lcom/android/launcher3/graphics/IconShape;->decideCurrentShape(F)V

    invoke-static {v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v7

    int-to-float v7, v7

    sget-object v9, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    div-float v3, v7, v3

    sget v10, Lcom/android/launcher/theme/LauncherIconConfig;->sIconSize:F

    div-float/2addr v3, v10

    iput v3, v9, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "designIconSize: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", mScalerForEditedIcon: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v7, v7, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    invoke-static {v3, v7, v0}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDefaultTheme()Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    :try_start_12d
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-ne v3, p0, :cond_141

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->onOplusThemeChanged()V
    :try_end_13a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_12d .. :try_end_13a} :catch_13b

    goto :goto_141

    :catch_13b
    const-string/jumbo p0, "update: UnSupportedApiVersionException "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_141
    :goto_141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1a8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIconConfig: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isDefaultTheme: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", backgroundIconSize: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mIconRadius:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/theme/LauncherIconConfig;->sInstance:Lcom/android/launcher/theme/LauncherIconConfig;

    iget v3, v3, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", shape: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cost: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v1

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a8
    return-void
.end method

.method public static updateContainerScaler(Landroid/content/res/Resources;I)V
    .registers 5

    const v0, 0x7f070725

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_19

    const v0, 0x7f070726

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_17
    int-to-float v0, p0

    goto :goto_27

    :cond_19
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_27

    const v0, 0x7f070727

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_17

    :cond_27
    :goto_27
    int-to-float p0, p1

    div-float/2addr p0, v0

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_35

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->setWholeIconScale(F)V

    goto :goto_38

    :cond_35
    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->setWholeIconScale(F)V

    :goto_38
    return-void
.end method


# virtual methods
.method public getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;
    .registers 1

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->initCheck()V

    iget-object p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    return-object p0
.end method

.method public getScaleForEditedIcon()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mScalerForEditedIcon:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "mBackgroundSize: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mBackgroundSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForegroundSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mForegroundSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIconRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRadiusRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mRadiusRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportAdaptiveIconAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mSupportAdaptiveIconAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sWholeIconScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher/theme/LauncherIconConfig;->sWholeIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sIsDefaultTheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIconConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/theme/LauncherIconConfig;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
