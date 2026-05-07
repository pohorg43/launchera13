.class public Lcom/android/common/util/FontManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUBBLETEXT_FONT_HIDE_VALUE:Ljava/lang/String; = "0"

.field private static final BUBBLETEXT_FONT_SHOW_VALUE:Ljava/lang/String; = "1"

.field private static final FLOAT_1:F = 1.0f

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/common/util/FontManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_SIMPLE_MODE_DENSITY:Ljava/lang/String; = "last_simple_mode_density"

.field private static final LAST_SIMPLE_MODE_FONT_SCALE:Ljava/lang/String; = "last_simple_mode_font_scale"

.field private static final LAST_STANDARD_OR_DRAWER_MODE_DENSITY:Ljava/lang/String; = "last_standard_or_drawer_mode_density"

.field private static final LAST_STANDARD_OR_DRAWER_MODE_FONT_SCALE:Ljava/lang/String; = "last_standard_or_drawer_mode_font_scale"

.field private static final REFERENCE_DENSITY:F = 3.0f

.field private static final SETTINGS_FONTS_SIZE_ARRAY:Ljava/lang/String; = "entryvalues_font_size"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SIMPLE_DEFAULT_FONT_POS:I = 0x5

.field private static final SIMPLE_DEFAULT_FONT_SCALE:F = 1.35f

.field private static final STANDARD_DEFAULT_FONT_SIZE:F = 12.0f

.field private static final STANDARD_OR_DRAWER_DEFAULT_FONT_POS:I = 0x2

.field private static final STANDARD_OR_DRAWER_DEFAULT_FONT_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FontManager"

.field private static final sTypefaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdaptedFontSizes:[I

.field private mContext:Landroid/content/Context;

.field private mDensities:[I

.field private final mDensity:F

.field private mDisplayDensityUtils:Lcom/android/common/util/DisplayDensityUtils;

.field public mFontScales:[F

.field private mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

.field private mRealTextScalePos:I

.field private mSystemFontScaleSizes:[F

.field public mTextScalePos:I

.field public mTextSizeScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/common/util/p;->b:Lcom/android/common/util/p;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/common/util/FontManager;->sTypefaceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/util/FontManager;->mTextScalePos:I

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    iput v0, p0, Lcom/android/common/util/FontManager;->mRealTextScalePos:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/common/util/FontManager;->mDensity:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->getSettingFontScaleSize()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->initAndCheckAdaptedFontSizes()V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_46

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_46

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->initDensity()V

    :cond_46
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/common/util/FontManager;
    .registers 2

    new-instance v0, Lcom/android/common/util/FontManager;

    invoke-direct {v0, p0}, Lcom/android/common/util/FontManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private calculateMaxDensity()I
    .registers 3

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mDensities:[I

    if-eqz p0, :cond_18

    array-length v1, p0

    if-lez v1, :cond_18

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    :cond_18
    return v0
.end method

.method private calculateMaxFontscale()F
    .registers 2

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    if-eqz p0, :cond_d

    array-length v0, p0

    if-lez v0, :cond_d

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    goto :goto_10

    :cond_d
    const p0, 0x3faccccd  # 1.35f

    :goto_10
    return p0
.end method

.method private getCurrentFontScale()F
    .registers 5

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    const/high16 v0, 0x3f800000  # 1.0f

    const-string v1, "FontManager"

    if-nez p0, :cond_e

    const-string p0, "getCurrentFontScale and context is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e
    const/4 p0, 0x0

    :try_start_f
    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_13
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_29

    :catch_14
    move-exception v2

    const-string v3, "getCurrentFontScale, "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    if-eqz p0, :cond_2e

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    return p0

    :cond_2e
    const-string p0, "getCurrentFontScale, configuration is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getSavedFontScale(Ljava/lang/String;F)F
    .registers 3

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/common/util/LauncherSharedPrefs;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private getSettingFontScaleSize()[F
    .registers 8

    const-string v0, "com.android.settings"

    const-string v1, "FontManager"

    const/4 v2, 0x0

    const v3, 0x7f03001e

    :try_start_8
    iget-object v4, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_24

    const-string v5, "entryvalues_font_size"

    const-string v6, "array"

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_26

    goto :goto_45

    :cond_24
    move-object v0, v2

    goto :goto_45

    :catch_26
    move-exception v0

    const-string v4, "getSettingFontScaleSize exception, message:"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_45
    iget-object v4, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_61

    const-string v0, "error happen getSettingFontScaleSize indices = null."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_61
    if-eqz v4, :cond_7e

    array-length v5, v0

    array-length v4, v4

    if-eq v5, v4, :cond_7e

    const-string v4, "error happen getSettingFontScaleSize fonts:"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_7e
    :goto_7e
    const-string p0, "getSettingFontScaleSize fonts:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a8

    array-length p0, v0

    if-lez p0, :cond_a8

    array-length p0, v0

    new-array v2, p0, [F

    const/4 p0, 0x0

    :goto_94
    array-length v3, v0

    if-eq p0, v3, :cond_a8

    :try_start_97
    aget-object v3, v0, p0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, p0
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_a5

    :catch_a0
    const-string v3, " parse font size float exception"

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a5
    add-int/lit8 p0, p0, 0x1

    goto :goto_94

    :cond_a8
    return-object v2
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    sget-object v0, Lcom/android/common/util/FontManager;->sTypefaceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_3d

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTypeface. e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "FontManager"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    sget-object v0, Lcom/android/common/util/FontManager;->sTypefaceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method private initAndCheckAdaptedFontSizes()V
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    const v2, 0x7f030006

    const v3, 0x7f030005

    if-eq v0, v1, :cond_35

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v1, :cond_22

    iget-object v4, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    :cond_22
    iget-object v3, p0, Lcom/android/common/util/FontManager;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    if-ne v3, v1, :cond_32

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    :cond_32
    iput-object v0, p0, Lcom/android/common/util/FontManager;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    goto :goto_85

    :cond_35
    iget-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    if-eqz v1, :cond_3c

    array-length v1, v1

    if-gtz v1, :cond_85

    :cond_3c
    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v1, :cond_4d

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    goto :goto_85

    :cond_4d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    goto :goto_85

    :cond_63
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    goto :goto_85

    :cond_79
    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    :cond_85
    :goto_85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAndCheckAdaptedFontSizes, current:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FontManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initDensity()V
    .registers 5

    new-instance v0, Lcom/android/common/util/DisplayDensityUtils;

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/util/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/util/FontManager;->mDisplayDensityUtils:Lcom/android/common/util/DisplayDensityUtils;

    invoke-virtual {v0}, Lcom/android/common/util/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_24

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    iput-object v2, p0, Lcom/android/common/util/FontManager;->mDensities:[I

    goto :goto_2c

    :cond_24
    iget-object v1, p0, Lcom/android/common/util/FontManager;->mDisplayDensityUtils:Lcom/android/common/util/DisplayDensityUtils;

    invoke-virtual {v1}, Lcom/android/common/util/DisplayDensityUtils;->getValues()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/util/FontManager;->mDensities:[I

    :goto_2c
    const-string v1, "initDensity, mDensities:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mDensities:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", initialIndex:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FontManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAppNameSwitchEnableFromUx()Z
    .registers 3

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->getUxSettings(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAppNameSwitchEnableFromUx, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_20

    return v0

    :cond_20
    iget-object p0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method private isLastFontScaleInCurrentSettingList(F)Z
    .registers 6

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    array-length v3, v2

    if-ge v0, v3, :cond_19

    aget v2, v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_16

    const/4 v1, 0x1

    goto :goto_19

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    :goto_19
    return v1
.end method

.method private resetLastDensity(Ljava/lang/String;I)V
    .registers 4

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "resetLastDensity, sp:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", density:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FontManager"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/common/util/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    return-void
.end method

.method private restoreLastCurrentSystemFontAndDensity(Z)V
    .registers 3

    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->calculateMaxFontscale()F

    move-result p1

    const-string v0, "last_simple_mode_font_scale"

    invoke-direct {p0, v0, p1}, Lcom/android/common/util/FontManager;->restoreLastFontScale(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->calculateMaxDensity()I

    move-result p1

    const-string v0, "last_simple_mode_density"

    invoke-direct {p0, v0, p1}, Lcom/android/common/util/FontManager;->resetLastDensity(Ljava/lang/String;I)V

    goto :goto_2d

    :cond_15
    const/high16 p1, 0x3f800000  # 1.0f

    const-string v0, "last_standard_or_drawer_mode_font_scale"

    invoke-direct {p0, v0, p1}, Lcom/android/common/util/FontManager;->restoreLastFontScale(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    const-string v0, "last_standard_or_drawer_mode_density"

    invoke-direct {p0, v0, p1}, Lcom/android/common/util/FontManager;->resetLastDensity(Ljava/lang/String;I)V

    :goto_2d
    return-void
.end method

.method private restoreLastFontScale(Ljava/lang/String;F)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/common/util/FontManager;->getSavedFontScale(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/util/FontManager;->isLastFontScaleInCurrentSettingList(F)Z

    move-result v1

    const-string v2, "FontManager"

    if-nez v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreLastFontScale, not in list, default:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_22
    move p2, v0

    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreLastFontScale, last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/common/util/FontManager;->updateSystemTextScale(F)V

    return-void
.end method

.method private saveCurrentModeDensity(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCurrentModeDensity, sp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", density:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private saveCurrentModeFontScale(Ljava/lang/String;)V
    .registers 6

    const-string v0, "FontManager"

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    :try_start_6
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentModeFontScale, fontscale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", sp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_53

    :cond_33
    const-string/jumbo p0, "saveCurrentModeFontScale, configuration is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_39} :catch_3a

    goto :goto_53

    :catch_3a
    move-exception p0

    const-string/jumbo p1, "updateSystemTextScale, exception:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_53
    return-void
.end method

.method private saveCurrentSystemFontAndDensity(Z)V
    .registers 2

    if-eqz p1, :cond_c

    const-string p1, "last_standard_or_drawer_mode_font_scale"

    invoke-direct {p0, p1}, Lcom/android/common/util/FontManager;->saveCurrentModeFontScale(Ljava/lang/String;)V

    const-string p1, "last_standard_or_drawer_mode_density"

    invoke-direct {p0, p1}, Lcom/android/common/util/FontManager;->saveCurrentModeDensity(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static setSuitableFontSize(Landroid/widget/TextView;Landroid/content/Context;II)V
    .registers 5

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    if-lez p2, :cond_25

    if-lez p3, :cond_25

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0, p3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    float-to-int p1, p1

    const/4 p2, 0x0

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_25
    return-void
.end method

.method private systemFontScaleToArrayIndex(F[F)I
    .registers 7

    const/4 p0, 0x0

    aget v0, p2, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_1c

    aget v2, p2, v1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gtz v3, :cond_19

    move p0, v1

    move v0, v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return p0
.end method

.method private updateSystemTextScale(F)V
    .registers 4

    const-string p0, "FontManager"

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_6
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_27

    iput p1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSystemTextScale, scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_27
    const-string/jumbo p1, "updateSystemTextScale, configuration is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_2e

    goto :goto_47

    :catch_2e
    move-exception p1

    const-string/jumbo v0, "updateSystemTextScale, exception:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_47
    return-void
.end method


# virtual methods
.method public applyLauncherTextSize(Lcom/android/launcher/Launcher;F)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {v0, v1}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput p2, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-virtual {p0}, Lcom/android/common/util/FontManager;->getAdaptedTextSizePx()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    iput p2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeScale:F

    int-to-float p0, p0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_29

    move v2, v1

    goto :goto_2a

    :cond_29
    move v2, p2

    :goto_2a
    mul-float/2addr p0, v2

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    invoke-virtual {p1}, Lcom/android/launcher3/OplusDeviceProfile;->allAppsHasDifferentNumColumns()Z

    move-result p0

    if-eqz p0, :cond_3f

    iget p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->mAllAppsIconTextSizeBasePx:F

    if-nez v0, :cond_3b

    move p2, v1

    :cond_3b
    mul-float/2addr p0, p2

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    goto :goto_44

    :cond_3f
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p0, p0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    :goto_44
    return-void
.end method

.method public changSystemFontAndDensity(Z)V
    .registers 4

    const-string/jumbo v0, "resetSystemFontScale, mFonts:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changeToSimple:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/common/util/FontManager;->saveCurrentSystemFontAndDensity(Z)V

    invoke-direct {p0, p1}, Lcom/android/common/util/FontManager;->restoreLastCurrentSystemFontAndDensity(Z)V

    return-void
.end method

.method public getAdaptedTextSizePx()F
    .registers 4

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->getCurrentFontScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    invoke-direct {p0, v0, v1}, Lcom/android/common/util/FontManager;->systemFontScaleToArrayIndex(F[F)I

    move-result v0

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->initAndCheckAdaptedFontSizes()V

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    if-eqz v1, :cond_1e

    array-length v2, v1

    if-le v2, v0, :cond_1e

    aget v0, v1, v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/common/util/FontManager;->mDensity:F

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr p0, v1

    mul-float/2addr p0, v0

    goto :goto_20

    :cond_1e
    const/high16 p0, 0x41400000  # 12.0f

    :goto_20
    return p0
.end method

.method public getSystemFontIndex(F)I
    .registers 3

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    invoke-direct {p0, p1, v0}, Lcom/android/common/util/FontManager;->systemFontScaleToArrayIndex(F[F)I

    move-result p0

    return p0
.end method

.method public getTextScalePosForFolderTextHeight()I
    .registers 3

    iget v0, p0, Lcom/android/common/util/FontManager;->mTextScalePos:I

    if-nez v0, :cond_7

    iget p0, p0, Lcom/android/common/util/FontManager;->mRealTextScalePos:I

    return p0

    :cond_7
    iget v1, p0, Lcom/android/common/util/FontManager;->mRealTextScalePos:I

    if-eq v1, v0, :cond_d

    iput v0, p0, Lcom/android/common/util/FontManager;->mRealTextScalePos:I

    :cond_d
    return v0
.end method

.method public initFoldScreenFontSize()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    goto :goto_3b

    :cond_16
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    goto :goto_3b

    :cond_2c
    iget-object v0, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    :goto_3b
    iget-object v0, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    if-eqz v0, :cond_57

    const-string v0, "initFoldScreenFontSize mAdaptedFontSizes:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FontManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method public setFontSizeToSettings(IZ)V
    .registers 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/android/common/util/FontManager;->isAppNameSwitchEnableFromUx()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_23

    :cond_13
    const-string v0, "1,"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_23
    :goto_23
    if-eqz p2, :cond_28

    const-string p1, "0,4"

    goto :goto_2a

    :cond_28
    const-string p1, "0,1"

    :goto_2a
    const-string/jumbo v0, "set font size to settings value is = "

    const-string v1, "FontManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "customize_uxicon_font_simple"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4b

    :cond_40
    iget-object p2, p0, Lcom/android/common/util/FontManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "customize_uxicon_font"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_4b
    invoke-direct {p0}, Lcom/android/common/util/FontManager;->isAppNameSwitchEnableFromUx()Z

    move-result p1

    if-nez p1, :cond_5a

    const-string/jumbo p1, "updateLauncherTextScale, app name is hidden, scale force set to 0"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    :cond_5a
    return-void
.end method

.method public updateLauncherTextScale(Landroid/content/Context;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "updateLauncherTextScale, mFontScales  = "

    const-string v4, ", mAdaptedFontSizes = "

    const-string v5, "FontManager"

    :try_start_b
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getCurrentUser()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    if-eq v0, v6, :cond_16

    return-void

    :cond_16
    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v0
    :try_end_1a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception v0

    const-string/jumbo v6, "updateLauncherTextScale, get SystemFontScale, "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_32
    move-object v6, v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v8, ", isInSimpleMode = "

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_64

    new-array v0, v10, [Ljava/lang/Object;

    const-string/jumbo v14, "updateLauncherTextScale, getCurLauncherMode = "

    aput-object v14, v0, v12

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v14

    aput-object v14, v0, v13

    aput-object v8, v0, v11

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v0, v9

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_64
    if-eqz v7, :cond_6b

    const-string v0, "last_launcher_simple_system_font_scale"

    const-string v9, "launcher_simple_mode_bubbletext_font_size_key"

    goto :goto_6f

    :cond_6b
    const-string v0, "last_launcher_system_font_scale"

    const-string v9, "launcher_bubbletext_font_size"

    :goto_6f
    move-object v11, v9

    move-object v9, v0

    iget-object v0, v1, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    if-eqz v0, :cond_7b

    array-length v14, v0

    if-le v14, v13, :cond_7b

    aget v13, v0, v13

    goto :goto_7c

    :cond_7b
    move v13, v12

    :goto_7c
    if-nez v13, :cond_85

    const-string/jumbo v0, "updateLauncherTextScale, standard = 0."

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_85
    iget-object v14, v1, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    if-nez v14, :cond_90

    const-string/jumbo v0, "updateLauncherTextScale, mSystemFontScaleSizes = null."

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_90
    iget-object v15, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    if-nez v15, :cond_99

    array-length v14, v14

    new-array v14, v14, [F

    iput-object v14, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    :cond_99
    const-string v14, ", standard = "

    if-eqz v0, :cond_191

    :goto_9d
    iget-object v0, v1, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    array-length v15, v0

    if-ge v12, v15, :cond_159

    :try_start_a2
    iget-object v10, v1, Lcom/android/common/util/FontManager;->mFontScales:[F
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a4} :catch_11e

    :try_start_a4
    array-length v15, v10
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a5} :catch_119

    move-object/from16 v16, v11

    add-int/lit8 v11, v12, 0x1

    if-ge v15, v11, :cond_cc

    const/4 v11, 0x4

    :try_start_ac
    new-array v0, v11, [Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ae} :catch_c9

    const/4 v11, 0x0

    :try_start_af
    aput-object v3, v0, v11

    invoke-static {v10}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    const/4 v10, 0x2

    aput-object v4, v0, v10

    iget-object v10, v1, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v0, v11

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15b

    :catch_c9
    move-exception v0

    move v10, v11

    goto :goto_121

    :cond_cc
    aget v0, v0, v12

    int-to-float v0, v0

    int-to-float v11, v13

    div-float/2addr v0, v11

    aput v0, v10, v12

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_152

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v10, "updateLauncherTextScale, mFontScales[i]  = "

    const/4 v11, 0x0

    aput-object v10, v0, v11

    iget-object v10, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    aget v10, v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    const/4 v10, 0x2

    aput-object v14, v0, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v0, v11
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_f8} :catch_117

    const/4 v10, 0x4

    :try_start_f9
    aput-object v4, v0, v10
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fb} :catch_115

    :try_start_fb
    iget-object v10, v1, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v0, v11

    const-string v10, ", i = "

    const/4 v11, 0x6

    aput-object v10, v0, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v0, v11

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_114} :catch_117

    goto :goto_152

    :catch_115
    move-exception v0

    goto :goto_121

    :catch_117
    move-exception v0

    goto :goto_11c

    :catch_119
    move-exception v0

    move-object/from16 v16, v11

    :goto_11c
    const/4 v10, 0x4

    goto :goto_121

    :catch_11e
    move-exception v0

    move-object/from16 v16, v11

    :goto_121
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    iget-object v11, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    invoke-static {v11}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    aput-object v11, v10, v15

    const/4 v11, 0x2

    aput-object v4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", e = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v10, v11

    invoke-static {v5, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_152
    :goto_152
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x4

    move-object/from16 v11, v16

    goto/16 :goto_9d

    :cond_159
    move-object/from16 v16, v11

    :goto_15b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_193

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "updateLauncherTextScale, updateLauArray.of() = "

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, ",  = "

    const/4 v4, 0x2

    aput-object v3, v0, v4

    iget-object v4, v1, Lcom/android/common/util/FontManager;->mAdaptedFontSizes:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    aput-object v4, v0, v10

    const/4 v4, 0x4

    aput-object v3, v0, v4

    iget-object v3, v1, Lcom/android/common/util/FontManager;->mSystemFontScaleSizes:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_193

    :cond_191
    move-object/from16 v16, v11

    :cond_193
    :goto_193
    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v6, :cond_19a

    iget v0, v6, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_19b

    :cond_19a
    move v0, v3

    :goto_19b
    const/high16 v4, -0x40800000  # -1.0f

    invoke-static {v2, v9, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    const-string v10, ", fontScale = "

    if-eqz v6, :cond_1db

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v11, "updateLauncherTextScale, lastSystemFontScale = "

    const/4 v12, 0x0

    aput-object v11, v6, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v6, v12

    const/4 v11, 0x2

    aput-object v10, v6, v11

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v6, v12

    const/4 v11, 0x4

    aput-object v14, v6, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v6, v12

    const/4 v11, 0x6

    aput-object v8, v6, v11

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x7

    aput-object v8, v6, v11

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1db
    invoke-virtual {v1, v0}, Lcom/android/common/util/FontManager;->getSystemFontIndex(F)I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_225

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "updateLauncherTextScale, nowSystemFontIndex = "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string v12, ", isChangingMode = "

    const/4 v13, 0x2

    aput-object v12, v11, v13

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher/mode/LauncherModeManager;->isChangingMode()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string v12, ", lastSystemFontScale = "

    const/4 v13, 0x4

    aput-object v12, v11, v13

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const/4 v12, 0x6

    aput-object v10, v11, v12

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v12, 0x7

    aput-object v10, v11, v12

    invoke-static {v5, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_225
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/mode/LauncherModeManager;->isChangingMode()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_25b

    cmpg-float v10, v4, v11

    if-lez v10, :cond_238

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_258

    :cond_238
    invoke-direct/range {p0 .. p0}, Lcom/android/common/util/FontManager;->isAppNameSwitchEnableFromUx()Z

    move-result v4

    if-eqz v4, :cond_258

    iput v3, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-static {v2, v9, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v16

    invoke-static {v2, v4, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput v8, v1, Lcom/android/common/util/FontManager;->mTextScalePos:I

    invoke-virtual {v1, v8, v7}, Lcom/android/common/util/FontManager;->setFontSizeToSettings(IZ)V

    const-string/jumbo v0, "updateLauncherTextScale, font reset."

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_258
    move-object/from16 v4, v16

    goto :goto_262

    :cond_25b
    move-object/from16 v4, v16

    if-eqz v7, :cond_262

    invoke-static {v2, v9, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    :cond_262
    :goto_262
    const-string v10, ""

    invoke-static {v2, v4, v10}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateLauncherTextScale, fontTextIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_335

    const-string/jumbo v12, "null"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28e

    goto/16 :goto_335

    :cond_28e
    :try_start_28e
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2b2

    iget-object v2, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    array-length v4, v2

    if-gt v0, v4, :cond_2b2

    if-ltz v6, :cond_2b2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-le v6, v4, :cond_2a1

    goto :goto_2b2

    :cond_2a1
    iput v0, v1, Lcom/android/common/util/FontManager;->mTextScalePos:I

    if-nez v0, :cond_2a8

    iput v11, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    goto :goto_2d6

    :cond_2a8
    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    aget v2, v2, v6

    div-float/2addr v4, v2

    iput v4, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    goto :goto_2d6

    :cond_2b2
    :goto_2b2
    iput v8, v1, Lcom/android/common/util/FontManager;->mTextScalePos:I

    iput v3, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLauncherTextScale, error happen oldFontPos = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mFontScales = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_31f

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "updateLauncherTextScale, mTextSizeScale = "

    const/4 v9, 0x0

    aput-object v4, v2, v9

    iget v4, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const-string v4, ", mFontScales[nowSystemFontIndex] = "

    const/4 v9, 0x2

    aput-object v4, v2, v9

    iget-object v4, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v2, v6

    const-string v4, ", oldFontPos = "

    const/4 v6, 0x4

    aput-object v4, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v2, v6

    const-string/jumbo v4, "， isOtaVersionUpdate = "

    const/4 v6, 0x6

    aput-object v4, v2, v6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v2, v6

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31f
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v2

    if-eqz v2, :cond_34a

    invoke-virtual {v1, v0, v7}, Lcom/android/common/util/FontManager;->setFontSizeToSettings(IZ)V
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_28e .. :try_end_328} :catch_329

    goto :goto_34a

    :catch_329
    move-exception v0

    iput v8, v1, Lcom/android/common/util/FontManager;->mTextScalePos:I

    iput v3, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const-string/jumbo v2, "updateLauncherTextScale, error happen e = "

    invoke-static {v2, v0, v5}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_34a

    :cond_335
    :goto_335
    const/4 v6, 0x5

    const/4 v8, 0x2

    if-eqz v7, :cond_33b

    move v15, v6

    goto :goto_33c

    :cond_33b
    move v15, v8

    :goto_33c
    iput v3, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-static {v2, v9, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput v15, v1, Lcom/android/common/util/FontManager;->mTextScalePos:I

    :cond_34a
    :goto_34a
    invoke-direct/range {p0 .. p0}, Lcom/android/common/util/FontManager;->isAppNameSwitchEnableFromUx()Z

    move-result v0

    if-nez v0, :cond_358

    const-string/jumbo v0, "updateLauncherTextScale, app name is hidden, scale force set to 0"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v11, v1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    :cond_358
    return-void
.end method

.method public updateWorkspaceTextSize(Lcom/android/launcher/Launcher;I)F
    .registers 10

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "launcher_simple_mode_bubbletext_font_size_key"

    goto :goto_f

    :cond_d
    const-string v0, "launcher_bubbletext_font_size"

    :goto_f
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v1}, Lcom/android/common/util/FontManager;->getSystemFontIndex(F)I

    move-result v2

    const-string v3, "FontManager"

    if-ltz p2, :cond_80

    iget-object v4, p0, Lcom/android/common/util/FontManager;->mFontScales:[F

    array-length v5, v4

    if-gt p2, v5, :cond_80

    if-ltz v2, :cond_80

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_2e

    goto :goto_80

    :cond_2e
    const/high16 v5, 0x3f800000  # 1.0f

    if-nez p2, :cond_34

    const/4 v5, 0x0

    goto :goto_44

    :cond_34
    add-int/lit8 v6, p2, -0x1

    :try_start_36
    aget v6, v4, v6

    aget v4, v4, v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_3d

    div-float v5, v6, v4

    goto :goto_44

    :catch_3d
    move-exception v4

    const-string/jumbo v6, "updateWorkspaceTextSize, e = "

    invoke-static {v6, v4, v3}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_44
    iput p2, p0, Lcom/android/common/util/FontManager;->mTextScalePos:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fontScale = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontSizePos = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontScaleLauncher = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontManager.mFontScales[nowSystemFontIndex] = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/common/util/FontManager;->mFontScales:[F

    aget v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    return v5

    :cond_80
    :goto_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateWorkspaceTextSize, fontSizePos = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", nowSystemFontIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x40800000  # -1.0f

    return p0
.end method
