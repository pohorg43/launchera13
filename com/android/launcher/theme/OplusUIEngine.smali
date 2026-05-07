.class public Lcom/android/launcher/theme/OplusUIEngine;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CUSTOM_THEME_FLAG:J = 0x100L

.field private static final CUSTOM_THEME_PATH:Ljava/lang/String;

.field private static final DATA_THEME_ICONS_ZIP_PATH:Ljava/lang/String; = "/data/theme/icons"

.field private static final DATA_THEME_LAUNCHER_ZIP_PATH:Ljava/lang/String;

.field private static final DEBUG_ENABLE:Z

.field private static final DEFAULT_THEME_COLOR_WHITE:I = 0xffffff

.field private static final GOOGLE_SECURITY_PATCH_VERSION_CODE:I = 0x322

.field private static final ICON_FLAG_MASK:J = 0x10L

.field private static final PATH_FANCY_ICON_SUBFOLDER:Ljava/lang/String; = "fancy_icons/"

.field private static final SYSTEM_PROPERTIES_THEMEFLAG:Ljava/lang/String; = "persist.sys.themeflag"

.field private static final TAG:Ljava/lang/String; = "ThemeUtil"

.field private static sAppsIconsCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

.field private static sDefaultThemeFlag:I

.field private static sNeedLoadUIEngineFlag:I

.field private static sThemeFlag:J

.field private static sThemeTextColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/theme/OplusUIEngine;->DEBUG_ENABLE:Z

    const-string v0, ""

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/media/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/theme/OplusUIEngine;->CUSTOM_THEME_PATH:Ljava/lang/String;

    const-string v0, "/data/theme/"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->ZIPLAUNCHER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/theme/OplusUIEngine;->DATA_THEME_LAUNCHER_ZIP_PATH:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeFlag:J

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    sput v0, Lcom/android/launcher/theme/OplusUIEngine;->sDefaultThemeFlag:I

    const v0, 0xffffff

    sput v0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppsIconsCtrl(Landroid/content/Context;)Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;
    .registers 2

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->needLoadUIEngine()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/launcher/theme/OplusUIEngine;->sAppsIconsCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    if-nez v0, :cond_11

    :cond_a
    new-instance v0, Lcom/oplus/fancyicon/AppsIconsManager;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/AppsIconsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher/theme/OplusUIEngine;->sAppsIconsCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060652

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sput p0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeTextColor:I

    sget-object p0, Lcom/android/launcher/theme/OplusUIEngine;->sAppsIconsCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    return-object p0
.end method

.method public static getDefaultThemeColorWhite()I
    .registers 1

    const v0, 0xffffff

    return v0
.end method

.method public static getThemeTextColor()I
    .registers 1

    sget v0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeTextColor:I

    return v0
.end method

.method public static getThemeTextColorWithAlpha(F)I
    .registers 3

    sget v0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeTextColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static isDefaultTheme()Z
    .registers 11

    sget v0, Lcom/android/launcher/theme/OplusUIEngine;->sDefaultThemeFlag:I

    const/4 v1, 0x1

    if-nez v0, :cond_89

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeOSVersionAbove802()Z

    move-result v0

    const-string v2, "ThemeUtil"

    const/4 v3, -0x1

    if-eqz v0, :cond_58

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v4, "persist.sys.themeflag"

    if-lez v0, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2b
    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/android/launcher/theme/OplusUIEngine;->sThemeFlag:J

    const-string v4, "isDefaultTheme: userId = "

    const-string v7, " themeFlag: "

    invoke-static {v4, v0, v7}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v7, Lcom/android/launcher/theme/OplusUIEngine;->sThemeFlag:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x10

    sget-wide v9, Lcom/android/launcher/theme/OplusUIEngine;->sThemeFlag:J

    and-long/2addr v7, v9

    cmp-long v0, v7, v5

    if-nez v0, :cond_54

    invoke-static {v1}, Lcom/android/launcher/theme/OplusUIEngine;->setDefaultThemeFlag(I)V

    goto :goto_7a

    :cond_54
    invoke-static {v3}, Lcom/android/launcher/theme/OplusUIEngine;->setDefaultThemeFlag(I)V

    goto :goto_7a

    :cond_58
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/theme/icons"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/launcher/theme/OplusUIEngine;->DATA_THEME_LAUNCHER_ZIP_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_73

    move v3, v1

    :cond_73
    invoke-static {v3}, Lcom/android/launcher/theme/OplusUIEngine;->setDefaultThemeFlag(I)V

    goto :goto_7a

    :cond_77
    invoke-static {v3}, Lcom/android/launcher/theme/OplusUIEngine;->setDefaultThemeFlag(I)V

    :goto_7a
    sget-boolean v0, Lcom/android/launcher/theme/OplusUIEngine;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_89

    const-string v0, "isDefaultTheme: sDefaultThemeFlag: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/android/launcher/theme/OplusUIEngine;->sDefaultThemeFlag:I

    invoke-static {v0, v3, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_89
    sget v0, Lcom/android/launcher/theme/OplusUIEngine;->sDefaultThemeFlag:I

    if-lez v0, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    return v1
.end method

.method private static isThemeOSVersionAbove802()Z
    .registers 4

    const-string v0, "ThemeUtil"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "ro.oplus.theme.version"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception v2

    const-string v3, "getThemeOsVersion: exception: "

    invoke-static {v3, v2, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v2, v1

    :goto_18
    sget-boolean v3, Lcom/android/launcher/theme/OplusUIEngine;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_21

    const-string v3, "getThemeOsVersion: versionCode: "

    invoke-static {v3, v2, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_21
    const/16 v0, 0x322

    if-le v2, v0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public static isThemeTextColorDefault()Z
    .registers 2

    sget v0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeTextColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static needLoadUIEngine()Z
    .registers 10

    const-string/jumbo v0, "needLoadUIEngine: close iconsZip IOException"

    sget v1, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    const/4 v2, 0x1

    if-nez v1, :cond_a8

    sput v2, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v1

    const-string v3, "ThemeUtil"

    if-nez v1, :cond_98

    const/4 v1, 0x0

    const/4 v4, -0x1

    :try_start_14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    sget-wide v6, Lcom/android/launcher/theme/OplusUIEngine;->sThemeFlag:J
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_71
    .catchall {:try_start_14 .. :try_end_1a} :catchall_6f

    const-wide/16 v8, 0x100

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    const-string v7, "icons"

    if-nez v6, :cond_3a

    :try_start_23
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/launcher/theme/OplusUIEngine;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    goto :goto_63

    :cond_3a
    if-lez v5, :cond_5c

    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/theme/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_64

    :cond_5c
    new-instance v5, Ljava/util/zip/ZipFile;

    const-string v6, "/data/theme/icons"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :goto_63
    move-object v1, v5

    :goto_64
    const-string v5, "fancy_icons/"

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v5, :cond_86

    sput v4, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_6e} :catch_7c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_6e} :catch_71
    .catchall {:try_start_23 .. :try_end_6e} :catchall_6f

    goto :goto_86

    :catchall_6f
    move-exception v2

    goto :goto_8e

    :catch_71
    :try_start_71
    const-string/jumbo v5, "needLoadUIEngine: IOException"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput v4, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    if-eqz v1, :cond_98

    goto :goto_86

    :catch_7c
    const-string/jumbo v5, "needLoadUIEngine: FileNotFoundException"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput v4, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I
    :try_end_84
    .catchall {:try_start_71 .. :try_end_84} :catchall_6f

    if-eqz v1, :cond_98

    :cond_86
    :goto_86
    :try_start_86
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_98

    :catch_8a
    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :goto_8e
    if-eqz v1, :cond_97

    :try_start_90
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_97

    :catch_94
    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    throw v2

    :cond_98
    :goto_98
    sget-boolean v0, Lcom/android/launcher/theme/OplusUIEngine;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_a8

    const-string/jumbo v0, "needLoadUIEngine: sNeedLoadUIEngineFlag: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    invoke-static {v0, v1, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_a8
    sget v0, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    if-lez v0, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v2, 0x0

    :goto_ae
    return v2
.end method

.method public static resetCheckState()V
    .registers 2

    const-string v0, "ThemeUtil"

    const-string/jumbo v1, "resetCheckState"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher/theme/OplusUIEngine;->sNeedLoadUIEngineFlag:I

    invoke-static {v0}, Lcom/android/launcher/theme/OplusUIEngine;->setDefaultThemeFlag(I)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher/theme/OplusUIEngine;->sThemeFlag:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/theme/OplusUIEngine;->sAppsIconsCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    return-void
.end method

.method private static setDefaultThemeFlag(I)V
    .registers 2

    sput p0, Lcom/android/launcher/theme/OplusUIEngine;->sDefaultThemeFlag:I

    sget-object v0, Lcom/android/launcher3/card/LauncherCardBadgeManager;->INSTANCE:Lcom/android/launcher3/card/LauncherCardBadgeManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/LauncherCardBadgeManager;->saveThemeFlag(I)V

    return-void
.end method
