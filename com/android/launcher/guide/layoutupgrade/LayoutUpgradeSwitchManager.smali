.class public Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_SHOW_LAYOUT_UPGRADE_GUIDE:Ljava/lang/String; = "com.android.launcher.action.SHOW_LAYOUT_UPGRADE_GUIDE"

.field public static final ANIM_DELAY_TIME:I = 0x5dc

.field private static final KEY_HAS_SHOW_SETTINGS_GUIDE_MESSAGE:Ljava/lang/String; = "has_show_settings_guide_message"

.field public static final KEY_HAS_SHOW_UPGRADE_GUIDE_ON_START:Ljava/lang/String; = "has_show_upgrade_guide"

.field public static final KEY_IS_NEW_LAYOUT_CONFIG:Ljava/lang/String; = "new_layout_config"

.field public static final KEY_UPGRADE_TYPE:Ljava/lang/String; = "upgrade_type"

.field private static final LAYOUT_UPGRADE_GUIDE_SETTINGS_RES:Ljava/lang/String; = "layout_upgrade_guide_settings"

.field private static final OVERLAY_CHANGED_LISTENER:Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;

.field private static final TAG:Ljava/lang/String; = "LayoutUpgradeSwitchManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager$1;

    invoke-direct {v0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->OVERLAY_CHANGED_LISTENER:Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->recreateLauncher()V

    return-void
.end method

.method public static synthetic access$100()Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;
    .registers 1

    sget-object v0, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->OVERLAY_CHANGED_LISTENER:Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;

    return-object v0
.end method

.method public static clearSettingsGuideMessage(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string v0, "has_show_settings_guide_message"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/settingslib/messageentry/MessageEntryAgent;->deleteMessage(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_25

    :catch_e
    move-exception p0

    const-string v0, "clearSettingsGuideMessage e:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LayoutUpgradeSwitchManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method private static initCardServices(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->initCardFeature(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-virtual {v0}, Lcom/oplus/card/server/CardServiceProxyManager;->getMInited()Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "LayoutUpgradeSwitchManager"

    const-string/jumbo v2, "need init card service."

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/card/server/CardServiceProxyManager;->init(Landroid/content/Context;)V

    :cond_16
    return-void
.end method

.method public static isNewLayoutConfig()Z
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "new_layout_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRemoveLayoutSettings()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_1a

    :cond_14
    const/4 v0, 0x0

    goto :goto_1a

    :cond_16
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    :goto_1a
    return v0
.end method

.method public static isUsingOldLayout()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isNewLayoutConfig()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static needShowLayoutUpgradeGuideOnStart(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "has_show_upgrade_guide"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isNewLayoutConfig()Z

    move-result v0

    if-nez v0, :cond_16

    if-nez p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static needShowSettingsGuideMessage(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "has_show_settings_guide_message"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private static recreateLauncher()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->resetInitState()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v1, "LayoutUpgradeSwitchManager"

    const-string/jumbo v2, "onOverlayChanged recreate launcher"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    :cond_2b
    return-void
.end method

.method public static showLayoutUpgradeGuidePage(Landroid/content/Context;Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.SHOW_LAYOUT_UPGRADE_GUIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_from_launcher_settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showSettingsGuideMessage(Landroid/content/Context;)V
    .registers 6

    const-string v0, "LayoutUpgradeSwitchManager"

    new-instance v1, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    const-string/jumbo v2, "two_panel_guide"

    const-string v3, "com.android.launcher"

    invoke-direct {v1, v2, v3}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120564

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->title(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120565

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->module(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->displayOrder(I)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v2

    const-string v3, "com.android.launcher.action.SHOW_LAYOUT_UPGRADE_GUIDE"

    invoke-virtual {v2, v3}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->targetAction(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->targetPackageName(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v2

    const-string v3, "layout_upgrade_guide_settings"

    invoke-virtual {v2, v3}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->entrancePath(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;

    :try_start_42
    invoke-virtual {v1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->build()Lcom/oplus/settingslib/messageentry/MessageEntry;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/settingslib/messageentry/MessageEntryAgent;->sendMessage(Landroid/content/Context;Lcom/oplus/settingslib/messageentry/MessageEntry;)Landroid/net/Uri;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageEntryAgent uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5e} :catch_5f

    goto :goto_75

    :catch_5f
    move-exception p0

    const-string/jumbo v1, "showSettingsGuideMessage e:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_75
    return-void
.end method

.method public static supportBigFolder()Z
    .registers 2

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_d
    return v1
.end method

.method public static supportLayoutSwitch()Z
    .registers 1

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSurpportLayoutUpgrade()Z

    move-result v0

    return v0
.end method

.method public static switchToNewLayoutConfig(Landroid/content/Context;I)V
    .registers 4

    const-string/jumbo v0, "new_layout_config"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "upgrade_type"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->clearSettingsGuideMessage(Landroid/content/Context;)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->initCardServices(Landroid/content/Context;)V

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    sget-object p1, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->OVERLAY_CHANGED_LISTENER:Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;

    invoke-virtual {p0, p1}, Lcom/oplus/launcher/overlay/RROverlayManager;->registerChangedListener(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;)V

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->checkDynamicEnabledState()V

    goto :goto_2f

    :cond_26
    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->recreateLauncher()V

    :cond_2f
    :goto_2f
    return-void
.end method
