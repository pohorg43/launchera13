.class public Lcom/android/launcher/filter/DeepProtectedAppsManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/filter/DeepProtectedAppsManager$OnChangeCallback;,
        Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;
    }
.end annotation


# static fields
.field private static final ACTION_APP_HIDE_LIST_ACTIVITY:Ljava/lang/String; = "com.oplus.safe.action.APP_HIDE_LIST_ACTIVITY"

.field private static final ACTION_APP_PROTECT_LIST_ACTIVITY:Ljava/lang/String; = "com.oplus.safe.action.APP_PROTECT_LIST_ACTIVITY"

.field private static final ACTION_SHOW_HIDE_APP:Ljava/lang/String; = "oplus.intent.action.SHOW_DEEP_PROTECT_APPS"

.field private static final CELL_COUNT_X:I = 0x3

.field private static final CELL_COUNT_Y:I = 0x4

.field private static final DEBUG:Z

.field private static final FROM_SPACE_TYPE:Ljava/lang/String; = "from_space_type"

.field public static final INTENT_FROM:Ljava/lang/String; = "intent_from"

.field private static final KEY_ACCESS_HIDDEN_APP_TIMES:Ljava/lang/String; = "try_to_set_access_code_times"

.field private static final MAX_ACCESS_HIDDEN_APP_TIMES:I = 0x3

.field private static final MAX_ITEMS_PER_PAGE:I = 0xc

.field public static final OPEN_HIDDEN_FOLDER:Ljava/lang/String; = "open_hidden_folder"

.field public static final OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final PAK_NAME_SAFE_CENTER:Ljava/lang/String; = "com.oplus.safecenter"

.field private static final PREF_APP_SPLIT_CHAR:Ljava/lang/String; = "/"

.field private static final PREF_LOCAL_DEEP_PROTECTED_PACKAGES:Ljava/lang/String; = "pref_local_deep_protected_packages"

.field private static final PREF_LOCAL_PRIVACY_SWITCH_STATE:Ljava/lang/String; = "pref_local_privacy_switch_state"

.field private static final PRIVATE_SAFE_ACTION:Ljava/lang/String; = "com.oplus.filemanager.FILE_SAFE"

.field private static final PRIVATE_SAFE_ICON_NAME:Ljava/lang/String; = "private_safe_icon"

.field private static final PRIVATE_SPACE:I = 0x1

.field private static final PROTECT_HIDE_ICON:I = 0x1

.field private static final SETTINGS_PASSWORD_URI:Landroid/net/Uri;

.field private static final START_SCREEN_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DeepProtectedAppsManager"

.field public static final VIRTUAL_FOLDER_ITEM_TYPE:I = 0x7fffffff

.field private static volatile sInstance:Lcom/android/launcher/filter/DeepProtectedAppsManager;


# instance fields
.field private mAccessHiddenAppTimes:I

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager$OnChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/android/common/LauncherApplication;

.field private final mControlObserver:Lcom/oplus/app/IOplusAccessControlObserver;

.field private mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mIsPrivacySwitchOn:Z

.field private mIsProtectedAppsFolderShowing:Z

.field private mIsWakeUpByBroadcast:Z

.field private mNeedUpdateIconInLoaderTask:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mPrivateSafeInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private mPrivateSafePackage:Ljava/lang/String;

.field private final mProtectedAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->DEBUG:Z

    const-string v0, "content://oplus.provider.settings.PrivacyStateProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->SETTINGS_PASSWORD_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->sInstance:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafePackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsProtectedAppsFolderShowing:Z

    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mCallbacks:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mNeedUpdateIconInLoaderTask:Z

    iput v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mAccessHiddenAppTimes:I

    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsWakeUpByBroadcast:Z

    new-instance v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager$1;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;)V

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$2;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager$2;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;

    invoke-direct {v0, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;)V

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mControlObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/common/LauncherApplication;

    iput-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/filter/DeepProtectedAppsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$accessControlSwitchStatusChangedTask$0()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/filter/DeepProtectedAppsManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsWakeUpByBroadcast:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/android/launcher/filter/DeepProtectedAppsManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mAccessHiddenAppTimes:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/filter/DeepProtectedAppsManager;)Lcom/android/common/LauncherApplication;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->packageProtectedStatusChangedTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->enqueueModelTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/filter/DeepProtectedAppsManager;)Ljava/lang/Runnable;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->accessControlSwitchStatusChangedTask()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private accessControlSwitchStatusChangedTask()Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Lcom/android/launcher/filter/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/filter/a;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;I)V

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addAppItem(Lcom/android/launcher3/model/data/AppInfo;Z)V

    return-void
.end method

.method private addAppItem(Lcom/android/launcher3/model/data/AppInfo;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->notifyChange()V

    :cond_a
    return-void
.end method

.method private addProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addProtectedItem: Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v3

    :goto_2b
    if-eqz v0, :cond_33

    const-string p0, "addProtectedItem: Already exist, skip."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v7, :cond_52

    iget-object v8, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_52

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-direct {p0, v7}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addAppItem(Lcom/android/launcher3/model/data/AppInfo;)V

    new-instance v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iget-object v0, v7, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iput-object v0, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p2, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput-boolean v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    const-string v0, "addProtectedItem: found in mBgAllAppsList."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    if-nez v5, :cond_102

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_102

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_102

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_c8

    const-string v0, "addProtectedItem: more than one component found. cout:["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :cond_c8
    const-string v0, "addProtectedItem: LauncherActivityInfo: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_dc
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    new-instance v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iput-object v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p2, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput-boolean v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-virtual {v4, v5, p1, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addAppItem(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_102
    if-eqz v5, :cond_107

    invoke-virtual {p0, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_107
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/filter/DeepProtectedAppsManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$addPrivateSafeShortcutIfNeed$9(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$packageProtectedStatusChangedTask$1(Ljava/lang/String;)V

    return-void
.end method

.method private closeVirtualFolderIfOpened(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    const-string p1, "closeHiddenAppsFolder: "

    const-string v0, "DeepProtectedAppsManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private createPrivateSafeShortcut(Z)V
    .registers 10

    const-string v0, "com.oplus.filemanager.FILE_SAFE"

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafeInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_9

    if-nez p1, :cond_9

    return-void

    :cond_9
    :try_start_9
    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc0000

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6d

    const-string/jumbo v5, "private_safe_icon"

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafePackage:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafePackage:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/oplus/compat/content/pm/PackageManagerNative;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v4}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6c} :catch_97

    move-object v4, v2

    :cond_6d
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v5, "from_space_type"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v4, :cond_92

    return-void

    :cond_92
    iput-object v4, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafeInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void

    :catch_97
    const-string p0, "DeepProtectedAppsManager"

    const-string p1, "can not find private safe application"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$updateItemInUiExecutor$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/util/Map$Entry;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$checkHiddenAppsOnUserUnlocked$6(Ljava/util/Map$Entry;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V

    return-void
.end method

.method private enqueueModelTask(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/util/Map$Entry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$checkHiddenAppsOnUserUnlocked$5(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$updateNotificationDots$8(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private getAccessControlSwitchState()Z
    .registers 5

    const-string v0, "DeepProtectedAppsManager"

    :try_start_2
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    const-string/jumbo v2, "type_hide"

    sget v3, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    invoke-virtual {v1, v2, v3}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlEnabled(Ljava/lang/String;I)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    move-exception v1

    const-string v2, "getAccessControlSwitchState e =  "

    invoke-static {v2, v1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessControlSwitchState -- isSwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->savePrivacySwitchStateToSharedPref(Z)V

    return v1
.end method

.method public static getHideListIntent()Landroid/content/Intent;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.safe.action.APP_HIDE_LIST_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oplus.safecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->sInstance:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/filter/DeepProtectedAppsManager;->sInstance:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-direct {v1, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/filter/DeepProtectedAppsManager;->sInstance:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->sInstance:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    return-object p0
.end method

.method private static getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/launcher3/model/data/ItemInfo;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p2, :cond_35

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_c

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return-object v0
.end method

.method public static getProtectListIntent()Landroid/content/Intent;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.safe.action.APP_PROTECT_LIST_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oplus.safecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic h(Lcom/android/launcher/filter/DeepProtectedAppsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$showVirtualFolderIfNeeded$2()V

    return-void
.end method

.method private hasSettingsPassword()Z
    .registers 10

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const/4 v0, 0x0

    if-eqz p0, :cond_43

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->SETTINGS_PASSWORD_URI:Landroid/net/Uri;

    const-string/jumbo v8, "state_result"

    invoke-static {p0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_17
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_36
    .catchall {:try_start_17 .. :try_end_2b} :catchall_34

    if-lez p0, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    if-eqz v1, :cond_43

    :goto_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_34
    move-exception p0

    goto :goto_3d

    :catch_36
    move-exception p0

    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    if-eqz v1, :cond_43

    goto :goto_30

    :goto_3d
    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    throw p0

    :cond_43
    :goto_43
    return v0
.end method

.method private hideProtectedApps(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const-string v1, "DeepProtectedAppsManager"

    if-eqz v0, :cond_e

    const-string p0, "hideProtectedApps, no protected apps"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    iget v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_44

    iget v7, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-ne v7, v6, :cond_44

    iget-object v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    goto :goto_20

    :cond_44
    const/4 v7, 0x0

    if-ne v5, v6, :cond_51

    iget-object v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    :cond_51
    iget v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-ne v5, v6, :cond_20

    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-direct {p0, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->supportMultiApp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_68

    iget-object v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    goto :goto_20

    :cond_68
    const-string v5, "hideProtectedApps, do not support multi app, pkg = "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_7b
    const-string p1, "hideProtectedApps, app size = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", multi app size = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 v1, 0xe

    if-nez p1, :cond_c5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v0, v1, v3, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_c5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    sget-object v2, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_e1
    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/filter/DeepProtectedAppsManager;ZLcom/android/launcher3/model/data/WorkspaceItemInfo;ZLjava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$updateHiddenPackage$7(ZLcom/android/launcher3/model/data/WorkspaceItemInfo;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method private initFromSharedPref()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const-string/jumbo v2, "pref_local_privacy_switch_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    const-string v2, "DeepProtectedAppsManager"

    if-nez v1, :cond_21

    const-string v1, "initFromSharedPref -- mIsPrivacySwitchOn = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    invoke-static {v1, p0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-object v0

    :cond_21
    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const/4 v1, 0x0

    const-string/jumbo v4, "pref_local_deep_protected_packages"

    invoke-static {p0, v4, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_38
    if-ge v3, v1, :cond_50

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-static {v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->parse(Ljava/lang/String;)Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    move-result-object v4

    if-eqz v4, :cond_4d

    iget-object v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_50
    const-string p0, "initFromSharedPref: -- End. mProtectedApps.size = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private initPrivacyAppInfo()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "type_hide"

    const-string v0, "DeepProtectedAppsManager"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :try_start_e
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, p0, v5}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    move-exception v4

    const-string v5, "initPrivacyAppInfo getAccessControlAppsInfo(Process.myUserHandle().getIdentifier()) error = "

    invoke-static {v5, v4, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_26
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5d

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_32
    :goto_32
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/2addr v9, v6

    if-eqz v9, :cond_32

    new-instance v9, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    invoke-direct {v9, v8, v6, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;-><init>(Ljava/lang/String;II)V

    sget-boolean v10, Lcom/android/launcher/filter/DeepProtectedAppsManager;->DEBUG:Z

    if-eqz v10, :cond_59

    const-string v10, "initPrivacyAppInfo -- Got protected app: "

    invoke-static {v10, v8, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_5d
    :try_start_5d
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v7

    const/16 v8, 0x3e7

    invoke-virtual {v7, p0, v8}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_68

    goto :goto_6e

    :catch_68
    move-exception p0

    const-string v7, "initPrivacyAppInfo getAccessControlAppsInfo(MULTI_USER_ID) error = "

    invoke-static {v7, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_6e
    if-eqz v4, :cond_b2

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_78
    :goto_78
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v8, v6

    if-eqz v8, :cond_78

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a0

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    iput v6, v7, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    goto :goto_78

    :cond_a0
    new-instance v8, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    invoke-direct {v8, v7, v5, v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;-><init>(Ljava/lang/String;II)V

    sget-boolean v9, Lcom/android/launcher/filter/DeepProtectedAppsManager;->DEBUG:Z

    if-eqz v9, :cond_ae

    const-string v9, "initPrivacyAppInfo -- Got mulit user protected app: "

    invoke-static {v9, v7, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    :cond_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string p0, "initPrivacyAppInfo: Protected apps count: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cost: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static isCurrentUser(Landroid/os/UserHandle;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isMultiUser(Landroid/os/UserHandle;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    :try_start_9
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    const-string/jumbo v2, "type_encrypt"

    sget v3, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    invoke-virtual {v1, v2, v3}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlEnabled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_29

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, p0

    :goto_28
    return v0

    :catch_29
    move-exception p1

    const-string p2, "isPackageUserEncrypted: e = "

    const-string v0, "DeepProtectedAppsManager"

    invoke-static {p2, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return p0
.end method

.method private isPrivateSafeShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafePackage:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static isSupportFastEnterPrivate()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static synthetic j(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/String;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->lambda$checkHiddenAppsOnUserUnlocked$4(Ljava/lang/String;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V

    return-void
.end method

.method private synthetic lambda$accessControlSwitchStatusChangedTask$0()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getAccessControlSwitchState()Z

    move-result v0

    const-string v1, "DeepProtectedAppsManager"

    const-string v2, "accessControlSwitchStatusChangedTask -- mIsPrivacySwitchOn = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_48

    if-eqz v0, :cond_45

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->initPrivacyAppInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->saveProtectedAppsToSharedPref(Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_31
    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->hideProtectedApps(Ljava/util/concurrent/ConcurrentHashMap;)V

    monitor-exit v2

    goto :goto_48

    :catchall_42
    move-exception p0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_42

    throw p0

    :cond_45
    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->showAllProtectedApps()V

    :cond_48
    :goto_48
    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafeInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5b
    return-void
.end method

.method private synthetic lambda$addPrivateSafeShortcutIfNeed$9(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->hasSettingsPassword()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->createPrivateSafeShortcut(Z)V

    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafeInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$checkHiddenAppsOnUserUnlocked$4(Ljava/lang/String;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V
    .registers 4

    iget v0, p2, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    iget p2, p2, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$checkHiddenAppsOnUserUnlocked$5(Ljava/util/Map$Entry;)V
    .registers 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$checkHiddenAppsOnUserUnlocked$6(Ljava/util/Map$Entry;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v0, p2, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    iget p2, p2, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$packageProtectedStatusChangedTask$1(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->initPrivacyAppInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange -- get new protected info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeepProtectedAppsManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    iget v1, v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    iget v0, v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    goto :goto_2f

    :cond_2b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    :goto_2f
    return-void
.end method

.method private synthetic lambda$showVirtualFolderIfNeeded$2()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateHiddenPackage$7(ZLcom/android/launcher3/model/data/WorkspaceItemInfo;ZLjava/util/concurrent/Executor;)V
    .registers 5

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_e

    :cond_9
    iput-boolean p3, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-direct {p0, p4, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateItemInUiExecutor(Ljava/util/concurrent/Executor;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :goto_e
    return-void
.end method

.method private synthetic lambda$updateItemInUiExecutor$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 11

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-nez p0, :cond_d

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo p1, "updateNewUpdatedAppFlag -- mFolderIcon is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    if-ge v2, v0, :cond_4b

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_2c
    if-ge v5, v4, :cond_48

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v6, Lcom/android/launcher3/BubbleTextView;

    if-eqz v8, :cond_45

    instance-of v8, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v8, :cond_45

    if-ne v7, p1, :cond_45

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_4b
    return-void
.end method

.method private synthetic lambda$updateNotificationDots$8(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 6

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    :cond_c
    const-string/jumbo p1, "updateNotificationDots -- info:"

    const-string p2, "DeepProtectedAppsManager"

    invoke-static {p1, p3, p2}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    check-cast p4, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    invoke-virtual {p4, p3, p0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Z
    .registers 10

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    move v2, v0

    :goto_12
    if-ge v2, v1, :cond_3b

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v0

    :goto_21
    if-ge v5, v4, :cond_38

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v7, v6}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3b
    return v0
.end method

.method private onPackageProtectStateChanged(Ljava/lang/String;II)V
    .registers 14

    const-string v0, "DeepProtectedAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageProtectStateChanged -- packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", protectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", multiProtectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_38
    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    const-string v5, "DeepProtectedAppsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPackageProtectStateChanged -- ProtectedAppInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v4, :cond_109

    iget v6, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    if-ne v6, p2, :cond_7c

    iget v7, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-eq v7, p3, :cond_6d

    goto :goto_7c

    :cond_6d
    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_10c

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updatePackageUserToProtectState(Ljava/lang/String;II)V

    goto/16 :goto_10c

    :cond_7c
    :goto_7c
    const/16 v7, 0xe

    const/4 v8, 0x1

    if-eq v6, p2, :cond_ab

    iput p2, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    iget-object v6, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, v8, :cond_9a

    new-instance v6, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array v9, v8, [Ljava/lang/String;

    aput-object p1, v9, v5

    invoke-direct {v6, v7, v0, v9}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_ab

    :cond_9a
    if-nez v1, :cond_a8

    new-instance v6, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array v9, v8, [Ljava/lang/String;

    aput-object p1, v9, v5

    invoke-direct {v6, v8, v0, v9}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_a8
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_ab
    :goto_ab
    iget v0, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-eq v0, p3, :cond_ff

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-direct {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->supportMultiApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e8

    iput p3, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p3, v8, :cond_d2

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-direct {v0, v7, v1, v4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_ff

    :cond_d2
    if-nez v1, :cond_e2

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-direct {v0, v8, v1, v4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_e2
    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_ff

    :cond_e8
    const-string v0, "DeepProtectedAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageProtectStateChanged, do not support multi app, packageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ff
    :goto_ff
    if-eq p2, v8, :cond_10c

    if-eq p3, v8, :cond_10c

    iget-object p2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    :cond_109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updatePackageUserToProtectState(Ljava/lang/String;II)V

    :cond_10c
    :goto_10c
    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result p1

    if-eqz p1, :cond_11d

    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mPrivateSafeInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_11a

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_11d

    :cond_11a
    invoke-virtual {p0, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivateSafeShortcutIfNeed(Z)V

    :cond_11d
    :goto_11d
    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->saveProtectedAppsToSharedPref(Ljava/util/concurrent/ConcurrentHashMap;)V

    monitor-exit v2

    return-void

    :catchall_124
    move-exception p0

    monitor-exit v2
    :try_end_126
    .catchall {:try_start_38 .. :try_end_126} :catchall_124

    throw p0
.end method

.method private packageProtectedStatusChangedTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private removeAppItem(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->notifyChange()V

    return-void
.end method

.method private removeItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeepProtectedAppsManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_26
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz p1, :cond_33

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeAppItem(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_33
    return-void
.end method

.method private savePrivacySwitchStateToSharedPref(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const-string/jumbo v0, "pref_local_privacy_switch_state"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private saveProtectedAppsToSharedPref(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->format()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const-string/jumbo v0, "pref_local_deep_protected_packages"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saveProtectedAppsToSharedPref: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeepProtectedAppsManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAllProtectedApps()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo v1, "showAllProtectedApps, no protected app!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    iget v6, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    if-ne v6, v5, :cond_5c

    iget-object v6, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v6}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v6

    iget-object v7, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_53

    iget-object v6, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v6, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_5c
    iget v6, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-ne v6, v5, :cond_29

    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-direct {p0, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->supportMultiApp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_75

    iget-object v5, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    sget-object v5, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_29

    :cond_75
    const-string v5, "DeepProtectedAppsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showAllProtectedApps, do not support multi app, pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_8f
    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->saveProtectedAppsToSharedPref(Ljava/util/concurrent/ConcurrentHashMap;)V

    const-string v3, "DeepProtectedAppsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showAllProtectedApps -- app size = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", multi app size = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v3, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, v5, v4, v1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_e8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_104

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    sget-object v3, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v2, v5, v3, v1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_104
    monitor-exit v0

    return-void

    :catchall_106
    move-exception p0

    monitor-exit v0
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_106

    throw p0
.end method

.method private supportMultiApp(Landroid/content/Context;)Z
    .registers 2

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    if-eqz p0, :cond_14

    sget-object p0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private updateItemInUiExecutor(Ljava/util/concurrent/Executor;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    new-instance v0, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v0, p0, p2}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updatePackageUserToProtectState(Ljava/lang/String;II)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_13

    if-ne p3, v2, :cond_6a

    :cond_13
    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-ne p2, v2, :cond_31

    new-instance p2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-direct {p2, v4, v1, v5}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_31
    const-string p2, "DeepProtectedAppsManager"

    if-ne p3, v2, :cond_64

    iget-object p3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-direct {p0, p3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->supportMultiApp(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4f

    new-instance p3, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-direct {p3, v4, v1, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_64

    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onPackageProtectStateChanged2, do not support multiApp, pkg = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    const-string/jumbo p0, "onPackageProtectStateChanged hide package[2]: "

    invoke-static {p0, p1, p2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-void
.end method


# virtual methods
.method public addAppItemFromLoaderTask(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 7

    invoke-static {p1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "DeepProtectedAppsManager"

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_4f

    :cond_1b
    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4e

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addAppItem(Lcom/android/launcher3/model/data/AppInfo;Z)V

    :cond_4e
    return-void

    :cond_4f
    :goto_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addItem: PackageName is null, item info: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 6

    invoke-static {p1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "DeepProtectedAppsManager"

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_50

    :cond_1b
    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4f

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    return-void

    :cond_50
    :goto_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addItem: PackageName is null, item info: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPrivacyApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivacyApp(Ljava/util/List;)V

    return-void
.end method

.method public addPrivacyApp(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    move v1, v2

    :cond_12
    const/4 v3, 0x5

    const-string/jumbo v4, "type_hide"

    if-eqz v0, :cond_47

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_35
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    sget v6, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    invoke-virtual {p1, v4, v2, v6}, Lcom/oplus/app/OPlusAccessControlManager;->setAccessControlEnabled(Ljava/lang/String;ZI)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    sget v6, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    invoke-virtual {p1, v4, v5, v6}, Lcom/oplus/app/OPlusAccessControlManager;->setAccessControlAppsInfo(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_47
    if-eqz v1, :cond_76

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_52
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_66
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p2

    const/16 v3, 0x3e7

    invoke-virtual {p2, v4, v2, v3}, Lcom/oplus/app/OPlusAccessControlManager;->setAccessControlEnabled(Ljava/lang/String;ZI)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p2

    invoke-virtual {p2, v4, p1, v3}, Lcom/oplus/app/OPlusAccessControlManager;->setAccessControlAppsInfo(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_76
    if-nez v0, :cond_7a

    if-eqz v1, :cond_7d

    :cond_7a
    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->notifyChange()V

    :cond_7d
    return-void
.end method

.method public addPrivacyApp(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isCurrentUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3a
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivacyApp(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public addPrivateSafeShortcutIfNeed(Z)V
    .registers 3

    new-instance v0, Lcom/android/common/util/g0;

    invoke-direct {v0, p0, p1}, Lcom/android/common/util/g0;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->enqueueModelTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canShowHideApps(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    const-string v1, "DeepProtectedAppsManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const-string p0, "canShowHideApps -- Hidden Apps folder is already open! "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p0, "canShowHideApps -- Launcher is in children mode now, can not enter private mode from children mode!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1f
    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p1, :cond_2c

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    return v2
.end method

.method public canShowHideAppsFromGesture(Landroid/content/Context;)Z
    .registers 5

    iget v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mAccessHiddenAppTimes:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result p0

    if-eqz p0, :cond_e

    return v1

    :cond_e
    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public checkHiddenAppsOnUserUnlocked()V
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getAccessControlSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->showAllProtectedApps()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_f
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string v2, "DeepProtectedAppsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkHiddenAppsOnUserUnlocked -- currentHiddenAppList.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->initPrivacyAppInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "DeepProtectedAppsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkHiddenAppsOnUserUnlocked -- sHiddenApps.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_69
    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    if-eqz v5, :cond_69

    invoke-static {v5, v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->equals(Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)Z

    move-result v5

    if-nez v5, :cond_97

    new-instance v5, Lcom/android/launcher/z;

    invoke-direct {v5, p0, v4, v6}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/String;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_97
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_69

    :cond_9e
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v4, p0, v3}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/util/Map$Entry;)V

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_a6

    :cond_bb
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    new-instance v4, Lcom/android/launcher/z;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/util/Map$Entry;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)V

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_c3

    :cond_de
    monitor-exit v0

    return-void

    :catchall_e0
    move-exception p0

    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_f .. :try_end_e2} :catchall_e0

    throw p0
.end method

.method public closeVirtualFolderIfOpened()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->closeVirtualFolderIfOpened(Z)Z

    move-result p0

    return p0
.end method

.method public createVirtualFolder()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 4

    const-string v0, "createVirtualFolder: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "generate_new_item_id"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const v0, 0x7fffffff

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_42

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_42
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const v2, 0x7f12024c

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public findItemInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 7
    .param p1  # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object v0

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppInfos()[Lcom/android/launcher3/model/data/AppInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/model/data/AppInfo;

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public getFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public getProtectHideAppSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    return-object p0
.end method

.method public init()V
    .registers 7

    const-string/jumbo v0, "try_to_set_access_code_times"

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "oplus.intent.action.SHOW_DEEP_PROTECT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_19
    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mAccessHiddenAppTimes:I

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    const-string/jumbo v1, "type_hide"

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mControlObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/app/OPlusAccessControlManager;->registerAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    const-string/jumbo v1, "type_encrypt"

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mControlObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/app/OPlusAccessControlManager;->registerAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    move-exception p0

    const-string v0, "init:register observer fail! e = "

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_56
    return-void
.end method

.method public initProtectedAppList()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_48

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getAccessControlSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsPrivacySwitchOn:Z

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->initPrivacyAppInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->saveProtectedAppsToSharedPref(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_2c

    :cond_28
    invoke-direct {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->initFromSharedPref()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_2f
    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_45

    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivateSafeShortcutIfNeed(Z)V

    goto :goto_48

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0

    :cond_48
    :goto_48
    return-void
.end method

.method public isHiddenAppsFolderOpen()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isNeedUpdateIconInLoaderTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mNeedUpdateIconInLoaderTask:Z

    return p0
.end method

.method public isPackageMultiProtected(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isPackageProtected(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_b
    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    invoke-static {p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isMultiUser(Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_46

    iget p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-ne p1, v2, :cond_46

    const-string p1, "DeepProtectedAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package is Protected: info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", user: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_46
    invoke-static {p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isCurrentUser(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_70

    iget p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    if-ne p1, v2, :cond_70

    const-string p1, "DeepProtectedAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package is Protected: info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", user: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_70
    monitor-exit v0

    return v1

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_b .. :try_end_74} :catchall_72

    throw p0
.end method

.method public isPrivacyApp(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p0

    sget v0, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    const-string/jumbo v1, "type_hide"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isProtectAppsFolder(Lcom/android/launcher3/folder/Folder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isWakeUpByBroadcast()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsWakeUpByBroadcast:Z

    return p0
.end method

.method public notifyChange()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/filter/DeepProtectedAppsManager$OnChangeCallback;

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getAppInfos()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager$OnChangeCallback;->onProtectedAppChange([Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public onBackPressed(Lcom/android/launcher/Launcher;)Z
    .registers 3
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "DeepProtectedAppsManager"

    const-string/jumbo v0, "onBackPressed: Close protected apps virtual folder if needed."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->closeVirtualFolderIfOpened()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->init()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->setVirtualFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    :try_start_4
    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    const-string/jumbo v0, "type_encrypt"

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mControlObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/app/OPlusAccessControlManager;->unregisterAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    const-string/jumbo v0, "type_hide"

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mControlObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {p1, v0, p0}, Lcom/oplus/app/OPlusAccessControlManager;->unregisterAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f

    goto :goto_38

    :catch_2f
    move-exception p0

    const-string/jumbo p1, "onDestroy:unregister observer fail! e = "

    const-string v0, "DeepProtectedAppsManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 2
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->closeVirtualFolderIfOpened()Z

    :cond_9
    return-void
.end method

.method public onPackageNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo p2, "onPackageNameChanged -- same package name! pkgName: "

    invoke-static {p2, p1, p0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageMultiProtected(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_1b

    if-eqz v1, :cond_46

    :cond_1b
    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->onPackageProtectStateChanged(Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_21
    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_47

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo v2, "onPackageNameChanged, o = "

    const-string v3, ", n = "

    const-string v4, ", pt = "

    invoke-static {v2, p1, v3, p2, v4}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mpt = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void

    :catchall_47
    move-exception p0

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "DeepProtectedAppsManager"

    const-string/jumbo v0, "onPause: Close protected apps virtual folder if needed."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->closeVirtualFolderIfOpened(Z)Z

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo p1, "onResume"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "DeepProtectedAppsManager"

    const-string/jumbo p2, "onSaveInstanceState: Close protected apps virtual folder if needed."

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->closeVirtualFolderIfOpened()Z

    return-void
.end method

.method public registerChangeCallback(Lcom/android/launcher/filter/DeepProtectedAppsManager$OnChangeCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public removePrivacyApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removePrivacyApp(Ljava/util/List;)V

    return-void
.end method

.method public removePrivacyApp(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isCurrentUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_44

    move p1, v2

    goto :goto_45

    :cond_44
    move p1, v3

    :goto_45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v3

    :goto_4d
    const-string/jumbo v4, "type_hide"

    if-eqz p1, :cond_78

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    :cond_6f
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    sget v6, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/oplus/app/OPlusAccessControlManager;->setAccessControlAppsInfo(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_78
    if-eqz v2, :cond_a0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    :cond_97
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    const/16 v3, 0x3e7

    invoke-virtual {v1, v4, v0, v3}, Lcom/oplus/app/OPlusAccessControlManager;->setAccessControlAppsInfo(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_a0
    if-nez p1, :cond_a4

    if-eqz v2, :cond_a7

    :cond_a4
    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->notifyChange()V

    :cond_a7
    return-void
.end method

.method public removeProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_17

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo p2, "removeProtectedApp, info is null! pkg = "

    invoke-static {p2, p1, p0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setNeedUpdateIconInLoaderTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mNeedUpdateIconInLoaderTask:Z

    return-void
.end method

.method public setVirtualFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    :cond_9
    iput-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    instance-of p0, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p0, :cond_15

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->initRuleForVirtual()V

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setVirtualFolderIcon: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeepProtectedAppsManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWakeUpByBroadcastFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mIsWakeUpByBroadcast:Z

    return-void
.end method

.method public showHideApps(Landroid/content/Context;)V
    .registers 5

    const-string v0, "DeepProtectedAppsManager"

    const-string/jumbo v1, "showHideApps "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "intent_from"

    const-string/jumbo v2, "open_hidden_folder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.HOME"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {p0, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showVirtualFolderIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    const-string v1, "DeepProtectedAppsManager"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "showVirtualFolderIfNeeded -- Folder is already opened!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1e
    if-ge v4, v2, :cond_2e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v6, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v6, v5, v3}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    sget-object v2, Lcom/android/common/sort/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v3

    :goto_3c
    if-ge v2, v0, :cond_d8

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v5, v6, v7}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isCloneAppEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_88

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    rem-int/lit8 v5, v2, 0x3

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rem-int/lit8 v5, v2, 0xc

    div-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-direct {p0, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPrivateSafeShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_7c

    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5, v4, v3, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    goto :goto_9d

    :cond_7c
    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5, v4, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_9d

    :cond_82
    iget-object v5, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5, v4, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_9d

    :cond_88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not showing in VirtualFolder - as itemInfo Disabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9d
    const-string/jumbo v4, "showVirtualFolderIfNeeded -- count: "

    invoke-static {v4, v0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-static {v4}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->hideAssistScreenIfShown()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    if-eqz v4, :cond_c6

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    new-instance v5, Lcom/android/launcher/filter/a;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/launcher/filter/a;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_c6
    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v4, :cond_d4

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v4

    const/4 v5, 0x6

    const-wide/16 v6, 0x2bc

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(IJ)V

    :cond_d4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    :cond_d8
    return-void
.end method

.method public unregisterChangeCallback(Lcom/android/launcher/filter/DeepProtectedAppsManager$OnChangeCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateHiddenPackage(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const-string v1, "DeepProtectedAppsManager"

    if-nez v0, :cond_d

    const-string/jumbo p0, "updateNewUpdatedAppFlag -- folderInfo is null, return!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedItems:Ljava/util/List;

    invoke-static {v0, p3, p4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getItem(Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHiddenPackage -- updateApp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_34

    const-string/jumbo p0, "updateHiddenPackage -- updateApp is null, return!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-static {p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p3

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_d8

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/launcher3/model/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_92

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateHiddenPackage - Changing launch component: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "] -> ["

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :cond_92
    const-string/jumbo v0, "updateHiddenPackage -- can not find activity for "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", need remvoe it!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0, p4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move v3, v2

    :cond_b4
    :goto_b4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b8
    :goto_b8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->findItemInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-virtual {p2, v0, p4, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    goto :goto_b8

    :cond_d6
    move v4, v3

    goto :goto_e0

    :cond_d8
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move v4, v2

    :goto_e0
    new-instance p2, Lcom/android/launcher/filter/b;

    move-object v2, p2

    move-object v3, p0

    move v6, p5

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/filter/b;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;ZLcom/android/launcher3/model/data/WorkspaceItemInfo;ZLjava/util/concurrent/Executor;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateIcons()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mContext:Lcom/android/common/LauncherApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mProtectedAppItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    :try_start_24
    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v4}, Lcom/oplus/compat/content/pm/PackageManagerNative;->clearCachedIconForActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    :try_end_29
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_42

    :catch_2a
    move-exception v4

    const-string/jumbo v5, "updateIcons error, "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeepProtectedAppsManager"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_16

    :cond_47
    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->notifyChange()V

    return-void
.end method

.method public updateNewUpdatedAppFlag(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V
    .registers 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DeepProtectedAppsManager"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "updateNewUpdatedAppFlag -- packageName is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_1a

    const-string/jumbo p0, "updateNewUpdatedAppFlag -- folderInfo is null, return!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_39

    const-string/jumbo v2, "updateNewUpdatedAppFlag -- itemInfo.mComponentName is null!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_39
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iput-boolean p3, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateItemInUiExecutor(Ljava/util/concurrent/Executor;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_20

    :cond_4d
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mVirtualFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_d

    const-string p0, "DeepProtectedAppsManager"

    const-string/jumbo p1, "updateNewUpdatedAppFlag -- mFolderIcon is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/launcher/j0;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher/j0;-><init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V

    invoke-direct {p0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Z

    return-void
.end method
