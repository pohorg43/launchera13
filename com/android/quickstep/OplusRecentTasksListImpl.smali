.class public final Lcom/android/quickstep/OplusRecentTasksListImpl;
.super Lcom/android/quickstep/RecentTasksList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;
    }
.end annotation


# static fields
.field private static final ACTIONS_ACTIVITY:Ljava/lang/String; = "com.oplus.quickstep.locksetting.ui.GoogleActionsActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;

.field private static final KEY_PAYMENT_PROTECTION_LIST:Ljava/lang/String; = "secure_pay_config"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_PROTECTION:Ljava/lang/String; = "enabled_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_QUICK_STARTUP_LIST:Ljava/lang/String; = "HeatGameConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusRecentTasksListImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private lastLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusRecentTasksListImpl;->Companion:Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V
    .registers 5

    const-string v0, "mainThreadExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysUiProxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentTasksList;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private final checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 11

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p0, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getKeyByUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isAppProtected(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ", "

    const-string v2, ", key = "

    const-string v3, "checkIfContentProtected(), pkg = "

    const-string v4, "OplusRecentTasksListImpl"

    const-string v5, "QuickStep"

    const/4 v6, 0x1

    if-eqz v0, :cond_8a

    iput-boolean v6, p1, Lcom/android/systemui/shared/recents/model/Task;->isAppSupportPaymentProtect:Z

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v7, v8}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPaymentProtectComponent(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iput-boolean v6, p1, Lcom/android/systemui/shared/recents/model/Task;->isPaymentProtect:Z

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isContentProtectClosed(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v6

    iput-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    :cond_4c
    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isAppSupportPaymentProtect = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shared/recents/model/Task;->isAppSupportPaymentProtect:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isPaymentProtect = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shared/recents/model/Task;->isPaymentProtect:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isContentProtect = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isContentProtectOpened(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iput-boolean v6, p1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isContentProtectOpened = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    return-void
.end method

.method private final checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_5

    goto :goto_d

    :cond_5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_d

    move p0, v0

    :cond_d
    :goto_d
    if-eqz p0, :cond_2a

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "excludedTasks(), isSupportQuickStartup, "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "QuickStep"

    const-string v1, "OplusRecentTasksListImpl"

    invoke-static {p2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    :cond_2a
    return-void
.end method

.method private final checkTaskIsLandscape(Lcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .registers 4

    iget-object p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_6

    const/4 p2, -0x1

    goto :goto_8

    :cond_6
    iget p2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :goto_8
    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusRecentTasksListImpl;->isLandscape(I)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/shared/recents/model/Task;->isTaskLandscape:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "checkTaskIsLandscape: screenOrientation="

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentTasksListImpl"

    invoke-static {p2, p0, p1, v0}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private final declared-synchronized excludedTasks(IILcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityManager$RecentTaskInfo;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object p4, p4, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_9

    :cond_7
    :goto_7
    move p4, v0

    goto :goto_19

    :cond_9
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_10

    goto :goto_7

    :cond_10
    const-string v2, "com.oplus.quickstep.locksetting.ui.GoogleActionsActivity"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-ne p4, v1, :cond_7

    move p4, v1

    :goto_19
    if-eqz p4, :cond_26

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksListImpl"

    const-string p3, "excludedTasks(), filtered actions task."

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_b2

    monitor-exit p0

    return v1

    :cond_26
    sub-int/2addr p1, v1

    if-ne p2, p1, :cond_3e

    :try_start_29
    invoke-direct {p0, p3}, Lcom/android/quickstep/OplusRecentTasksListImpl;->isForceExcluded(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksListImpl"

    const-string p4, "excludedTasks(), force execlude: "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_b2

    monitor-exit p0

    return v1

    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object p1

    iget-object p2, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p4, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1, p2, p4}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_61

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksListImpl"

    const-string p4, "excludedTasks(), filtered hidden: "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_b2

    monitor-exit p0

    return v1

    :cond_61
    :try_start_61
    invoke-direct {p0, p3, p5}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V

    invoke-direct {p0, p3}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    iget-object p2, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isCleanedTask(I)Z

    move-result p1

    if-eqz p1, :cond_95

    iget-boolean p1, p3, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    if-nez p1, :cond_95

    iget-object p1, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 p2, 0x64

    if-eq p1, p2, :cond_95

    iget p1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksListImpl"

    const-string p4, "excludedTasks(), filtered cleaned: "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_61 .. :try_end_93} :catchall_b2

    monitor-exit p0

    return v1

    :cond_95
    :try_start_95
    iget-object p1, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeIconBannedInRecentTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b0

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksListImpl"

    const-string p4, "excludedTasks(), filtered company customize: "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_95 .. :try_end_ae} :catchall_b2

    monitor-exit p0

    return v1

    :cond_b0
    monitor-exit p0

    return v0

    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final isForceExcluded(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 4

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_13

    goto :goto_1b

    :cond_13
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v1, p1

    :goto_1b
    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isForceExludedTask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final isLandscape(I)Z
    .registers 2

    if-eqz p1, :cond_10

    const/4 p0, 0x6

    if-eq p1, p0, :cond_10

    const/16 p0, 0x8

    if-eq p1, p0, :cond_10

    const/16 p0, 0xb

    if-ne p1, p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method


# virtual methods
.method public copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_9

    goto/16 :goto_92

    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string v2, "it.task1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iget v6, v1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget-boolean v7, v1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iget-boolean v8, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iget-object v9, v1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v10, v1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    iget-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    iget-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isAppSupportPaymentProtect:Z

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isAppSupportPaymentProtect:Z

    iget-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isPaymentProtect:Z

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isPaymentProtect:Z

    iget-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    iget-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    iget-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isTaskLandscape:Z

    iput-boolean v1, v2, Lcom/android/systemui/shared/recents/model/Task;->isTaskLandscape:Z

    const/4 v1, 0x0

    iget-object v3, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v3, :cond_56

    goto :goto_86

    :cond_56
    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v3, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iget v7, v3, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget-boolean v8, v3, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iget-boolean v9, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iget-object v10, v3, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v11, v3, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isAppSupportPaymentProtect:Z

    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isAppSupportPaymentProtect:Z

    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isPaymentProtect:Z

    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isPaymentProtect:Z

    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isTaskLandscape:Z

    iput-boolean v3, v1, Lcom/android/systemui/shared/recents/model/Task;->isTaskLandscape:Z

    :goto_86
    new-instance v3, Lcom/android/quickstep/util/GroupTask;

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_92
    :goto_92
    return-object p0
.end method

.method public final getLastLoadedTasks()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    .registers 23

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    iget-object v0, v6, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object v9

    const-string v0, "rawTasks"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lz2/r;->J(Ljava/util/List;)V

    new-instance v10, Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;

    invoke-direct {v10, v6}, Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;-><init>(Lcom/android/quickstep/OplusRecentTasksListImpl;)V

    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object v0

    const-string v1, "HeatGameConfig"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusCommonConfig;->getConfigInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "loadTasksInBackground(), QuickStartup, bundle="

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "QuickStep"

    const-string v12, "OplusRecentTasksListImpl"

    invoke-static {v11, v12, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v0, :cond_3f

    goto :goto_45

    :cond_3f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_48

    :goto_45
    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_a0

    :cond_48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "|"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x6

    invoke-static {v4, v5, v3, v3, v13}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v2

    if-eqz v13, :cond_51

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadTasksInBackground(), QuickStartup, it = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " app="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_9f
    move-object v13, v1

    :goto_a0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v15, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-direct {v15, v7, v8, v14}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    if-lez v14, :cond_1bc

    move v2, v3

    :goto_ac
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    if-nez v0, :cond_bd

    move v8, v5

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    goto/16 :goto_1ae

    :cond_bd
    iget-object v4, v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo1:Landroid/app/ActivityManager$RecentTaskInfo;

    const-string v1, "rawTask.mTaskInfo1"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo2:Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v1, v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz v8, :cond_d5

    move/from16 p1, v5

    new-instance v5, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v5, v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_e1

    :cond_d5
    move/from16 p1, v5

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    :goto_e1
    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    const-string/jumbo v1, "task1"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5, v4}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkTaskIsLandscape(Lcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityManager$RecentTaskInfo;)V

    if-eqz v3, :cond_117

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz v8, :cond_fe

    move-object/from16 v16, v9

    new-instance v9, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v9, v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_10a

    :cond_fe
    move-object/from16 v16, v9

    iget v9, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    invoke-static {v1, v3, v9}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    :goto_10a
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    iput-boolean v1, v9, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    const/4 v1, 0x0

    goto :goto_11b

    :cond_117
    move-object/from16 v16, v9

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_11b
    iput-boolean v1, v5, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    iget-object v0, v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mStagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {v6, v0}, Lcom/android/quickstep/RecentTasksList;->convertSplitBounds(Lcom/android/wm/shell/util/StagedSplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    move-result-object v1

    if-nez v3, :cond_13a

    move-object/from16 v0, p0

    move-object/from16 v17, v10

    move-object v10, v1

    move v1, v14

    move-object/from16 v18, v3

    move-object v3, v5

    move/from16 v8, p1

    move-object v7, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/OplusRecentTasksListImpl;->excludedTasks(IILcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityManager$RecentTaskInfo;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_142

    goto/16 :goto_1ae

    :cond_13a
    move/from16 v8, p1

    move-object/from16 v18, v3

    move-object v7, v5

    move-object/from16 v17, v10

    move-object v10, v1

    :cond_142
    if-eqz v18, :cond_153

    invoke-direct {v6, v7, v13}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v9, v13}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkIfSupportQuickStartup(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/ArrayList;)V

    invoke-direct {v6, v7}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-direct {v6, v9}, Lcom/android/quickstep/OplusRecentTasksListImpl;->checkIfContentProtected(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadTasksInBackground(), task1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v0, v7, v9, v10}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_1ab

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-nez v1, :cond_17f

    goto :goto_18b

    :cond_17f
    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, v2, :cond_18b

    const/4 v1, 0x1

    goto :goto_18c

    :cond_18b
    :goto_18b
    const/4 v1, 0x0

    :goto_18c
    if-eqz v1, :cond_191

    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_196

    :cond_191
    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_196
    const-string v3, "if (firstTaskIsLeftTopTa…k1 else groupTask.task2!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1a0

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_1a2

    :cond_1a0
    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    :goto_1a2
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1a9

    goto :goto_1ab

    :cond_1a9
    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    :cond_1ab
    :goto_1ab
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1ae
    if-lt v8, v14, :cond_1b1

    goto :goto_1bc

    :cond_1b1
    move/from16 v7, p2

    move v2, v8

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v8, p3

    goto/16 :goto_ac

    :cond_1bc
    :goto_1bc
    const-string v0, "loadTasksInBackground(), rawTaskCount="

    const-string v1, ", allTasksCount="

    invoke-static {v0, v14, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loadKeysOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-static {v0, v1, v11, v12}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public onloadTasksInBackgroundFinish(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusRecentTasksListImpl;->copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getLastLoadedTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-void
.end method
