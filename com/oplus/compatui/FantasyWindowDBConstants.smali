.class public Lcom/oplus/compatui/FantasyWindowDBConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compatui/FantasyWindowDBConstants$ServerField;,
        Lcom/oplus/compatui/FantasyWindowDBConstants$ClientField;
    }
.end annotation


# static fields
.field public static final ACTION_NAME_SETTINGS:Ljava/lang/String; = "oplus.intent.action.settings.COMPATIBLE_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "com.oplus.fantasywindow.fantasywindowprovider"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final BRACKET_WINDOW_FUNCTION:Ljava/lang/String; = "bracketwindow"

.field public static final CLIENT_URI:Landroid/net/Uri;

.field public static final COMPACT_MODE:I = 0x64

.field public static final COMPACT_WINDOW_FUNCTION:Ljava/lang/String; = "compactwindow"

.field public static final DEFAULT_16_9_CONFIG:Ljava/lang/String; = "{\"compact_ratio\":\"1.78\",\"compact_orientation\":\"0\"}"

.field public static final EASY_GO_CLIENT:Ljava/lang/String; = "EasyGoClient"

.field public static final ENABLE_COMPACT_WINDOW:Z

.field public static final EXTRA_BUNDLE_NAME:Ljava/lang/String; = "launch_extra_pkg_key"

.field public static final EX_SYSTEM_SERVICE_PACKAGE:Ljava/lang/String; = "com.oplus.exsystemservice"

.field public static final FEATURE_BRACKET_WINDOW:Ljava/lang/String; = "oplus.software.windowmode.bracket"

.field public static final FEATURE_COMPACT_WINDOW:Ljava/lang/String; = "oplus.software.windowmode.compact"

.field public static final FEATURE_REVISE_SQUARE_DISPLAY_ORIENTATION:Ljava/lang/String; = "oplus.software.revise_square_display_orientation"

.field public static final FEATURE_TABLET:Ljava/lang/String; = "oplus.hardware.type.tablet"

.field public static final IS_TABLET:Z

.field public static final KEY_COMPATIBLE_NEW_MODE:Ljava/lang/String; = "new_compact_mode"

.field public static final KEY_COMPATIBLE_TASK_ID:Ljava/lang/String; = "task_id"

.field public static final KEY_PARALLEL_NEW_MODE:Ljava/lang/String; = "new_parallel_mode"

.field public static final KEY_RECENT_TASK_SWITCH:Ljava/lang/String; = "is_recent_task_switch"

.field public static final LOCAL_FULL_RECOVERY_ACTION:Ljava/lang/String; = "com.oplus.exsystemservice.fantasywindow.localrecovery"

.field public static final METHOD_PKG_CONFIG_UPDATED:Ljava/lang/String; = "fantasy_window_config_updated"

.field public static final METHOD_PKG_STATUS_UPDATED:Ljava/lang/String; = "fantasy_window_status_updated"

.field public static final NAVIGATION_MODE:I = 0x1

.field public static final PACKAGE_ADD_ACTION:Ljava/lang/String; = "onPackageAdded"

.field public static final PACKAGE_FULL_SCAN_ACTION:Ljava/lang/String; = "onPackageFullScan"

.field public static final PACKAGE_MAGIC_STATUS_UPDATED:Ljava/lang/String; = "onPackageRatioUpdated"

.field public static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final PACKAGE_RATIO_UPDATED:Ljava/lang/String; = "onPackageRatioUpdated"

.field public static final PACKAGE_REMOVE_ACTION:Ljava/lang/String; = "onPackageRemoved"

.field public static final PACKAGE_STATUS_UPDATED:Ljava/lang/String; = "onPackageStatusUpdated"

.field public static final PARALLEL_WINDOW_FUNCTION:Ljava/lang/String; = "magicwindow"

.field public static final PARALLEL_WINDOW_VERSION:Ljava/lang/String; = "1.0"

.field public static final SERVER_URI:Landroid/net/Uri;

.field public static final SHOPPING_MODE:I = 0x0

.field public static final SP_KEY_SWITCH_INFO_DETAIL:Ljava/lang/String; = "compact_window_switch_info_detail"

.field public static final SWITCH_SCALE_FROM_RECENT_TASK_ACTION:Ljava/lang/String; = "onRecentTaskSwitchScale"

.field public static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field public static final SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field public static final SYSTEM_FOLDING_MODE_OPEN:I = 0x1

.field public static final TABLE_CONFIG:Ljava/lang/String; = "t_config"

.field public static final TABLE_SERVER:Ljava/lang/String; = "t_server"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "content://com.oplus.fantasywindow.fantasywindowprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/compatui/FantasyWindowDBConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "t_config"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/oplus/compatui/FantasyWindowDBConstants;->CLIENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "t_server"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/compatui/FantasyWindowDBConstants;->SERVER_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.windowmode.compact"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/compatui/FantasyWindowDBConstants;->ENABLE_COMPACT_WINDOW:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/compatui/FantasyWindowDBConstants;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateModeToRatio(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const-string p0, "-1"

    return-object p0

    :cond_9
    const-string p0, "1.33"

    return-object p0

    :cond_c
    const-string p0, "1.78"

    return-object p0
.end method

.method public static translateRatioToMode(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1.33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "1.78"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0

    :cond_17
    const/4 p0, 0x3

    return p0
.end method
