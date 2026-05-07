.class public Lcom/oplus/uxicon/helper/IconResLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BASE_PRODUCT_DEFAULT_THEME_FILE_PATH:Ljava/lang/String; = "/oplus_product/media/theme/default/"

.field public static final BASE_SYSTEM_DEFAULT_THEME_FILE_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field public static final BASE_UX_ICONS_FILE_PATH:Ljava/lang/String; = "/data/oplus/uxicons/"

.field private static final CLASS_NAME:Ljava/lang/String; = "IconResLoader"

.field private static final COMMON_STYLE_CONFIG_RANGE_ARRAY:Ljava/lang/String; = "oplus_uxicon_common_style_config_range"

.field private static final COMMON_STYLE_NAME_ARRAY:Ljava/lang/String; = "oplus_uxicon_common_style_name"

.field private static final COMMON_STYLE_PATH_ARRAY:Ljava/lang/String; = "oplus_uxicon_common_style_path"

.field private static final COMMON_STYLE_PATH_ARRAY_EXP:Ljava/lang/String; = "oplus_uxicon_common_style_path_exp"

.field private static final COMMON_STYLE_PREFIX_ARRAY:Ljava/lang/String; = "oplus_uxicon_common_style_prefix"

.field public static final COM_ANDROID_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field public static final COM_HEYTAP_MATKET:Ljava/lang/String; = "com.heytap.market"

.field public static final DEFAULT_BACKGROUND_COLOR:Ljava/lang/String; = "#FFFBFBFB"

.field public static final DEFAULT_FG_DP:I = 0x15e0

.field public static final DEFAULT_MATERIAL_FG_DP:I = 0x12c0

.field public static final DIALER_PREFIX:Ljava/lang/String; = "dialer_"

.field public static final FILE_SEPARATOR:Ljava/lang/String; = "/"

.field public static final ICON_SIZE_THRESHOLD:I = 0x28

.field private static final IDENTIFIER_PACKAGE_OPLUS:Ljava/lang/String; = "oplus"

.field private static final IDENTIFIER_TYPE:Ljava/lang/String; = "array"

.field private static final ID_REGION_FEATURE:Ljava/lang/String; = "com.oplus.uxiconui.id_region_support"

.field public static final KEY_HAS_ENTER_UXICON:Ljava/lang/String; = "key_has_enter_uxicon"

.field public static final KEY_HAS_PERMISSION:Ljava/lang/String; = "key_has_permission"

.field public static final KEY_NOT_ALERT:Ljava/lang/String; = "key_not_alert"

.field public static final MASK_SIZE:I = 0x96

.field public static final MATERIAL_FOREGROUND_SCALE:F = 1.25f

.field public static final MATERIAL_RADIUS:I = 0x8

.field public static final MATERIAL_THEME_POSITION:I = 0x1

.field public static final PEBBLE_THEME_POSITION:I = 0x2

.field public static final PIXEL_ALPHA_THRESHOLD:I = 0xdc

.field public static final PIXEL_SAMPLE:I = 0x4

.field public static final PIXEL_THRESHOLD:I = 0x6

.field public static final PNG_REG:Ljava/lang/String; = ".png"

.field public static final PREFIX_MATERIAL_POS:I = 0x2

.field public static final PREFIX_PEBBLE_POS:I = 0x3

.field public static final PREFIX_RECTANGLE_BG_POS:I = 0x1

.field public static final PREFIX_RECTANGLE_FG_POS:I = 0x0

.field public static final RECTANGLE_THEME_POSITION:I = 0x0

.field public static final SDK_R:I = 0x1e

.field private static final SPECIAL_STYLE_CONFIG_RANGE_ARRAY:Ljava/lang/String; = "oplus_uxicon_special_style_config_range"

.field private static final SPECIAL_STYLE_NAME_ARRAY:Ljava/lang/String; = "oplus_uxicon_special_style_name"

.field private static final SPECIAL_STYLE_PATH_ARRAY:Ljava/lang/String; = "oplus_uxicon_special_style_path"

.field private static final SPECIAL_STYLE_PREFIX_ARRAY:Ljava/lang/String; = "oplus_uxicon_special_style_prefix"

.field private static final SPECIAL_STYLE_THEME_FEATURE:Ljava/lang/String; = "oplus.uxicons.special.icon.support"

.field private static final TAG:Ljava/lang/String; = "UXDesign"

.field public static final THEME_CUSTOM_POS:I = 0x3

.field public static final THEME_MATERIAL_POS:I = 0x1

.field public static final THEME_PEBBLE_POS:I = 0x2

.field public static final THEME_RECTANGLE_POS:I = 0x0

.field public static final TRANSPARENT_ICON_FG_SIZE_DP:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonStyleConfigRangeArray(Landroid/content/res/Resources;)[I
    .registers 4

    const-string v0, "oplus_uxicon_common_style_config_range"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getCommonStyleConfigRangeArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCommonStyleNameArray(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 4

    const-string v0, "oplus_uxicon_common_style_name"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getCommonStyleNameArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCommonStylePathArray(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/uxicon/helper/IconResLoader;->getCommonStylePathArray(Landroid/content/res/Resources;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonStylePathArray(Landroid/content/res/Resources;Z)[Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_5

    const-string p1, "oplus_uxicon_common_style_path_exp"

    goto :goto_7

    :cond_5
    const-string p1, "oplus_uxicon_common_style_path"

    :goto_7
    const-string v0, "array"

    :try_start_9
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_38

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": getCommonStylePathArray error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UXDesign"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCommonStylePrefixArray(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 4

    const-string v0, "oplus_uxicon_common_style_prefix"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getCommonStylePathArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOplusResPkg()Ljava/lang/String;
    .registers 1

    const-string v0, "oplus"

    return-object v0
.end method

.method public static getSpecialStyleConfigRangeArray(Landroid/content/res/Resources;)[I
    .registers 4

    const-string v0, "oplus_uxicon_special_style_config_range"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getSpecialStyleConfigRangeArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSpecialStyleNameArray(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 4

    const-string v0, "oplus_uxicon_special_style_name"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getSpecialStyleNameArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSpecialStylePathArray(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 4

    const-string v0, "oplus_uxicon_special_style_path"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getSpecialStylePathArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSpecialStylePrefixArray(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 4

    const-string v0, "oplus_uxicon_special_style_prefix"

    const-string v1, "array"

    :try_start_4
    invoke-static {}, Lcom/oplus/uxicon/helper/IconResLoader;->getOplusResPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/helper/IconResLoader;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": getCommonStylePathArray error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UXDesign"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasIDSpecialSupportFeature(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.oplus.uxiconui.id_region_support"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static hasSpecialStyleThemeFeature(Landroid/content/Context;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oplus.uxicons.special.icon.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
