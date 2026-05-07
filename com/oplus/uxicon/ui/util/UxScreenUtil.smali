.class public Lcom/oplus/uxicon/ui/util/UxScreenUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FEATURE_FOLD:Ljava/lang/String; = "oplus.hardware.type.fold"

.field private static final FEATURE_FOLD_REMAP_DISPLAY_DISABLED:Ljava/lang/String; = "oplus.software.fold_remap_display_disabled"

.field private static final FEATURE_TABLET:Ljava/lang/String; = "oplus.hardware.type.tablet"

.field private static final FOLDER_DENSITY_THRESHOLD:I = 0x1c2

.field private static final FOLD_CONFIG_KEY:Ljava/lang/String; = "config_lidControlsDisplayFold"

.field private static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field private static final SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final SYSTEM_FOLDING_MODE_OPEN:I = 0x1

.field public static sDefaultIconSizeId:I

.field public static sFgSizeEndId:I

.field public static sFgSizeStartId:I

.field public static sIconSizeEndId:I

.field public static sIconSizeStartId:I

.field public static sIsDragonFly:Z

.field public static sIsFoldScreen:Z

.field public static sIsFoldSmallScreen:Z

.field private static sIsSupportThemeIcon:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultIconSize(Landroid/content/res/Resources;)I
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldScreen(Landroid/content/res/Resources;)Z

    move-result v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_3b

    const-string v1, "oplus"

    const-string v2, "dimen"

    if-eqz v0, :cond_1b

    :try_start_a
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isDragonFly()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "ux_icon_default_size_fold"

    invoke-static {p0, v0, v2, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1b
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isPadDevices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "ux_icon_default_size_tablet"

    invoke-static {p0, v0, v2, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_30
    const-string v0, "ux_icon_default_size"

    invoke-static {p0, v0, v2, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_3a} :catch_3b

    return p0

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UxScreenUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/oplus/uxicon/ui/R$dimen;->ux_theme_select_bg_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private static getID(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "integer"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getID(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static initUxScreenInfo(Landroid/content/Context;)V
    .registers 6

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldSmallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    :try_start_6
    const-string v1, "small_screen_foreground_size_start"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeStartId:I

    const-string v1, "small_screen_foreground_size_end"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    const-string v1, "small_screen_ux_icon_size_start"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeStartId:I

    const-string v1, "small_screen_ux_icon_size_end"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    const-string v1, "small_screen_ux_icon_size_default"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sDefaultIconSizeId:I

    goto/16 :goto_d0

    :cond_30
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isPadDevices()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "pad_screen_foreground_size_start"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeStartId:I

    const-string v1, "pad_screen_foreground_size_end"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    const-string v1, "pad_screen_icon_size_start"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeStartId:I

    const-string v1, "pad_screen_icon_size_end"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    const-string v1, "pad_screen_icon_size_default"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sDefaultIconSizeId:I

    goto :goto_d0

    :cond_63
    sget-boolean v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsSupportThemeIcon:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_65} :catch_b9

    const-string v2, "ux_icon_size_start"

    const-string v3, "ux_foreground_size_end"

    const-string v4, "ux_foreground_size_start"

    if-eqz v1, :cond_96

    :try_start_6d
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->supportUxIcon()Z

    move-result v1

    if-nez v1, :cond_96

    invoke-static {p0, v4}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeStartId:I

    invoke-static {p0, v3}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    invoke-static {p0, v2}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeStartId:I

    const-string v1, "ux_themed_icon_size_end"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    const-string v1, "ux_themed_icon_size_default"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sDefaultIconSizeId:I

    goto :goto_d0

    :cond_96
    invoke-static {p0, v4}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeStartId:I

    invoke-static {p0, v3}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    invoke-static {p0, v2}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeStartId:I

    const-string v1, "ux_icon_size_end"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    const-string v1, "ux_icon_size_default"

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sDefaultIconSizeId:I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_b8} :catch_b9

    goto :goto_d0

    :catch_b9
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UxScreenUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d0
    sput-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldSmallScreen:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldScreen(Landroid/content/res/Resources;)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldScreen:Z

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isDragonFly()Z

    move-result p0

    sput-boolean p0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsDragonFly:Z

    return-void
.end method

.method public static initUxScreenInfo(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldSmallScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_f

    sget-boolean p1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldSmallScreen:Z

    if-ne v0, p1, :cond_f

    sget p1, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeStartId:I

    if-eqz p1, :cond_f

    return-void

    :cond_f
    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->initUxScreenInfo(Landroid/content/Context;)V

    return-void
.end method

.method private static isDragonFly()Z
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static isFoldDevicesExcludeDragon()Z
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private static isFoldScreen(Landroid/content/res/Resources;)Z
    .registers 4

    const-string v0, "config_lidControlsDisplayFold"

    const-string v1, "bool"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isPadDevices()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object p0

    const-string v0, "oplus.hardware.type.fold"

    invoke-virtual {p0, v0}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isFoldSmallScreen(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isFoldScreen(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v2, "oplus_system_folding_mode"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public static isPadDevices()Ljava/lang/Boolean;
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isSupport13_2()Z
    .registers 2

    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static setIsSupportThemeIcon(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsSupportThemeIcon:Z

    return-void
.end method

.method public static supportUxIcon()Z
    .registers 8

    const-string v0, "supportUxIcon"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-class v3, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v3, v2}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v2

    iget-wide v2, v2, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2c

    move v4, v1

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "themeflag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is supportUxIcon : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4a

    return v4

    :catch_4a
    move-exception v2

    const-string v3, "supportUxIcon failed.Fail message is "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_54
    return v1
.end method

.method private static typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
