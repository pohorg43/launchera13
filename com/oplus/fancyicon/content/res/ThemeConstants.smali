.class public Lcom/oplus/fancyicon/content/res/ThemeConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CALENDAR_ICON:Ljava/lang/String; = "ic_launcher_calender"

.field public static final CALENDAR_LINE:Ljava/lang/String; = "line.png"

.field public static final CLOCK_DAY_BG:Ljava/lang/String; = "clock_day_bg.png"

.field public static final CLOCK_DAY_HOUR:Ljava/lang/String; = "clock_day_hour.png"

.field public static final CLOCK_DAY_MINUTE:Ljava/lang/String; = "clock_day_minute.png"

.field public static final CLOCK_ICON:Ljava/lang/String; = "ic_launcher_clock"

.field public static final CONFIG_FANCYWALLPAPER_DEFAULT_PATH:Ljava/lang/String;

.field public static final CONFIG_FANCYWALLPAPER_NAME:Ljava/lang/String; = "fancywallpaper"

.field public static final CONFIG_FANCYWIDGET_DEFAULT_PATH:Ljava/lang/String;

.field public static final CONFIG_FANCY_ICON_SUBFOLDER:Ljava/lang/String; = "fancy_icons/"

.field public static final CONFIG_ICONS_METERIAL_NAME:Ljava/lang/String; = "icons-meterial"

.field public static final CONFIG_ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final CONFIG_ICONS_NAME_CONJUNCTION:Ljava/lang/String; = "-"

.field public static final CONFIG_ICONS_PEBBLE_NAME:Ljava/lang/String; = "icons-pebble"

.field public static final CONFIG_ICONS_RECTANGLE_NAME:Ljava/lang/String; = "icons-rectangle"

.field public static final CONFIG_ICONS_SHAPE_DEFAULT:I = 0x3

.field public static final CONFIG_ICONS_SHAPE_METERIAL:I = 0x1

.field public static final CONFIG_ICONS_SHAPE_PEBBLE:I = 0x4

.field public static final CONFIG_ICONS_SHAPE_RECTANGLE:I = 0x2

.field public static final CONFIG_ICONS_SYSTEM_PATH:Ljava/lang/String;

.field public static final CONFIG_ICONS_SYSTEM_PATH_PRODUCT:Ljava/lang/String;

.field public static final CONFIG_ICONS_THIRD_PARTY_PATH:Ljava/lang/String;

.field public static final CONFIG_LOCKSTYLE_NAME:Ljava/lang/String; = "lockstyle"

.field public static final CONFIG_LOCKSTYLE_PATH:Ljava/lang/String;

.field public static final CONFIG_LOCKSTYLE_PATH_GUESTER:Ljava/lang/String; = "lock/lockstyle"

.field public static final CONFIG_LOCKSTYLE_SUBFOLDER:Ljava/lang/String; = "advance/"

.field public static final CONFIG_LOCK_SCREEN_FILE:Ljava/lang/String; = "lockscreen/lockstyle"

.field public static final CONFIG_LOCK_TEMP_PATH:Ljava/lang/String;

.field public static final CONFIG_SYSTEM_THEME_PATH:Ljava/lang/String;

.field public static final CONFIG_SYSTEM_THEME_PATH_CARRIER:Ljava/lang/String;

.field public static final CONFIG_SYSTEM_THEME_PATH_PRODUCT:Ljava/lang/String;

.field public static final CONFIG_SYSTEM_THEME_PATH_R:Ljava/lang/String;

.field public static final CONFIG_SYSTEM_THEME_PATH_S:Ljava/lang/String;

.field public static final CONFIG_THIRD_PARTY_THEME_PATH:Ljava/lang/String;

.field public static final CUSTOM_THEME_FLAG:J = 0x100L

.field public static final CUSTOM_THEME_PATH:Ljava/lang/String;

.field public static final CUSTOM_THEME_PATH_SETTING:Ljava/lang/String; = "custom_theme_path_setting"

.field public static final DIM:F = 2.0f

.field public static final ICON_FLAG_MASK:J = 0x10L

.field public static final SYSTEM_TYPEFACE_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "/system/media/theme/default"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/media/theme/uxicons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {v5}, Lcom/oplus/fancyicon/util/Utils;->getDensityName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_R:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {v5}, Lcom/oplus/fancyicon/util/Utils;->getDensityName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_S:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {v4}, Lcom/oplus/fancyicon/util/Utils;->getDensityName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_CARRIER:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/media/theme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_SYSTEM_THEME_PATH_PRODUCT:Ljava/lang/String;

    const-string v4, "/data/theme"

    invoke-static {v4, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_THIRD_PARTY_THEME_PATH:Ljava/lang/String;

    const-string v5, "lock/"

    const-string v6, "lockstyle"

    invoke-static {v4, v5, v6}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_LOCKSTYLE_PATH:Ljava/lang/String;

    const-string v5, "icons"

    invoke-static {v0, v5}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_SYSTEM_PATH:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_THIRD_PARTY_PATH:Ljava/lang/String;

    invoke-static {v3, v5}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_SYSTEM_PATH_PRODUCT:Ljava/lang/String;

    const-string v0, "fancywallpaper"

    invoke-static {v4, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_FANCYWALLPAPER_DEFAULT_PATH:Ljava/lang/String;

    const-string v0, "widget/"

    invoke-static {v4, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_FANCYWIDGET_DEFAULT_PATH:Ljava/lang/String;

    const-string v0, "/system/fonts"

    invoke-static {v0, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->SYSTEM_TYPEFACE_PATH:Ljava/lang/String;

    const-string v0, "lock/tmp/"

    const-string v1, "advance/"

    invoke-static {v4, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_LOCK_TEMP_PATH:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    sput-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CUSTOM_THEME_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
