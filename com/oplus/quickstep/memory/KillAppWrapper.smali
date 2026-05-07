.class public Lcom/oplus/quickstep/memory/KillAppWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;
    }
.end annotation


# static fields
.field private static final ATHENA_CLEAN_RUNNING_ACTION:Ljava/lang/String; = "oplus.intent.action.REQUEST_APP_CLEAN_RUNNING"

.field private static final ATHENA_FORCE_STOP_ACTION:Ljava/lang/String; = "oplus.intent.action.REQUEST_CLEAR_SPEC_APP"

.field private static final ATHENA_PACKAGE:Ljava/lang/String; = "com.oplus.athena"

.field private static final BACKUPRESTORE_PACKAGE:Ljava/lang/String;

.field private static final BUNDLE_SCENE:Ljava/lang/String; = "scene"

.field private static final BUNDLE_TARGET_MEM:Ljava/lang/String; = "target_mem"

.field private static final CALL_CLEANER_ACTION:Ljava/lang/String; = "oplus.intent.action.SCENE_CHANGE_NOTIFY"

.field private static final CEMERA_PACKAGE:Ljava/lang/String; = "com.oplus.camera"

.field private static final CLEANER_PACKAGE:Ljava/lang/String; = "com.oplus.athena"

.field private static final EXTRA_CLEAR_CALLER_PKG:Ljava/lang/String; = "caller_package"

.field private static final EXTRA_CLEAR_FILTER_ACTIVITY_NAME:Ljava/lang/String; = "KillAppFilterActivityName"

.field private static final EXTRA_CLEAR_FILTER_PKG_ARRAY:Ljava/lang/String; = "filterapplist"

.field private static final EXTRA_CLEAR_FILTER_PKG_NAME:Ljava/lang/String; = "KillAppFilterName"

.field private static final EXTRA_CLEAR_FILTER_TASKID:Ljava/lang/String; = "KillAppFilterTaskId"

.field private static final EXTRA_CLEAR_FILTER_USERID:Ljava/lang/String; = "KillAppFilterUserId"

.field private static final EXTRA_CLEAR_NEED_CLEAN_TRASH:Ljava/lang/String; = "clean_trash"

.field private static final EXTRA_CLEAR_NEED_CLEAR_SYS_TASK:Ljava/lang/String; = "clear_system"

.field private static final EXTRA_CLEAR_NEED_CLEAR_TASK:Ljava/lang/String; = "clear_task"

.field private static final EXTRA_CLEAR_NEED_SHOW_TOAST:Ljava/lang/String; = "IsShowCleanFinishToast"

.field private static final INCALLUI_PACKAGE:Ljava/lang/String; = "com.android.incallui"

.field private static final RECENTS_APP_PKG_NAME:Ljava/lang/String; = "com.oplus.recents"

.field private static final REQUEST_TYPE_KILL_OR_STOP:I = 0xb

.field private static final REQUEST_TYPE_STOP:I = 0xd

.field private static final TAG:Ljava/lang/String; = "KillAppWrapper"

.field private static final TARGET_CAMERA_MEM:I = 0x8cc


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12002b

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/memory/KillAppWrapper;->BACKUPRESTORE_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/memory/KillAppWrapper;->lambda$forceStopIfNeeded$1(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->lambda$clearCacheForCamera$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/memory/KillAppWrapper;->lambda$clearAllTasksExcept$2(Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V

    return-void
.end method

.method public static canRemoveTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v0

    :cond_11
    sget-object v2, Lcom/oplus/quickstep/memory/KillAppWrapper;->BACKUPRESTORE_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "KillAppWrapper"

    if-eqz v3, :cond_30

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isInTopPackage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string p0, "cannot remove special foreground task"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_30
    const-string v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string p0, "cannot remove special task"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3e
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isCustomizedPkg(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    const-string p0, "cannot remove customized task"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_54
    return v0
.end method

.method public static clearAllTasksDryRun(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ls/c;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Ls/c;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static varargs clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->setHasCleaned(Z)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher/z;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/launcher/z;-><init>(Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clearCacheForCamera(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "com.oplus.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFastClearForCamera()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Ls/c;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Ls/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method private static clearCacheForCameraProc(Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "KillAppWrapper"

    const-string v1, "clearCacheForCamera"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oplus.intent.action.SCENE_CHANGE_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oplus.athena"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "caller_package"

    const-string v4, "com.oplus.camera"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "scene"

    const-string v4, "camera_startup"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8cc

    const-string v4, "target_mem"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_33
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    const-string p0, "clearCacheForCamera Exception"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->lambda$clearAllTasksDryRun$3(Landroid/content/Context;)V

    return-void
.end method

.method private static forceStopApp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    new-instance v0, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;

    invoke-direct {v0}, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;->uid:I

    iput p1, v0, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;->userId:I

    iput-object p2, v0, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;->pkgName:Ljava/lang/String;

    iput-object p3, v0, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;->activityName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, p4, p5}, Lcom/oplus/quickstep/memory/KillAppWrapper;->forceStopAppList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method

.method private static forceStopAppList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_55

    :cond_9
    const-string v0, "com.oplus.recents"

    if-eqz p2, :cond_13

    const-string v1, "."

    invoke-static {v0, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    new-instance p2, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.REQUEST_CLEAR_SPEC_APP"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oplus.athena"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "caller_package"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_29

    const/16 p3, 0xb

    goto :goto_2b

    :cond_29
    const/16 p3, 0xd

    :goto_2b
    const-string v0, "type"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;

    invoke-virtual {v0}, Lcom/oplus/quickstep/memory/KillAppWrapper$ForceStopInfo;->getInfoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_4d
    const-string p1, "list"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_55
    :goto_55
    return-void
.end method

.method public static forceStopIfNeeded(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopIfNeeded: task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "KillAppWrapper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->setHasRemovedTask(Z)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p1, p0}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static synthetic lambda$clearAllTasksDryRun$3(Landroid/content/Context;)V
    .registers 6

    const-string v0, "KillAppWrapper"

    const-string v1, "QuickStep"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "oplus.intent.action.REQUEST_APP_CLEAN_RUNNING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.oplus.athena"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "caller_package"

    const-string v4, "com.oplus.recents"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "IsShowCleanFinishToast"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "clear_task"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "clear_system"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "clean_trash"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_2c
    const-string v3, "clearAllTasksDryRun"

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_39

    goto :goto_4e

    :catch_39
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllTasksDryRun Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method private static synthetic lambda$clearAllTasksExcept$2(Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V
    .registers 9

    const-string v0, "KillAppWrapper"

    const-string v1, "QuickStep"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "oplus.intent.action.REQUEST_APP_CLEAN_RUNNING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.oplus.athena"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "caller_package"

    const-string v4, "com.oplus.recents"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "IsShowCleanFinishToast"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "clear_task"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "clear_system"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "clean_trash"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "KillAppFilterName"

    if-nez v3, :cond_37

    invoke-virtual {v2, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_37
    if-eqz p1, :cond_93

    array-length p0, p1

    const/4 v3, 0x0

    if-ne p0, v4, :cond_72

    aget-object p0, p1, v3

    if-eqz p0, :cond_72

    aget-object p0, p1, v3

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    aget-object p0, p1, v3

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    const-string v4, "KillAppFilterUserId"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    aget-object p0, p1, v3

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v4, "KillAppFilterTaskId"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    aget-object p0, p1, v3

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "KillAppFilterActivityName"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_93

    :cond_72
    array-length p0, p1

    if-le p0, v4, :cond_93

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    :goto_7b
    if-ge v3, v4, :cond_8e

    aget-object v5, p1, v3

    if-nez v5, :cond_82

    goto :goto_8b

    :cond_82
    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_8e
    const-string v3, "filterapplist"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_93
    :goto_93
    :try_start_93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start to call app clean service except "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ae} :catch_af

    goto :goto_c4

    :catch_af
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clearAllTasksExcept Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c4
    return-void
.end method

.method private static synthetic lambda$clearCacheForCamera$0(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearCacheForCameraProc(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$forceStopIfNeeded$1(Lcom/android/systemui/shared/recents/model/Task;Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_7

    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    goto :goto_8

    :cond_7
    const/4 v1, -0x1

    :goto_8
    move v3, v1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceStopIfNeeded: userId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pkgName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activityName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "KillAppWrapper"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/oplus/quickstep/memory/KillAppWrapper;->forceStopApp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
