.class public Lcom/android/common/util/DisplayDensityUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DESIGN_FHD_DISPLAY:I = 0x1e0

.field private static final DESIGN_FHD_PLUS_DISPLAY:I = 0x230

.field private static final DESIGN_QHD_DISPLAY:I = 0x280

.field private static final MAX_SCALE:F = 1.5f

.field private static final MIN_DIMENSION_DP:I = 0x140

.field private static final MIN_SCALE:F = 0.85f

.field private static final MIN_SCALE_INTERVAL:F = 0.09f

.field private static final RESOLUTION_DEFAULT_ONE_POINT_FIVE_K_WIDTH:I = 0x4d8

.field private static final RESOLUTION_DEFAULT_TWO_K_WIDTH:I = 0x5a0

.field private static final RESOLUTION_DEFAULT_WIDTH:I = 0x438

.field private static final SYSTEM_DISPLAY_VALUE:Ljava/lang/String; = "persist.sys.display.density"

.field private static final SYSTEM_FHD_DISPLAY:I = 0x1a4

.field private static final SYSTEM_FHD_PLUS_DISPLAY:I = 0x230

.field private static final SYSTEM_QHD_DISPLAY:I = 0x280

.field private static final TAG:Ljava/lang/String; = "DisplayDensityUtils"

.field private static sCurrentFixedRotationScreenWidth:I

.field private static sDefaultDensityDpi:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v1

    const/4 v2, -0x1

    if-gtz v1, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/common/util/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/common/util/DisplayDensityUtils;->mValues:[I

    iput v0, p0, Lcom/android/common/util/DisplayDensityUtils;->mDefaultDensity:I

    iput v2, p0, Lcom/android/common/util/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    :cond_15
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget p1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit16 v3, v3, 0xa0

    div-int/lit16 v3, v3, 0x140

    const/high16 v4, 0x3fc00000  # 1.5f

    int-to-float v3, v3

    int-to-float v5, v1

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v3, v4

    const v6, 0x3db851ec  # 0.09f

    div-float v6, v3, v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    float-to-int v6, v6

    const v8, 0x3fd55553

    const/high16 v9, 0x40400000  # 3.0f

    invoke-static {v8, v7, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v6

    new-array v9, v8, [Ljava/lang/String;

    new-array v10, v8, [I

    if-lez v7, :cond_83

    const v11, 0x3e199998  # 0.14999998f

    int-to-float v12, v7

    div-float/2addr v11, v12

    add-int/lit8 v7, v7, -0x1

    move v12, v0

    :goto_6d
    if-ltz v7, :cond_84

    add-int/lit8 v13, v7, 0x1

    int-to-float v13, v13

    mul-float/2addr v13, v11

    sub-float v13, v4, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    and-int/lit8 v13, v13, -0x2

    if-ne p1, v13, :cond_7c

    move v2, v12

    :cond_7c
    aput v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_6d

    :cond_83
    move v12, v0

    :cond_84
    if-ne p1, v1, :cond_87

    move v2, v12

    :cond_87
    aput v1, v10, v12

    add-int/lit8 v12, v12, 0x1

    if-lez v6, :cond_a2

    int-to-float v7, v6

    div-float/2addr v3, v7

    :goto_8f
    if-ge v0, v6, :cond_a2

    add-int/lit8 v0, v0, 0x1

    int-to-float v7, v0

    mul-float/2addr v7, v3

    add-float/2addr v7, v4

    mul-float/2addr v7, v5

    float-to-int v7, v7

    and-int/lit8 v7, v7, -0x2

    if-ne p1, v7, :cond_9d

    move v2, v12

    :cond_9d
    aput v7, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    :cond_a2
    if-ltz v2, :cond_a5

    goto :goto_ae

    :cond_a5
    add-int/lit8 v8, v8, 0x1

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    aput p1, v10, v12

    move v2, v12

    :goto_ae
    iput v1, p0, Lcom/android/common/util/DisplayDensityUtils;->mDefaultDensity:I

    iput v2, p0, Lcom/android/common/util/DisplayDensityUtils;->mCurrentIndex:I

    iput-object v9, p0, Lcom/android/common/util/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    iput-object v10, p0, Lcom/android/common/util/DisplayDensityUtils;->mValues:[I

    return-void
.end method

.method public static synthetic a(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/DisplayDensityUtils;->lambda$setForcedDisplayDensity$1(III)V

    return-void
.end method

.method public static synthetic b(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DisplayDensityUtils;->lambda$clearForcedDisplayDensity$0(II)V

    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/common/util/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/common/util/f;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getDefDisplayContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "DisplayDensityUtils"

    if-eqz v3, :cond_5c

    const-string v3, "getDefaultDisplayContext="

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",oriDensity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",sDefaultDensityDpi="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/common/util/DisplayDensityUtils;->sDefaultDensityDpi:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",applicationInvertedScale="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    sget v2, Lcom/android/common/util/DisplayDensityUtils;->sDefaultDensityDpi:I

    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_92

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/android/common/util/DisplayDensityUtils;->sDefaultDensityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000  # 160.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDisplayContext , newDensityDpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/common/util/DisplayDensityUtils;->sDefaultDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oriDensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v1, v0, v4}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_92
    return-object p0
.end method

.method public static getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultDisplayDensity(I)I
    .registers 3

    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    return p0

    :catch_c
    :cond_c
    return v0
.end method

.method public static getDefaultDisplayDensity(Landroid/content/Context;)I
    .registers 10

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportResolutionSwitch:Z

    const/16 v1, 0x1e0

    const/4 v2, 0x1

    const/16 v3, 0x230

    const/16 v4, 0x280

    const/4 v5, 0x0

    const-string v6, "DisplayDensityUtils"

    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    :try_start_f
    const-string/jumbo v7, "persist.sys.display.density"

    invoke-static {v7, v0}, Lcom/oplus/compat/os/SystemPropertiesNative;->getInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_16
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    move-exception v7

    const-string v8, "get SYSTEM_DISPLAY_VALUE error."

    invoke-static {v6, v8, v7}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v5

    :goto_1e
    if-ne v7, v4, :cond_21

    return v4

    :cond_21
    if-ne v7, v3, :cond_24

    return v3

    :cond_24
    const/16 v8, 0x1a4

    if-ne v7, v8, :cond_29

    return v1

    :cond_29
    if-ne v7, v0, :cond_2d

    move v0, v2

    goto :goto_2f

    :cond_2d
    return v7

    :cond_2e
    move v0, v5

    :goto_2f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v8, Lcom/android/common/util/DisplayDensityUtils;->sCurrentFixedRotationScreenWidth:I

    if-eq v8, v7, :cond_64

    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_64

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    if-eqz v8, :cond_64

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v8}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/android/common/util/DisplayDensityUtils;->sCurrentFixedRotationScreenWidth:I

    :cond_64
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, p0, v5

    sget v7, Lcom/android/common/util/DisplayDensityUtils;->sCurrentFixedRotationScreenWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, p0, v2

    const-string v2, "configurationScreenWidth=%d,sCurrentFixedRotationScreenWidth=%d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/android/common/util/DisplayDensityUtils;->sCurrentFixedRotationScreenWidth:I

    const/16 v2, 0x5a0

    if-ne p0, v2, :cond_8a

    const-string p0, "getDefaultDisplayContext , screenWidth: 2k."

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_8a
    const/16 v2, 0x4d8

    if-ne p0, v2, :cond_94

    const-string p0, "getDefaultDisplayContext , screenWidth: 1.5k."

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_94
    if-eqz v0, :cond_a0

    const/16 v0, 0x438

    if-ne p0, v0, :cond_a0

    const-string p0, "SystemPropertiesDisplay is -1"

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a0
    invoke-static {v5}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result p0

    const/16 v0, 0xa0

    if-ge p0, v0, :cond_aa

    sget p0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    :cond_aa
    const-string v0, "getDefaultDisplayContext , defaultConfig: "

    invoke-static {v0, p0, v6}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to clear forced display density setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method private static synthetic lambda$setForcedDisplayDensity$1(III)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to save forced display density setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/common/util/g;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/common/util/g;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateDefaultDisplayContext(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 1

    iget p0, p0, Lcom/android/common/util/DisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity()I
    .registers 1

    iget p0, p0, Lcom/android/common/util/DisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public getEntries()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getValues()[I
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/DisplayDensityUtils;->mValues:[I

    return-object p0
.end method
