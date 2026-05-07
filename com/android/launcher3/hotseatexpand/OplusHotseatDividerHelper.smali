.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

.field private static final REMOVE_DIVIDER_RUNNABLE_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "OplusHotseatDividerHelper"

.field private static addDividerRunnable:Ljava/lang/Runnable;

.field private static addedDividerForDragInFlag:Z

.field private static dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

.field private static final dividerWidth$delegate:Ly2/e;

.field private static removeDividerRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

    sget-object v0, Lcom/android/common/util/f0;->f:Lcom/android/common/util/f0;

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->removeDividerRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper$dividerWidth$2;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper$dividerWidth$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerWidth$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->initAddDividerRunnable$lambda-2(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static final addDividerAndUpdateExpandItemWhenDragEnd()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addDividerRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_8
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addDividerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final addDividerViewIfNecessary()V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatDividerHelper"

    const-string v3, "addDividerViewIfNecessary"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v3

    if-nez v3, :cond_70

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->isNeedAddDivider()Z

    move-result v3

    if-eqz v3, :cond_70

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addedDividerForDragInFlag:Z

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->creatHotseatDivider(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    const/4 v5, 0x0

    if-nez v4, :cond_34

    move-object v4, v5

    goto :goto_38

    :cond_34
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    :goto_38
    sget-object v6, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    const-string v7, "addDividerView,dividerView:"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-nez v2, :cond_4d

    move-object v6, v5

    goto :goto_51

    :cond_4d
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    :goto_51
    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_58

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_59

    :cond_58
    move-object v6, v5

    :goto_59
    invoke-interface {v1, v2, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_6d

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_6d
    invoke-virtual {v1, v0, v5, v3}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_70
    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->removeDividerRunnable$lambda-0()V

    return-void
.end method

.method public static final buildHotseatDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/16 v1, 0xc9

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/16 p0, -0x65

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-object v0
.end method

.method public static final creatHotseatDivider(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/16 v1, 0xc9

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/16 p0, -0x65

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-nez p0, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :goto_36
    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.hotseatexpand.OplusHotseatDividerView"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final dividerViewStateCheck(Lcom/android/launcher/Launcher;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    move v2, v1

    :goto_19
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    move v2, v1

    :cond_25
    if-lt v3, v0, :cond_29

    move v1, v2

    goto :goto_2b

    :cond_29
    move v1, v3

    goto :goto_19

    :cond_2b
    :goto_2b
    const-string p0, "dividerViewStateCheck,hasDividerViewInHotseatLayout:"

    const-string v0, "Hotseat_expand"

    const-string v2, "OplusHotseatDividerHelper"

    invoke-static {v1, p0, v0, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_39

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->clearBgDataExpandItems()V

    :cond_39
    return-void
.end method

.method public static final getDividerView()Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    return-object v0
.end method

.method public static final getDividerViewWidth()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerWidth()I

    move-result v0

    return v0
.end method

.method public static final hasDividerView()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static final hasDividerViewInLogic()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final initAddDividerRunnable(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_17

    const-string p0, "Hotseat_expand"

    const-string v0, "OplusHotseatDividerHelper"

    const-string v1, "initAddDividerRunnable not finish bind return"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_28

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_28

    new-instance v0, Lcom/android/launcher3/card/seed/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addDividerRunnable:Ljava/lang/Runnable;

    :cond_28
    return-void
.end method

.method private static final initAddDividerRunnable$lambda-2(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const-string v0, "$itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initAddDividerRunnable,itemInfo:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatDividerHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addDividerViewIfNecessary()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/16 v1, 0x3e7

    if-ne p0, v1, :cond_29

    const-string p0, "_999"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    const/4 p0, 0x0

    const-wide/16 v1, 0x32

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->checkAndRemoveDuplicateItem(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static final isNeedAddDivider()Z
    .registers 11
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

    const/4 v3, 0x1

    if-lez v2, :cond_55

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_23
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_50

    instance-of v8, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_50

    const-string v8, "isNeedShowDivider:"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Hotseat_expand"

    const-string v10, "OplusHotseatDividerHelper"

    invoke-static {v9, v10, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v8, 0xca

    if-eq v4, v8, :cond_4d

    const/16 v9, 0xc9

    if-eq v4, v9, :cond_4d

    move v6, v3

    :cond_4d
    if-ne v4, v8, :cond_50

    move v5, v3

    :cond_50
    if-lt v7, v2, :cond_53

    goto :goto_57

    :cond_53
    move v4, v7

    goto :goto_23

    :cond_55
    move v5, v1

    move v6, v5

    :goto_57
    if-eqz v5, :cond_5c

    if-eqz v6, :cond_5c

    move v1, v3

    :cond_5c
    return v1
.end method

.method public static final removeDividerAfterDeleteView()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "OplusHotseatDividerHelper"

    const-string v2, "check and removeDividerViewIfNecessary"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->removeDividerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->removeDividerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final removeDividerRunnable$lambda-0()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->removeDividerViewIfNecessary()V

    return-void
.end method

.method public static final removeDividerViewIfNecessary()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v3, "OplusHotseatDividerHelper"

    const-string v4, "Hotseat_expand"

    if-nez v2, :cond_34

    const-string v2, "hotseat has no child to requestLayout"

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_34
    const-string v2, "removeDividerViewIfNecessary,hasDividerView:"

    invoke-static {v1, v2, v4, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7c

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    const/4 v2, 0x0

    if-nez v1, :cond_51

    move-object v1, v2

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    :goto_55
    if-eqz v1, :cond_79

    instance-of v5, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_79

    const-string v5, "removeDividerView,right now:"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v1, v4, v5

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_79
    invoke-static {v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setDividerView(Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;)V

    :cond_7c
    return-void
.end method

.method public static final setDividerView(Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "setDividerView:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerView:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    return-void
.end method


# virtual methods
.method public final getAddedDividerForDragInFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addedDividerForDragInFlag:Z

    return p0
.end method

.method public final getDividerWidth()I
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->dividerWidth$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final setAddedDividerForDragInFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addedDividerForDragInFlag:Z

    return-void
.end method
