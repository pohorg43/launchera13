.class public Lcom/android/launcher3/model/PhoneManagerShortcutsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_PM_CLEAN:Ljava/lang/String; = "oplus.intent.action.CLEAR_MAIN_ACTIVITY"

.field private static final ACTION_PM_OPTIMIZE:Ljava/lang/String; = "oplus.intent.action.SYSTEM_OPT_BOOST_ACTIVITY"

.field private static final ADD_PHONE_MANAGER_SHORTCUT_FLAG:I = 0x1

.field public static final AUTO_CLEAR:Ljava/lang/String; = "auto_clear"

.field private static final OPLUS_SOFTWARE_DISABLE_PM_SHORTCUTS_NAME:Ljava/lang/String; = "ro.oplus.phonemanager.disable_shortcuts"

.field private static final OPLUS_SOFTWARE_DISABLE_PM_SHORTCUTS_VALUE_DISABLED:Ljava/lang/String; = "disabled"

.field private static final OPLUS_SOFTWARE_DISABLE_PM_SHORTCUTS_VALUE_FOLDER_TOOL:Ljava/lang/String; = "folder_tool"

.field public static final PHONEMANAGER_SYSTEM_ACCELERATION:Ljava/lang/String; = "com.oplus.phonemanager.shortcut_system_acceleration"

.field private static final PHONE_MANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.phonemanager"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RETRY_MAX_COUNT:I = 0x3

.field private static final RETRY_PENDING_TIME_INTERVAL:I = 0x7d0

.field private static final RETRY_TIME_INTERVAL:I = 0x1388

.field private static final SHORTCUT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "PhoneManagerShortcutsManager"

.field private static final USER_SAVE_PHONEMANAGER_AUTO_CLEA_SHORTCUT:Ljava/lang/String; = "user_save_phonemanager_auto_clear_shortcut"

.field private static final USER_SAVE_PHONEMANAGER_SYSTEM_ACCELERATION_SHORTCUT:Ljava/lang/String; = "user_save_phonemanager_system_acceleration_shortcut"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mQueryShortcutsNameCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryPendingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "S\\.shortcut_id=([^;]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->SHORTCUT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string v2, "intent"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryCount:I

    iput-object p1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Lcom/android/launcher3/model/PhoneManagerShortcutsManager$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager$1;-><init>(Lcom/android/launcher3/model/PhoneManagerShortcutsManager;)V

    iput-object p1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getIds()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isOtaVersionUpdate()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isDeviceSupport()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isPhoneManagerInstalled()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isOperatorAllowAddShortcut()Z

    move-result v1

    if-eqz v1, :cond_65

    const-string/jumbo v1, "user_save_phonemanager_system_acceleration_shortcut"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->getAddPhoneManagerShortCutValue(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "user_save_phonemanager_auto_clear_shortcut"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->getAddPhoneManagerShortCutValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v2, :cond_45

    const-string v2, "com.oplus.phonemanager.shortcut_system_acceleration"

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isShortcutExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    const-string v1, "oplus.intent.action.SYSTEM_OPT_BOOST_ACTIVITY"

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isActionSupported(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_45
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->saveAddPhoneManagerShortCutValue(Ljava/lang/String;)V

    :cond_48
    :goto_48
    if-nez v4, :cond_62

    const-string v1, "auto_clear"

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isShortcutExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "oplus.intent.action.CLEAR_MAIN_ACTIVITY"

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isActionSupported(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_65

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_62
    invoke-direct {p0, v3}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->saveAddPhoneManagerShortCutValue(Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-object v0
.end method

.method private getShortcutsInfo(Ljava/util/List;Lcom/android/launcher/Launcher;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-direct {p0, p2}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->isHasShortcutHostPermission(Lcom/android/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string p1, "isHasShortcutHostPermission is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_16
    new-instance p0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const-string v0, "com.coloros.phonemanager"

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const-string p1, "launcherapps"

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    sget-object p1, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string p2, "create shortcut queue error:"

    invoke-static {p2, p0, p1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v1
.end method

.method private isActionSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3d

    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sget-object p1, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isActionSupported ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_3d
    sget-object p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string p1, " mContext or action is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private isDeviceSupport()Z
    .registers 3

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isOPPODevice()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v1, "deviceSupport ="

    invoke-static {v1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isHasShortcutHostPermission(Lcom/android/launcher/Launcher;)Z
    .registers 3

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result p1

    if-nez p1, :cond_1a

    sget-object p1, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v0, "launcher has no shortcut permission"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->retryPendingForNoPermission()V

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private isOperatorAllowAddShortcut()Z
    .registers 8

    const-string p0, "ro.oplus.phonemanager.disable_shortcuts"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOperatorAllowAddShortcut query system value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "disabled"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "folder_tool"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "isOperatorAllowAddShortcut="

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3f

    if-nez v1, :cond_3d

    if-nez v2, :cond_3d

    goto :goto_3f

    :cond_3d
    move v4, v5

    goto :goto_40

    :cond_3f
    :goto_3f
    move v4, v6

    :goto_40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_54

    if-nez v1, :cond_55

    if-nez v2, :cond_55

    :cond_54
    move v5, v6

    :cond_55
    return v5
.end method

.method private isOtaVersionUpdate()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result p0

    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v1, "isOtaVersionUpdate="

    invoke-static {v1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isPhoneManagerInstalled()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    const-string v0, "com.coloros.phonemanager"

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v1, "package isInstalled ="

    invoke-static {v1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isShortcutExists(Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v1, "isShortcutExists shortcutName="

    invoke-static {v1, p1, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4a

    :cond_13
    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->queryShortcutsInLauncher()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShortcutExists list="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_49
    return v2

    :cond_4a
    :goto_4a
    const-string p0, "mLauncher or shortcutName is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static parseShortcutId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->SHORTCUT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private queryShortcutsInLauncher()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mQueryShortcutsNameCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mQueryShortcutsNameCache:Ljava/util/ArrayList;

    return-object p0

    :cond_d
    const-string v0, "%com.coloros.phonemanager%"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "intent LIKE ?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6a

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "intent"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :try_start_37
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {v2}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->parseShortcutId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4e} :catch_4f

    goto :goto_2b

    :catch_4f
    move-exception v2

    sget-object v3, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v4, "query error ="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6a
    iput-object v0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mQueryShortcutsNameCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method private retryPendingForNoPermission()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1f

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method

.method private saveAddPhoneManagerShortCutValue(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    const-string v1, "saveAddPhoneManagerShortCutValue key ="

    invoke-static {v1, p1, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public addPhoneManagerShortcutsToLauncher()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addShortcuts()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->getShortcutsInfo(Ljava/util/List;Lcom/android/launcher/Launcher;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shortcutInfoList info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "getShortcuts count:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    sget-object v2, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "com.oplus.phonemanager.shortcut_system_acceleration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "user_save_phonemanager_system_acceleration_shortcut"

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->saveAddPhoneManagerShortCutValue(Ljava/lang/String;)V

    :cond_79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "auto_clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string/jumbo v1, "user_save_phonemanager_auto_clear_shortcut"

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->saveAddPhoneManagerShortCutValue(Ljava/lang/String;)V

    goto :goto_48

    :cond_8e
    const-string v0, "getShortcuts is null"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->retryPendingForNoPermission()V

    :cond_96
    return-void
.end method

.method public getAddPhoneManagerShortCutValue(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    move v1, v0

    :cond_16
    sget-object p0, Lcom/android/launcher3/model/PhoneManagerShortcutsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddPhoneManagerShortCutValue key ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
