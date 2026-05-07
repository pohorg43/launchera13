.class public Lcom/android/launcher/custom/CustomizeRestrictionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DISABLE_APP_IN_LAUNCHER_FLAG:I = 0x1001

.field private static final DISABLE_APP_IN_RECENT_TASK_FLAG:I = 0x10010000

.field private static final DISALLOW_UNINSTALL_APPS_FIELD:Ljava/lang/String; = "disallow_uninstalled-app-list.txt"

.field private static final LAUNCHER_BANNED_PKGS_FIELD:Ljava/lang/String; = "desktop_icon_banned_pkgs"

.field private static final NAVIGATION_BAR_DISABLE:Ljava/lang/String; = "persist.sys.oplus.nav_bar_disable"

.field private static final PERSIST_SYS_LONG_PRESS_LAUNCHER_DISABLED:Ljava/lang/String; = "persist.sys.long_press_launcher_disabled"

.field private static final RECENTS_BANNED_PKGS_FIELD:Ljava/lang/String; = "recents_banned_pkgs"

.field private static final TAG:Ljava/lang/String; = "CustomizeRestrictionManager"

.field private static final UNINSTALLED_APP_WHITE_LIST_FILE_NAME:Ljava/lang/String; = "uninstalled-policy-app-white-list.txt"

.field private static final UNINSTALL_POLICY_BLACK_OR_WHITE_LIST_MODE:Ljava/lang/String; = "persist.sys.uninstall_black_white_mode"

.field private static final UNINSTALL_POLICY_WHITE_LIST_MODE:I = 0x1

.field private static sAppUninstallationListObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

.field private static sAppUninstallationMode:I

.field private static sAppUninstallationModeObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

.field private static sAppUninstallationPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableNavigationBar:Z

.field private static sDisableNavigationBarObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

.field private static sDisallowUninstallPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisallowUninstallPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

.field private static sHideIconInLauncherPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideIconInRecentTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

.field private static sLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

.field private static sLongPressDisabled:Z

.field private static sLongPressDisabledPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

.field private static sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

.field private static sRecentBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$1;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLauncherBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$2;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$2;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sRecentBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$3;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$3;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$4;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$4;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabledPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$5;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$5;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBarObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$6;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$6;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationListObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    new-instance v0, Lcom/android/launcher/custom/CustomizeRestrictionManager$7;

    invoke-direct {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager$7;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationModeObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;)[Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->getAddAndHidePkgs(Ljava/util/List;)[Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Lcom/android/launcher3/OplusLauncherModel;
    .registers 1

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    return-object v0
.end method

.method public static synthetic access$202(Ljava/util/List;)Ljava/util/List;
    .registers 1

    sput-object p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInLauncherPackages:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$302(Ljava/util/List;)Ljava/util/List;
    .registers 1

    sput-object p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInRecentTaskPackages:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$402(Ljava/util/List;)Ljava/util/List;
    .registers 1

    sput-object p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPackages:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabled:Z

    return v0
.end method

.method public static synthetic access$502(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabled:Z

    return p0
.end method

.method public static synthetic access$600()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBar:Z

    return v0
.end method

.method public static synthetic access$602(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBar:Z

    return p0
.end method

.method public static synthetic access$700(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->updateAppInstallList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$800(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->updateAppInstallMode(Ljava/lang/String;)V

    return-void
.end method

.method private static getAddAndHidePkgs(Ljava/util/List;)[Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInLauncherPackages:Ljava/util/List;

    if-eqz v2, :cond_46

    if-eqz p0, :cond_46

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInLauncherPackages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPkgs: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CustomizeRestrictionManager"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidePkgs: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return-object p0
.end method

.method public static initCustomizeRestrictionManager(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 4

    const-string v0, "CustomizeRestrictionManager"

    const-string v1, "initCustomizeRestrictionManager"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_f

    const-string p0, "initCustomizeRestrictionManager context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    sput-object p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getAppUninstallationPolicies()I

    move-result p1

    sput p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationMode:I

    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p1

    sget v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationMode:I

    invoke-virtual {p1, v1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getAppUninstallationPackageList(I)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationPackages:Ljava/util/List;

    invoke-static {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizePackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/customize/OplusCustomizePackageManager;->getDisallowUninstallPackageList()Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPackages:Ljava/util/List;

    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p1

    const/16 v1, 0x1001

    invoke-virtual {p1, v1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getApplicationDisabledInLauncherOrRecentTask(I)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInLauncherPackages:Ljava/util/List;

    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p1

    const/high16 v1, 0x10010000

    invoke-virtual {p1, v1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getApplicationDisabledInLauncherOrRecentTask(I)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInRecentTaskPackages:Ljava/util/List;

    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeLongPressLauncherDisabledRef(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabled:Z

    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeNavigationBarDisabledRef(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBar:Z

    const-string p0, "initCustomizeRestrictionManager sLongPressDisabled:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabled:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sDisableNavigationBar = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBar:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sAppUninstallationMode = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationMode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sAppUninstallationPackages = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationPackages:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->registRestrictionDataObserver()V

    return-void
.end method

.method public static isCustomizeAppUninstallByWhiteList(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationPackages:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationMode:I

    if-eq v0, v1, :cond_16

    goto :goto_1d

    :cond_16
    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationPackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static isCustomizeChangeWallpaperDisabled(Landroid/content/Context;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->isChangeWallpaperDisabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static isCustomizeDisAllowUninstall(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPackages:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_19

    :cond_12
    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isCustomizeIconBannedInLauncher(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInLauncherPackages:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_19

    :cond_12
    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInLauncherPackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isCustomizeIconBannedInRecentTask(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInRecentTaskPackages:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_19

    :cond_12
    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sHideIconInRecentTaskPackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isCustomizeLongPressLauncherDisabled(Landroid/content/Context;)Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabled:Z

    return p0
.end method

.method private static isCustomizeLongPressLauncherDisabledRef(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p0

    if-eqz p0, :cond_1b

    const-string v0, "isLongPressLauncherDisabled"

    invoke-static {p0, v0}, Lcom/android/common/util/ReflectUtil;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p0

    const-string v0, "isCustomizeLongPressLauncherDisabled catch exception: "

    const-string v1, "CustomizeRestrictionManager"

    invoke-static {v0, p0, v1}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static isCustomizeNavigationBarDisabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBar:Z

    return v0
.end method

.method public static isCustomizeNavigationBarDisabledRef(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->isNavigationBarDisabled()Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    const-string v1, "isCustomizeNavigationBarDisabled catch exception: "

    const-string v2, "CustomizeRestrictionManager"

    invoke-static {v1, p0, v2}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v0
.end method

.method public static isCustomizeNotificationCenterDisabled(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->shouldInterceptAllNotifications()Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    const-string v1, "isCustomizeNotificationCenterDisabled catch exception: "

    const-string v2, "CustomizeRestrictionManager"

    invoke-static {v1, p0, v2}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v0
.end method

.method public static isCustomizeSearchBoxDisabled()Z
    .registers 1

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isCustomizeSearchBoxDisabled()Z

    move-result v0

    return v0
.end method

.method public static isCustomizeSuperPowerSaveModeDisabled(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object p0

    if-eqz p0, :cond_2e

    const-string v1, "isSuperPowerSavingModeDisabled"

    invoke-static {p0, v1}, Lcom/android/common/util/ReflectUtil;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    const-string v1, "isSuperPowerSaveDisabled: e = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CustomizeRestrictionManager"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return v0
.end method

.method private static registRestrictionDataObserver()V
    .registers 3

    invoke-static {}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getInstance()Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    if-eqz v0, :cond_4b

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLauncherBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string v2, "desktop_icon_banned_pkgs"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sRecentBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string/jumbo v2, "recents_banned_pkgs"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string v2, "disallow_uninstalled-app-list.txt"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabledPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string/jumbo v2, "persist.sys.long_press_launcher_disabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBarObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string/jumbo v2, "persist.sys.oplus.nav_bar_disable"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationModeObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string/jumbo v2, "persist.sys.uninstall_black_white_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationListObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    const-string/jumbo v2, "uninstalled-policy-app-white-list.txt"

    invoke-virtual {v0, v2, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->registerOplusDevicepolicyObserver(Ljava/lang/String;Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    goto :goto_52

    :cond_4b
    const-string v0, "CustomizeRestrictionManager"

    const-string v1, "mOplusDevicepolicyManager null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_52
    return-void
.end method

.method public static unRegistRestrictionDataObserver()V
    .registers 2

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    if-eqz v0, :cond_33

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLauncherBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sRecentBannedPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisallowUninstallPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sLongPressDisabledPolicyObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sDisableNavigationBarObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationModeObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    sget-object v0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sOplusDevicepolicyManager:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    sget-object v1, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationListObserver:Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;

    invoke-virtual {v0, v1}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->unregisterOplusDevicePolicyObserver(Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager$OplusDevicePolicyObserver;)Z

    :cond_33
    return-void
.end method

.method private static updateAppInstallList(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationPackages:Ljava/util/List;

    return-void
.end method

.method private static updateAppInstallMode(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/launcher/custom/CustomizeRestrictionManager;->sAppUninstallationMode:I

    return-void
.end method
