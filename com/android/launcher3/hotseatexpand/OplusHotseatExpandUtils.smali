.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;,
        Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$ViewCellXPositionComparator;
    }
.end annotation


# static fields
.field private static final ACTION_DOCKER_EXPAND_ITEM_CLICK:Ljava/lang/String; = "launcher_docker_expend_item_click"

.field public static final CLONE_APP_PKG_SUFFIX:Ljava/lang/String; = "_999"

.field public static final CLONE_APP_USERID:I = 0x3e7

.field private static final EXPAND_ITEM_CLICK_PKG_KEY:Ljava/lang/String; = "click_pkg"

.field private static final EXPAND_STATE_ERROR_CHECK_DELAY:J = 0x64L

.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;

.field private static final TAG:Ljava/lang/String; = "ExpandUtils"

.field private static expandStateErrorCheckRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;

    sget-object v0, Lcom/android/common/util/j0;->d:Lcom/android/common/util/j0;

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheckRunnable$lambda-0()V

    return-void
.end method

.method public static final checkFoldedScreenExpandErrorState(Lcom/android/launcher3/Launcher;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandUtils"

    const-string v2, "checkFoldedScreenExpandErrorState"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p0, :cond_e

    :goto_c
    move-object v2, v1

    goto :goto_17

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_c

    :cond_15
    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    :goto_17
    const/4 v3, 0x0

    if-nez v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6e

    move v5, v3

    :goto_22
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v7, "container.getChildAt(i)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_69

    instance-of v7, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_69

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v8, 0xc9

    if-eq v7, v8, :cond_44

    const/16 v8, 0xca

    if-ne v7, v8, :cond_69

    :cond_44
    if-nez p0, :cond_47

    goto :goto_4b

    :cond_47
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    :goto_4b
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFoldedScreenExpandErrorState,folded screen has expand item:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",force reload!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_69
    if-lt v6, v4, :cond_6c

    goto :goto_6e

    :cond_6c
    move v5, v6

    goto :goto_22

    :cond_6e
    :goto_6e
    return v3
.end method

.method public static final clearBgDataExpandItems()V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    :goto_7
    move-object v0, v1

    goto :goto_14

    :cond_9
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_17

    goto :goto_87

    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v4, "it.model.mBgDataModel.workspaceItems"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v9, 0xc9

    if-eq v8, v9, :cond_4b

    const/16 v9, 0xca

    if-ne v8, v9, :cond_4c

    :cond_4b
    move v6, v7

    :cond_4c
    if-eqz v6, :cond_32

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_52
    invoke-static {v4, v2}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v4, "clearBgDataExpandItems"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hotseat_expand"

    const-string v8, "ExpandUtils"

    invoke-static {v5, v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v8, v7, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v3, v8, v6

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_59

    :cond_84
    invoke-static {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setDividerView(Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;)V

    :goto_87
    return-void
.end method

.method public static final ensureHotseatExpandItemParent(Landroid/view/View;)Landroid/view/View;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_56

    if-eqz p0, :cond_56

    instance-of v1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_56

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xca

    if-ne p0, v1, :cond_56

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-nez p0, :cond_2c

    :goto_2a
    move-object v0, v2

    goto :goto_49

    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_2a

    :cond_33
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_3a

    goto :goto_2a

    :cond_3a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-nez p0, :cond_41

    goto :goto_2a

    :cond_41
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    if-nez p0, :cond_48

    goto :goto_2a

    :cond_48
    move-object v0, p0

    :goto_49
    const-string p0, "ensureHotseatExpandItemParent:"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Hotseat_expand"

    const-string v3, "ExpandUtils"

    invoke-static {v1, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    instance-of p0, v0, Landroid/view/View;

    if-eqz p0, :cond_5d

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    :cond_5d
    return-object v2
.end method

.method public static final expandStateErrorCheck(Z)Z
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_20

    :cond_1a
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_22

    :goto_20
    const/4 v0, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    :goto_26
    if-nez v0, :cond_29

    return v1

    :cond_29
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "ExpandUtils"

    const-string v5, "Hotseat_expand"

    if-eqz v2, :cond_43

    if-eqz p0, :cond_3d

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->checkFoldedScreenExpandErrorState(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v3

    :cond_3d
    const-string p0, "expandStateErrorCheck,screen folded no need check"

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_43
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    if-nez p0, :cond_f3

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result p0

    if-nez p0, :cond_53

    goto/16 :goto_f3

    :cond_53
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-nez p0, :cond_5b

    const/4 p0, 0x0

    goto :goto_5d

    :cond_5b
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    :goto_5d
    if-nez p0, :cond_60

    return v1

    :cond_60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v6, "expandStateErrorCheck,childCount:"

    invoke-static {v2, v6, v5, v4}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_6c

    return v1

    :cond_6c
    const v6, 0x7fffffff

    const/4 v7, -0x1

    const/high16 v8, -0x80000000

    if-lez v2, :cond_a8

    move v9, v6

    move v10, v7

    move v11, v8

    :goto_77
    add-int/lit8 v12, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_81

    const/4 v1, 0x0

    goto :goto_85

    :cond_81
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    :goto_85
    if-eqz v1, :cond_a3

    instance-of v13, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v13, :cond_8c

    goto :goto_a3

    :cond_8c
    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v14, 0xc9

    if-eq v13, v14, :cond_a1

    const/16 v14, 0xca

    if-eq v13, v14, :cond_9b

    add-int/lit8 v10, v10, 0x1

    goto :goto_a3

    :cond_9b
    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v1, v9, :cond_a3

    move v9, v1

    goto :goto_a3

    :cond_a1
    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    :cond_a3
    :goto_a3
    if-lt v12, v2, :cond_a6

    goto :goto_ab

    :cond_a6
    move v1, v12

    goto :goto_77

    :cond_a8
    move v9, v6

    move v10, v7

    move v11, v8

    :goto_ab
    const-string p0, "expandStateErrorCheck,maxNormalCellX:"

    const-string v1, ",dividerCellX:"

    const-string v2, ",minExpandCellX:"

    invoke-static {p0, v10, v1, v11, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasDividerView:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v11, v8, :cond_de

    if-le v11, v10, :cond_d1

    if-gt v9, v11, :cond_de

    :cond_d1
    const-string p0, "expandStateErrorCheck divider cellX error,forceReload!!!"

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return v3

    :cond_de
    if-ne v11, v8, :cond_f1

    if-eq v10, v7, :cond_f1

    if-eq v9, v6, :cond_f1

    const-string p0, "expandStateErrorCheck no divider,forceReload!!!"

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return v3

    :cond_f1
    const/4 p0, 0x0

    return p0

    :cond_f3
    :goto_f3
    const-string p0, "expandStateErrorCheck,isWorkspaceLoading no need check,,isWorkspaceLoading:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",enableUpdateExpandFlag:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static final expandStateErrorCheckRunnable$lambda-0()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheck(Z)Z

    return-void
.end method

.method public static final getBgDataHotseatExpandAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x65

    if-ne v5, v6, :cond_3f

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0xca

    if-eq v4, v5, :cond_40

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :cond_40
    :goto_40
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_46
    invoke-static {v1, v0}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_58

    new-instance p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;

    invoke-direct {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, p0}, Lz2/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_58
    return-object v0
.end method

.method public static final getBgDataHotseatExpandItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x65

    if-ne v5, v6, :cond_3b

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0xca

    if-ne v4, v5, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_42
    invoke-static {v1, v0}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_54

    new-instance p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;

    invoke-direct {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, p0}, Lz2/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_54
    return-object v0
.end method

.method public static final getBgDataHotseatItemsCount(Lcom/android/launcher3/Launcher;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3c
    invoke-static {v1, v0}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final getBgDataHotseatNormalItemsCount(Lcom/android/launcher3/Launcher;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x65

    if-ne v4, v5, :cond_3f

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v4, 0xca

    if-eq v3, v4, :cond_3f

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_46
    invoke-static {v1, v0}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final getCurrentHotseatExpandItem()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_17

    return-object v0

    :cond_17
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getBgDataHotseatExpandItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v2, "launcher.hotseat.mShortcutsAndWidgets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v3, "getCurrentHotseatExpandItem,childCount:"

    const-string v4, "Hotseat_expand"

    const-string v5, "ExpandUtils"

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-lez v2, :cond_62

    :goto_3d
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_47

    const/4 v3, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    :goto_4b
    if-eqz v3, :cond_5d

    instance-of v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_5d

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v6, 0xca

    if-ne v5, v6, :cond_5d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    if-lt v4, v2, :cond_60

    goto :goto_62

    :cond_60
    move v3, v4

    goto :goto_3d

    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_72

    new-instance v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;

    invoke-direct {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, v1}, Lz2/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_72
    return-object v0
.end method

.method public static final getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f080582

    goto :goto_14

    :cond_11
    const v0, 0x7f080581

    :goto_14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "context.getDrawable(if (…se R.drawable.hotseat_bg)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getHotseatFirstExpandItem(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_49

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_e
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "container.getChildAt(i)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_44

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_44

    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_44

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v7, 0xca

    if-ne v6, v7, :cond_44

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v2, v6, :cond_44

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_44

    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    move v3, v1

    :cond_44
    if-lt v4, v0, :cond_47

    goto :goto_4a

    :cond_47
    move v1, v4

    goto :goto_e

    :cond_49
    move v3, v0

    :goto_4a
    if-ge v3, v0, :cond_51

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_52

    :cond_51
    const/4 p0, 0x0

    :goto_52
    return-object p0
.end method

.method public static final getHotseatNormalItemCount()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v1, "container"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatNormalItemCount(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v0

    return v0
.end method

.method public static final getHotseatNormalItemCount(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3e

    move v2, v1

    :goto_d
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "container.getChildAt(i)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_38

    instance-of v4, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_38

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v4, 0xc9

    if-eq v1, v4, :cond_38

    const/16 v4, 0xca

    if-eq v1, v4, :cond_38

    add-int/lit8 v2, v2, 0x1

    :cond_38
    if-lt v3, v0, :cond_3c

    move v1, v2

    goto :goto_3e

    :cond_3c
    move v1, v3

    goto :goto_d

    :cond_3e
    :goto_3e
    const-string p0, "getHotseatNormalItemCount:"

    const-string v0, "ExpandUtils"

    invoke-static {v1, p0, v0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final getHotseatNormalItemPackages(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_60

    const/4 v2, 0x0

    :goto_11
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_5b

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v4, :cond_5b

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3d

    goto :goto_5b

    :cond_3d
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_44

    goto :goto_5b

    :cond_44
    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v5, 0x3e7

    if-ne v2, v5, :cond_58

    const-string v2, "_999"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    :goto_5b
    if-lt v3, v1, :cond_5e

    goto :goto_60

    :cond_5e
    move v2, v3

    goto :goto_11

    :cond_60
    :goto_60
    return-object v0
.end method

.method public static final getRealPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_999"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_10

    return-object p0

    :cond_10
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-gez v3, :cond_1f

    move v3, v1

    :cond_1f
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_25

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v3, v0, :cond_2f

    move v3, v0

    :cond_2f
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3a
    const-string p0, "Requested character count "

    const-string v0, " is less than zero."

    invoke-static {p0, v3, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final hasDividerItemInBgData()Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_13

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    :goto_13
    const/4 v0, 0x0

    if-nez v1, :cond_17

    return v0

    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v3, "it.model.mBgDataModel.workspaceItems"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v7, 0xc9

    if-ne v6, v7, :cond_47

    goto :goto_48

    :cond_47
    move v5, v0

    :goto_48
    if-eqz v5, :cond_32

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_4e
    invoke-static {v3, v2}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "hasDividerItemInBgData dividerItemSize:"

    const-string v3, "Hotseat_expand"

    const-string v4, "ExpandUtils"

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_61

    move v0, v5

    :cond_61
    return v0
.end method

.method public static final hasDividerItemInBgData(Lcom/android/launcher3/Launcher;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x65

    if-ne v5, v6, :cond_3b

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_42
    invoke-static {v1, v0}, Lz2/r;->M(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public static final hasNormalItemInLeftArea()Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4e

    move v3, v1

    :goto_20
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_49

    instance-of v5, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_49

    const-string v5, "hasNormalItemInLeftArea:"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExpandUtils"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v5, 0xca

    if-eq v3, v5, :cond_49

    const/16 v5, 0xc9

    if-eq v3, v5, :cond_49

    const/4 v0, 0x1

    return v0

    :cond_49
    if-lt v4, v2, :cond_4c

    goto :goto_4e

    :cond_4c
    move v3, v4

    goto :goto_20

    :cond_4e
    :goto_4e
    return v1
.end method

.method public static final injectExpandItemClicked(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Unable to start service. tag="

    const-string v1, " intent="

    const-string/jumbo v2, "start Service end."

    const-string v3, "itemInfo"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    return v4

    :cond_19
    instance-of v3, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_1c4

    sget-object v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getAppConnectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_1c4

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    if-nez v5, :cond_35

    move-object v5, v7

    goto :goto_39

    :cond_35
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    :goto_39
    if-nez v5, :cond_3c

    return v4

    :cond_3c
    const/4 v8, 0x2

    invoke-static {v5, v8}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v8

    const-string v9, "Hotseat_expand"

    const-string v10, "ExpandUtils"

    if-eqz v8, :cond_1bb

    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getAppConnectDataItemMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;

    if-nez v3, :cond_54

    return v4

    :cond_54
    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_5b

    return v4

    :cond_5b
    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getStartType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "startService"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c4

    :try_start_68
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v6}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->clearDockerAppConnectData(Z)V
    :try_end_6e
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_68 .. :try_end_6e} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_68 .. :try_end_6e} :catch_f1
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_6e} :catch_a5
    .catchall {:try_start_68 .. :try_end_6e} :catchall_a2

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_78

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_79

    :cond_78
    move-object p1, v7

    :goto_79
    if-nez p1, :cond_7d

    move-object p0, v7

    goto :goto_83

    :cond_7d
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :goto_83
    if-nez p0, :cond_87

    move-object p1, v7

    goto :goto_8b

    :cond_87
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    :goto_8b
    if-nez p1, :cond_8e

    goto :goto_91

    :cond_8e
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_91
    if-nez p0, :cond_95

    move-object p0, v7

    goto :goto_99

    :cond_95
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    :goto_99
    if-nez p0, :cond_9d

    goto/16 :goto_188

    :cond_9d
    invoke-virtual {p0, v7}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    goto/16 :goto_188

    :catchall_a2
    move-exception p0

    goto/16 :goto_189

    :catch_a5
    move-exception v4

    :try_start_a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_a6 .. :try_end_c2} :catchall_a2

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_cc

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_cd

    :cond_cc
    move-object p1, v7

    :goto_cd
    if-nez p1, :cond_d1

    move-object p0, v7

    goto :goto_d7

    :cond_d1
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :goto_d7
    if-nez p0, :cond_db

    move-object p1, v7

    goto :goto_df

    :cond_db
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    :goto_df
    if-nez p1, :cond_e2

    goto :goto_e5

    :cond_e2
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_e5
    if-nez p0, :cond_e9

    move-object p0, v7

    goto :goto_ed

    :cond_e9
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    :goto_ed
    if-nez p0, :cond_9d

    goto/16 :goto_188

    :catch_f1
    move-exception v4

    :try_start_f2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10e
    .catchall {:try_start_f2 .. :try_end_10e} :catchall_a2

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_118

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_119

    :cond_118
    move-object p1, v7

    :goto_119
    if-nez p1, :cond_11d

    move-object p0, v7

    goto :goto_123

    :cond_11d
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :goto_123
    if-nez p0, :cond_127

    move-object p1, v7

    goto :goto_12b

    :cond_127
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    :goto_12b
    if-nez p1, :cond_12e

    goto :goto_131

    :cond_12e
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_131
    if-nez p0, :cond_135

    move-object p0, v7

    goto :goto_139

    :cond_135
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    :goto_139
    if-nez p0, :cond_9d

    goto :goto_188

    :catch_13c
    move-exception v0

    :try_start_13d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to found service. tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15b
    .catchall {:try_start_13d .. :try_end_15b} :catchall_a2

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_165

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_166

    :cond_165
    move-object p1, v7

    :goto_166
    if-nez p1, :cond_16a

    move-object p0, v7

    goto :goto_170

    :cond_16a
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :goto_170
    if-nez p0, :cond_174

    move-object p1, v7

    goto :goto_178

    :cond_174
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    :goto_178
    if-nez p1, :cond_17b

    goto :goto_17e

    :cond_17b
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_17e
    if-nez p0, :cond_182

    move-object p0, v7

    goto :goto_186

    :cond_182
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    :goto_186
    if-nez p0, :cond_9d

    :goto_188
    return v6

    :goto_189
    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_193

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_194

    :cond_193
    move-object p1, v7

    :goto_194
    if-nez p1, :cond_198

    move-object p1, v7

    goto :goto_19e

    :cond_198
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :goto_19e
    if-nez p1, :cond_1a2

    move-object v0, v7

    goto :goto_1a6

    :cond_1a2
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    :goto_1a6
    if-nez v0, :cond_1a9

    goto :goto_1ac

    :cond_1a9
    invoke-virtual {v0, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_1ac
    if-nez p1, :cond_1b0

    move-object p1, v7

    goto :goto_1b4

    :cond_1b0
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    :goto_1b4
    if-nez p1, :cond_1b7

    goto :goto_1ba

    :cond_1b7
    invoke-virtual {p1, v7}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :goto_1ba
    throw p0

    :cond_1bb
    const-string p0, "did not find item in app connect list. package="

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, v10, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c4
    return v4
.end method

.method public static final isAvailableAddToHotseatExpandPkg(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static final isExpandItemShouldNotAddInFoldedSmallScreen(ILandroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/16 v0, -0x65

    if-eq p0, v0, :cond_f

    return v1

    :cond_f
    if-nez p1, :cond_13

    const/4 p0, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_17
    if-nez p0, :cond_1a

    return v1

    :cond_1a
    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p1, :cond_1f

    return v1

    :cond_1f
    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 p1, 0xc9

    if-eq p0, p1, :cond_2b

    const/16 p1, 0xca

    if-ne p0, p1, :cond_35

    :cond_2b
    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay()Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_35
    return v1
.end method

.method public static final isHotseatVisible(Lcom/android/launcher3/Launcher;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_35

    :cond_24
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_34

    return v1

    :cond_34
    return v2

    :cond_35
    :goto_35
    return v1
.end method

.method public static final isNeedUpdateAppConnectExpandItem(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->getAppConnectPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, v1, v2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public static final printBgDataExpandItemAction(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_24

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat_expand"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public static final printHotseatExpandData(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_34

    :cond_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pkg:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_34
    :goto_34
    return-void
.end method

.method public static final sendBroadCastFeedbackExpandItemClickEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "targetPkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickPkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher_docker_expend_item_click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "click_pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send expand item click broadcast,targetPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",clickPkg:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v0, "ExpandUtils"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final startExpandStateErrorCheck()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
