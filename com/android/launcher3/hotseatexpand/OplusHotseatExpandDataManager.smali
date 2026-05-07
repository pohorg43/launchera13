.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;
    }
.end annotation


# static fields
.field private static final EXPAND_UPDATING_DELAY_200:J = 0xc8L

.field public static final EXPAND_UPDATING_DELAY_LONG:J = 0x320L

.field public static final EXPAND_UPDATING_DELAY_SHORT:J = 0x32L

.field private static final EXPAND_UPDATING_ON_TASK_STACK_CHANGE_MAX_DELAY:J = 0x258L

.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

.field private static final TAG:Ljava/lang/String; = "OplusHotseatExpandDataManager"

.field private static appConnectDataItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static appConnectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

.field private static enableUpdateExpandFlag:Z

.field private static final expandSourceCallingPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static expandUpdatingFlag:Z

.field private static finishedUpdateExpandFlag:Z

.field private static lastFinalShownExpandDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static launchAppAnimationEndTime:J

.field private static launchIntentPkgCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static launcherFinishBindFlag:Z

.field private static multiRecommendAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static noLaunchIntentPkgCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static recentTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final updateRecentTaskRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandSourceCallingPackageMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/launcher/c0;->e:Lcom/android/launcher/c0;

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/common/util/a;->f:Lcom/android/common/util/a;

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launchIntentPkgCacheList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->noLaunchIntentPkgCacheList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData$lambda-3$lambda-2(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static final assembleDockerExpandDataToShow(Z)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const-string v1, "OplusHotseatExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-nez v0, :cond_10

    const-string p0, "assembleDockerExpandDataToShow return,not support docker expand device"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string p0, "assembleDockerExpandDataToShow return,expand dock switch off"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->enableUpdateExpandFlag:Z

    if-nez v0, :cond_31

    const-string p0, "assembleDockerExpandDataToShow launcher is not finish bind,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_38

    return-void

    :cond_38
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_43

    return-void

    :cond_43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v6, "container"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatNormalItemPackages(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "assembleDockerExpandDataToShow,curNormalAreaPkg.size:"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "assembleDockerExpandDataToShow,curNormalAreaPkg"

    invoke-static {v6, v5}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->printHotseatExpandData(Ljava/lang/String;Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "assembleDockerExpandDataToShow,recentTaskList.size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",multiRecommendAppList.size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",appConnectList.size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",isInSplitScreenMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",launcher.isResumed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",forceUpdate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_ef

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v6

    if-eqz v6, :cond_ef

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_e4

    sget-object v6, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f4

    :cond_e4
    sget-object v6, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    sget-object v6, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f4

    :cond_ef
    sget-object v6, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_f4
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v6, :cond_125

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_125

    move v10, v9

    :goto_106
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_120

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v8, :cond_120

    goto :goto_125

    :cond_120
    if-le v11, v6, :cond_123

    goto :goto_125

    :cond_123
    move v10, v11

    goto :goto_106

    :cond_125
    :goto_125
    sget-object v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_151

    const-string v3, "assembleDockerExpandDataToShow,add appConnect"

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v8, :cond_148

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    sget-object v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_151

    :cond_148
    sget-object v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_151
    :goto_151
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_15e

    invoke-static {v4}, Lz2/r;->J(Ljava/util/List;)V

    :cond_15e
    const-string v3, "assembleDockerExpandDataToShow,finalToShowExpandPackages.size:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",expandUpdatingFlag:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandUpdatingFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "assembleDockerExpandDataToShow final to show"

    invoke-static {v3, v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->printHotseatExpandData(Ljava/lang/String;Ljava/util/List;)V

    if-nez p0, :cond_193

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_193

    const-string p0, "assembleDockerExpandDataToShow,expand data not real changed,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v7, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    return-void

    :cond_193
    sget-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandUpdatingFlag:Z

    if-eqz p0, :cond_1b2

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1aa

    const-string p0, "assembleDockerExpandDataToShow,expandUpdating,delay 500ms to update"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x320

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateExpandItemDelay(J)V

    goto :goto_1b1

    :cond_1aa
    const-string p0, "assembleDockerExpandDataToShow,is expandUpdating,and expand data not real changed,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v7, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    :goto_1b1
    return-void

    :cond_1b2
    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1c6

    goto :goto_1ca

    :cond_1c6
    invoke-static {v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->needUpdateExpandItem(Ljava/util/ArrayList;)Z

    move-result v7

    :goto_1ca
    xor-int/lit8 p0, v7, 0x1

    sput-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    sput-boolean v7, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandUpdatingFlag:Z

    const-string p0, "assembleDockerExpandDataToShow,needUpdate:"

    invoke-static {v7, p0, v2, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_1da

    invoke-static {v0, v4, v9}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandItemUpdateHelper;->updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    :cond_1da
    return-void
.end method

.method private static final assembleDockerExpandDataToShowRunnable$lambda-0()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "OplusHotseatExpandDataManager"

    const-string v2, "assembleDockerExpandDataToShowRunnable run"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setExpandUpdatingFlag(Z)V

    invoke-static {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShow(Z)V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable$lambda-1()V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShowRunnable$lambda-0()V

    return-void
.end method

.method public static final checkAndRemoveDuplicateItem(Ljava/lang/String;ZJ)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_10

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->curExpandItemsContainThisPkg(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    :cond_10
    const-string p0, "Hotseat_expand"

    const-string p1, "OplusHotseatExpandDataManager"

    const-string v0, "checkAndRemoveDuplicateItem to update hotseat recent task"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateExpandItemDelay(J)V

    return-void
.end method

.method public static final clearDockerAppConnectData(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clearDockerAppConnectData,needUpdateUi:"

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandDataManager"

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->setShowExpandGuidTipType(I)V

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShow(Z)V

    :cond_1e
    return-void
.end method

.method private static final curExpandItemsContainThisPkg(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_15
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getCurrentHotseatExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v4, 0x3e7

    if-ne v2, v4, :cond_3d

    const-string v2, "_999"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3d
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_45
    return v0
.end method

.method public static synthetic d(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData$lambda-3(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final feedbackExpandClickEventIfNecessary(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clickItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "feedbackExpandClickEventIfNecessary clickPkg:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_32

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->sendBroadCastFeedbackExpandItemClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public static final findExpandItemByExpandType(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_29

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    goto :goto_42

    :cond_14
    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_42

    :cond_1b
    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_42

    :cond_22
    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_42

    :cond_29
    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    :cond_41
    move v1, v0

    :cond_42
    :goto_42
    return v1
.end method

.method private static final gatherRecentPkgFormRecentTask(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    move v1, v3

    goto :goto_24

    :cond_23
    move v1, v4

    :goto_24
    const-string v5, "_999"

    const/16 v6, 0x3e7

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    goto :goto_46

    :cond_33
    iget-object v7, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v7, v6, :cond_43

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_43
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_52

    :cond_50
    :goto_50
    move v1, v4

    goto :goto_64

    :cond_52
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v1, :cond_57

    goto :goto_50

    :cond_57
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-nez v1, :cond_5c

    goto :goto_50

    :cond_5c
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-nez v1, :cond_50

    move v1, v3

    :goto_64
    xor-int/2addr v1, v3

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_6c

    goto :goto_4

    :cond_6c
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    goto :goto_4

    :cond_73
    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_79

    :cond_77
    :goto_77
    move v3, v4

    goto :goto_82

    :cond_79
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_7e

    goto :goto_77

    :cond_7e
    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v6, :cond_77

    :goto_82
    if-eqz v3, :cond_8d

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8d
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_92
    return-void
.end method

.method public static final isFinishUpdateExpandItems()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1b

    :cond_d
    sget-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    const-string v1, "isFinishUpdateExpandItems:"

    const-string v2, "Hotseat_expand"

    const-string v3, "OplusHotseatExpandDataManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method private static final needUpdateExpandItem(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getCurrentHotseatExpandItem()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_d

    :cond_20
    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needUpdateExpandItemUi old expand pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hotseat_expand"

    const-string v6, "OplusHotseatExpandDataManager"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3e7

    if-ne v2, v4, :cond_54

    const-string v2, "_999"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_58
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final onLaunchAppAnimationEnd()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    const-string v3, "onLaunchAppAnimationEnd,hasDelayRunnable:"

    const-string v4, "Hotseat_expand"

    const-string v5, "OplusHotseatExpandDataManager"

    invoke-static {v1, v3, v4, v5}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;Z)V

    :cond_2b
    return-void
.end method

.method public static final onTaskStackChangedBackground()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-wide v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launchAppAnimationEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "onTaskStackChangedBackground,delayTime:"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hotseat_expand"

    const-string v4, "OplusHotseatExpandDataManager"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_2e

    const-wide/16 v4, 0x258

    cmp-long v2, v0, v4

    if-gez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    if-eqz v2, :cond_35

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskDelay(J)V

    goto :goto_4c

    :cond_35
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;Z)V

    :goto_4c
    return-void
.end method

.method public static final resetStateForUpdateExceptionReturn()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandUpdatingFlag:Z

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final updateAppConnectExpandDataIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const-string v1, "OplusHotseatExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-nez v0, :cond_16

    const-string/jumbo p0, "updateAppConnectExpandDataIfNeeded not support docker expand device,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_d1

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;

    if-nez v0, :cond_33

    :cond_31
    :goto_31
    move v3, v5

    goto :goto_46

    :cond_33
    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_31

    :cond_3a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    if-ne v4, v6, :cond_31

    :goto_46
    if-nez v3, :cond_d1

    const-string v3, "iconsize changed need recreate bitmap"

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "appConnectList[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_5f

    move-object v3, v2

    goto :goto_63

    :cond_5f
    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    :goto_63
    if-nez v0, :cond_67

    move-object v4, v2

    goto :goto_6b

    :cond_67
    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getSubIconUrl()Ljava/lang/String;

    move-result-object v4

    :goto_6b
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v1, v3, v4, v6}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataParser;->createAppConnectBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_7c

    return-void

    :cond_7c
    if-nez v0, :cond_7f

    goto :goto_82

    :cond_7f
    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_82
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getCurrentHotseatExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_ae

    :goto_ac
    move-object v0, v2

    goto :goto_b9

    :cond_ae
    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b5

    goto :goto_ac

    :cond_b5
    invoke-static {v0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    :goto_b9
    iput-object v0, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusHotseat;->getFirstExpandItem(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_cb

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    :cond_cb
    if-nez v2, :cond_ce

    goto :goto_d1

    :cond_ce
    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_d1
    :goto_d1
    return-void
.end method

.method public static final updateDockerAppConnectData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appConnectData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "updateDockerAppConnectData appConnectData.size:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->setShowExpandGuidTipType(I)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShow(Z)V

    return-void
.end method

.method public static final updateDockerRecentTaskData(Landroid/content/Context;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const-string v1, "OplusHotseatExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-nez v0, :cond_16

    const-string/jumbo p0, "updateDockerRecentTaskData not support docker expand device,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo p0, "updateDockerRecentTaskData return,expand dock switch off"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->enableUpdateExpandFlag:Z

    if-nez v0, :cond_39

    const-string/jumbo p0, "updateDockerRecentTaskData launcher is not finish bind,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    const/4 v0, 0x1

    if-eqz p1, :cond_48

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheck(Z)Z

    move-result v3

    if-eqz v3, :cond_48

    const-string p0, "finishBind to updateDockerRecentTaskData dockExpandStateError return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_48
    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_54

    const-string p0, "recent tasks service is not initialized"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    sget-object v1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/common/util/z;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/common/util/z;-><init>(Landroid/content/Context;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateDockerRecentTaskData$lambda-3(Landroid/content/Context;Z)V
    .registers 7

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Hotseat_expand"

    const-string v3, "OplusHotseatExpandDataManager"

    const-string/jumbo v4, "start get recent task"

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v3}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/RecentsModel;

    new-instance v3, Lcom/android/launcher3/hotseatexpand/b;

    invoke-direct {v3, v0, p0, v1, p1}, Lcom/android/launcher3/hotseatexpand/b;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method private static final updateDockerRecentTaskData$lambda-3$lambda-2(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .registers 14

    const-string v0, "$currentTaskPkgList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentValidTaskPkgList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_14

    move-object v1, v0

    goto :goto_1c

    :cond_14
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1c
    const-string v2, "recentTask.size:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hotseat_expand"

    const-string v3, "OplusHotseatExpandDataManager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-static {p4}, Lz2/r;->J(Ljava/util/List;)V

    :goto_2f
    const/4 v1, 0x1

    if-eqz p4, :cond_10d

    invoke-static {p0, p4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->gatherRecentPkgFormRecentTask(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_10d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, p4, v5}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_54

    goto :goto_39

    :cond_54
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const-string v5, "pkg"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "_999"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {p4, v5, v6, v7}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-eqz v8, :cond_69

    sget-object v4, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    :cond_69
    invoke-static {p4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getRealPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_8d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAvailableRecentTaskPkg,pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is encrypted, won\'t show"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, v3, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_8d
    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    sget-object v8, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->noLaunchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    :cond_9d
    invoke-static {p4, v5, v6, v7}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    if-eqz v5, :cond_de

    :cond_a3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_ab

    move-object v4, v0

    goto :goto_b3

    :cond_ab
    invoke-static {p4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getRealPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    :goto_b3
    if-eqz v4, :cond_bc

    sget-object v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v1

    goto :goto_c1

    :cond_bc
    sget-object v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->noLaunchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get recent task launch intent:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",intent:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    :cond_de
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get recent task pkg:::::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",hasLaunchIntent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_105

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_105

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/16 v4, 0xa

    if-lt p4, v4, :cond_39

    :cond_10d
    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getRecentTaskList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getRecentTaskList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->setShowExpandGuidTipType(I)V

    invoke-static {p3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShow(Z)V

    return-void
.end method

.method public static final updateExpandItemDelay(J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final updateExpandItemsOnSplitScreenMinimizeModeExit()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandShowMultiRecommendApp()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "Hotseat_expand"

    const-string v1, "OplusHotseatExpandDataManager"

    const-string/jumbo v2, "updateExpandItemsOnSplitScreenModeExit"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskDelay(J)V

    return-void
.end method

.method public static final updateMultiRecommendState(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "updateData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->setShowExpandGuidTipType(I)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShow(Z)V

    return-void
.end method

.method public static final updateRecentTaskDelay(J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final updateRecentTaskRunnable$lambda-1()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "OplusHotseatExpandDataManager"

    const-string/jumbo v2, "updateRecentTaskRunnable run"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public final getAppConnectDataItemMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getAppConnectList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getAssembleDockerExpandDataToShowRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getEnableUpdateExpandFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->enableUpdateExpandFlag:Z

    return p0
.end method

.method public final getExpandSourceCallingPackageMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandSourceCallingPackageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getExpandUpdatingFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandUpdatingFlag:Z

    return p0
.end method

.method public final getFinishedUpdateExpandFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    return p0
.end method

.method public final getLastFinalShownExpandDataList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getLaunchAppAnimationEndTime()J
    .registers 3

    sget-wide v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launchAppAnimationEndTime:J

    return-wide v0
.end method

.method public final getLauncherFinishBindFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launcherFinishBindFlag:Z

    return p0
.end method

.method public final getMultiRecommendAppList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getNeedFeedbackClickEventSourcePackageMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getRecentTaskList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getUpdateRecentTaskRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final setAppConnectDataItemMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setAppConnectList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setEnableUpdateExpandFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->enableUpdateExpandFlag:Z

    return-void
.end method

.method public final setExpandUpdatingFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->expandUpdatingFlag:Z

    return-void
.end method

.method public final setFinishedUpdateExpandFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->finishedUpdateExpandFlag:Z

    return-void
.end method

.method public final setLastFinalShownExpandDataList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLaunchAppAnimationEndTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launchAppAnimationEndTime:J

    return-void
.end method

.method public final setLauncherFinishBindFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->launcherFinishBindFlag:Z

    return-void
.end method

.method public final setMultiRecommendAppList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRecentTaskList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    return-void
.end method
