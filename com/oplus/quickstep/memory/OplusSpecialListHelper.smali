.class public Lcom/oplus/quickstep/memory/OplusSpecialListHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FILE_SYS_CONFIG:Ljava/lang/String; = "systemConfigList.xml"

.field private static final MULTI_RENAMED_PKG:Ljava/lang/String; = "pkg"

.field private static final MULTI_RENAME_NAME:Ljava/lang/String; = "name"

.field private static final OPLUS_CUSTOMIZE_PROTECT_SERVICE:Ljava/lang/String; = "OplusCustomizeProtectService"

.field private static final OPLUS_CUSTOMIZE_SERVICE:Ljava/lang/String; = "OplusCustomizeService"

.field private static final PATH_SYS_CONFIG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OplusSpecialListHelper"

.field private static final TAG_REDUNDENT_TASK:Ljava/lang/String; = "RedundentTaskClass"

.field private static final sInstance:Lcom/oplus/quickstep/memory/OplusSpecialListHelper;


# instance fields
.field private final mCallback:Landroid/content/pm/LauncherApps$Callback;

.field private final mCleanedTaskRecord:Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

.field private final mContext:Landroid/content/Context;

.field private mCustomizedPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceExludedFullActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceExludedFuzzyActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceExludedPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocaleChangedBroadcast:Landroid/content/BroadcastReceiver;

.field private final mMulitApp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiAppRenameBroadcast:Landroid/content/BroadcastReceiver;

.field private mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

.field private mRedundantTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRelativeTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12003c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->PATH_SYS_CONFIG:Ljava/lang/String;

    new-instance v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->sInstance:Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    new-instance v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper$1;-><init>(Lcom/oplus/quickstep/memory/OplusSpecialListHelper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    new-instance v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper$2;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper$2;-><init>(Lcom/oplus/quickstep/memory/OplusSpecialListHelper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMultiAppRenameBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper$3;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper$3;-><init>(Lcom/oplus/quickstep/memory/OplusSpecialListHelper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mLocaleChangedBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

    invoke-direct {v0}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCleanedTaskRecord:Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->initData()V

    invoke-direct {p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->registerReceivers()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/memory/OplusSpecialListHelper;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->updateRenamedApp(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->sInstance:Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    return-object v0
.end method

.method private initData()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRelativeTasks:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedPkgs:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedFullActivities:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedFuzzyActivities:Ljava/util/List;

    sget-object v0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->PATH_SYS_CONFIG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "systemConfigList.xml"

    const-string v2, "RedundentTaskClass"

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/OplusFileUtil;->getListFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRedundantTasks:Ljava/util/List;

    :cond_5e
    new-instance v0, Landroid/app/OplusWhiteListManager;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/OplusWhiteListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    const/4 v1, 0x0

    const-string v2, "OplusCustomizeProtectService"

    invoke-virtual {v0, v2, v1}, Landroid/app/OplusWhiteListManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCustomizedPkgs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->updateMultiAppList()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initData: init result: mRelativeTasks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRelativeTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mForceExludedPkgs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedPkgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mForceExludedFullActivities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedFullActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mForceExludedFuzzyActivities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedFuzzyActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mRedundantTasks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRedundantTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mCustomizedPkgs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCustomizedPkgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mMulitApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusSpecialListHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerReceivers()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oplus.intent.action.MULTI_APP_RENAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMultiAppRenameBroadcast:Landroid/content/BroadcastReceiver;

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mLocaleChangedBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method private updateRenamedApp(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRenamedApp: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusSpecialListHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2e

    const-string p1, ""

    :cond_2e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    return-void
.end method


# virtual methods
.method public clearTaskRecorderIfNeeded(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCleanedTaskRecord:Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->clearTaskRecorder(I)V

    return-void
.end method

.method public getRenameAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public isCleanedTask(I)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCleanedTaskRecord:Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->isCleanedTask(I)Z

    move-result p0

    return p0
.end method

.method public isCustomizedPkg(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    if-eqz v0, :cond_5d

    const-string v1, "OplusCustomizeService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/OplusWhiteListManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "OplusSpecialListHelper"

    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCustomizedPkg, protectPkgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p0, 0x1

    return p0

    :cond_39
    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCustomizedPkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    const-string v3, "OplusCustomizeProtectService"

    invoke-virtual {v0, v3, v2}, Landroid/app/OplusWhiteListManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCustomizedPkgs:Ljava/util/List;

    const-string v0, "isCustomizedPkg, mCustomizedPkgs: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCustomizedPkgs:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCustomizedPkgs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForceExludedTask(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedPkgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedFullActivities:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mForceExludedFuzzyActivities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public isRedundantTask(Landroid/content/Intent;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public isRedundantTask(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "isRedundantTask activityName:"

    const-string v1, ",mRedundantTasks:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRedundantTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSpecialListHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRedundantTasks:Ljava/util/List;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRedundantTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public isRelativeTask(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mRelativeTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCleanAllTasks(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCleanedTaskRecord:Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->onCleanAllTask(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public setRunningTaskId(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mCleanedTaskRecord:Lcom/oplus/quickstep/memory/CleanedTaskRecorder;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->setRunningTaskId(I)V

    return-void
.end method

.method public updateMultiAppList()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->mMulitApp:Ljava/util/Map;

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method
