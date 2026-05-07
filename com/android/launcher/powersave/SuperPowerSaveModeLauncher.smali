.class public Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/views/ActivityContext;
.implements Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;
.implements Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;


# static fields
.field public static final CLICK_APP_INFO_COMPONENT:Ljava/lang/String; = "CLICK_APP_INFO_COMPONENT"

.field public static final CLICK_APP_USER_IDENTIFIER:Ljava/lang/String; = "CLICK_APP_USER_IDENTIFIER"

.field public static final CLICK_POSITION_X:Ljava/lang/String; = "CLICK_X"

.field public static final CLICK_POSITION_Y:Ljava/lang/String; = "CLICK_Y"

.field public static final FILTER_PACKAGE_LIST:Ljava/lang/String; = "FILTER_PACKAGE_LIST"

.field public static final SAVE_MODE_LAUNCHER_REQUEST_CODE:I = 0x64

.field public static final SAVE_MODE_SELECT_APP_RESULT_CODE:I = 0x65

.field private static final SPLIT_SCREEN_FROM_SUPER_POWER:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveModeLauncher."


# instance fields
.field private mAppCount:I

.field private mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mAvailableTime:Landroid/widget/TextView;

.field private mBottomBtn:Landroid/widget/Button;

.field private mComplete:Landroid/widget/TextView;

.field private mEdit:Landroid/widget/ImageView;

.field private mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

.field private mExit:Landroid/widget/ImageView;

.field private mHasRegisterAvailableTimeObserver:Z

.field private mIsEditMode:Z

.field private mIsExiting:Z

.field private mIsInit:Z

.field private mIsMultiWindowMode:Z

.field private mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

.field private mLinearLayoutClock:Landroid/widget/LinearLayout;

.field private mNavigationTool:Landroid/widget/LinearLayout;

.field private mOplusClockView:Lcom/android/launcher/powersave/view/OplusClockView;

.field private mParent:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

.field private mSelectAll:Landroid/widget/TextView;

.field private mSelectAllFlag:Z

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mSuperPowerModeAvailableTimeObserver:Landroid/database/ContentObserver;

.field private mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

.field private mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

.field private mWorkSpaceAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsInit:Z

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsExiting:Z

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mHasRegisterAvailableTimeObserver:Z

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsMultiWindowMode:Z

    new-instance v0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$1;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerModeAvailableTimeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateAvailableTime()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$initUI$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$initUI$2(Landroid/view/View;)V

    return-void
.end method

.method private changeAllAppSelectedStatus(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1, p1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->setSelected(Z)V

    goto :goto_10

    :cond_26
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2d
    return-void
.end method

.method private changeToEditMode()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppCount(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string v0, "changeToEditMode, no saved item, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAvailableTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mComplete:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    const v3, 0x7f1204f4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mNavigationTool:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mExit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    iput-boolean v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->setEditMode(Z)V

    invoke-direct {p0, v2}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeAllAppSelectedStatus(Z)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->enableSystemGesturesIfNeeded()V

    return-void
.end method

.method private changeToNormalMode()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAvailableTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mComplete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mNavigationTool:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mExit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    iput-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->setEditMode(Z)V

    invoke-direct {p0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeAllAppSelectedStatus(Z)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->disableSystemGestures()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$initNavigationTool$5(Landroid/view/View;)V

    return-void
.end method

.method private disableSystemGestures()V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_23
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$updateAppsView$6()V

    return-void
.end method

.method private enableSystemGesturesIfNeeded()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$showPopupWindow$4(I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$initUI$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$initUI$1(Landroid/view/View;)V

    return-void
.end method

.method private initData()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->getSuperPowerSaveAppCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppCount:I

    return-void
.end method

.method private initNavigationTool()V
    .registers 4

    const v0, 0x7f0a037b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mNavigationTool:Landroid/widget/LinearLayout;

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mNavigationTool:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher/powersave/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/powersave/d;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initUI()V
    .registers 7

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string v1, "initUI"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0a04ec

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1a

    const-string p0, "layout is destroyed, no need to init"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0, p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Ljava/util/List;Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$RemoveSelectedAppCallback;Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter$EnterEditModeCallback;)V

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->initNavigationTool()V

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mComplete:Landroid/widget/TextView;

    new-instance v3, Lcom/android/launcher/powersave/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/launcher/powersave/d;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a046a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    new-instance v3, Lcom/android/launcher/powersave/d;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lcom/android/launcher/powersave/d;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAvailableTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAvailableTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateAvailableTime()V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEdit:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher/powersave/d;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher/powersave/d;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mExit:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher/powersave/d;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher/powersave/d;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/powersave/view/OplusClockView;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mOplusClockView:Lcom/android/launcher/powersave/view/OplusClockView;

    return-void
.end method

.method private synthetic lambda$initNavigationTool$5(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->removeSelectedAllApps(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppCount(Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_1a

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToNormalMode()V

    :cond_1a
    return-void
.end method

.method private synthetic lambda$initUI$0(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToNormalMode()V

    return-void
.end method

.method private synthetic lambda$initUI$1(Landroid/view/View;)V
    .registers 5

    iget-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeAllAppSelectedStatus(Z)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1204f4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_71

    :cond_25
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeAllAppSelectedStatus(Z)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_54
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_71

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_71
    :goto_71
    return-void
.end method

.method private synthetic lambda$initUI$2(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToEditMode()V

    return-void
.end method

.method private synthetic lambda$initUI$3(Landroid/view/View;)V
    .registers 2

    sget-object p1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p1}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result p1

    if-nez p1, :cond_11

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string/jumbo p1, "short time, cant click exit button again."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToNormalMode()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->showPopupWindow()V

    return-void
.end method

.method private synthetic lambda$showPopupWindow$4(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private synthetic lambda$updateAppsView$6()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private registerSuperPowerAvailableTimeObserver()V
    .registers 6

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "registerSuperPowerAvailableTimeObserver."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mHasRegisterAvailableTimeObserver:Z

    if-nez v1, :cond_28

    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "remain_time_on_super_powersave"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerModeAvailableTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mHasRegisterAvailableTimeObserver:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_28

    :catch_21
    move-exception v1

    const-string/jumbo v2, "registerSuperPowerAvailableTimeObserver e = "

    invoke-static {v2, v1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateAvailableTime()V

    return-void
.end method

.method private removeSelectedAllApps(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_50

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    if-eqz v2, :cond_9

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/lit8 v5, v4, 0x3

    add-int/2addr v5, v3

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->buildTipIconItem(II)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {p0, v3, v4}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->removeSharedPrefsItem(Landroid/content/Context;II)V

    goto :goto_9

    :cond_35
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3c
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppCount(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppCount:I

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->setSuperPowerSaveAppCount(Landroid/content/Context;I)V

    :cond_50
    return-void
.end method

.method private showPopupWindow()V
    .registers 8

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v1, :cond_5a

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d01e3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070b9e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a021a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0117

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/android/launcher/powersave/e;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher/powersave/e;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_5a
    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "showPopupWindow(), popupWindow window ready add."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mParent:Landroid/view/View;

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060425

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private unregisterSuperPowerAvailableTimeObserver()V
    .registers 4

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "unregisterSuperPowerAvailableTimeObserver."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mHasRegisterAvailableTimeObserver:Z

    if-eqz v1, :cond_20

    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerModeAvailableTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mHasRegisterAvailableTimeObserver:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    move-exception p0

    const-string/jumbo v1, "unregisterSuperPowerAvailableTimeObserver e = "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method private updateAppsView()V
    .registers 3

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerList(Ljava/util/List;)V

    new-instance v0, Lcom/android/launcher/powersave/f;

    invoke-direct {v0, p0}, Lcom/android/launcher/powersave/f;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAvailableTime()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAvailableTime:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerModeAvailableTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method private updateClockLayoutMargin()V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    const v1, 0x7f070bae

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-boolean v5, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsMultiWindowMode:Z

    if-eqz v5, :cond_2a

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070bb1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_35

    :cond_2a
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_35
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_122

    :cond_3c
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-boolean v5, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsMultiWindowMode:Z

    if-eqz v5, :cond_75

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ba6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_83

    :cond_75
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ba5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_83
    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-boolean v5, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsMultiWindowMode:Z

    if-eqz v5, :cond_d6

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070baf

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_e1

    :cond_c7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070bb0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_e1

    :cond_d6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_e1
    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsMultiWindowMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10a

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mOplusClockView:Lcom/android/launcher/powersave/view/OplusClockView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070bb3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v2, v1, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_122

    :cond_10a
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mOplusClockView:Lcom/android/launcher/powersave/view/OplusClockView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070bb2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v2, v1, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_122
    return-void
.end method

.method private updateSelectedTitle()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    move v0, v1

    move v2, v0

    :goto_11
    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result v3

    if-nez v3, :cond_29

    add-int/lit8 v2, v2, 0x1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2c
    move v2, v1

    :cond_2d
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v2, v0, :cond_38

    move v0, v3

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    if-eqz v0, :cond_4e

    iput-boolean v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1204ee

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    :cond_4e
    iput-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAllFlag:Z

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1204f4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    :goto_60
    return-void
.end method

.method private updateSystemWindowPadding()V
    .registers 6

    const v0, 0x7f0a04eb

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addSelectedApp(Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mBottomBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateSelectedTitle()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_19

    :cond_9
    const-string v0, "bindAllApplications:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, v0, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsInit:Z

    :cond_19
    :goto_19
    return-void
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_16

    array-length v0, p1

    if-lez v0, :cond_16

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->bindAllApplications(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppInfosRemoved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerSaveModeLauncher."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->initApps()V

    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindAppsAdded：addNotAnimated： "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " addAnimated； "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppsAddedOrUpdated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerSaveModeLauncher."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz p1, :cond_79

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_79

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v0, :cond_37

    goto :goto_28

    :cond_37
    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_28

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0, v1, v2}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->getItemFromSp(Landroid/content/Context;II)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->className:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->addOrUpdateItemToSp(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V

    goto :goto_28

    :cond_6d
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->buildWorkSpaceAppList(Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateAppsView()V

    :cond_79
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindDeepShortcutMap = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindItems: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "forceAnimateIcons: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public bindPromiseAppProgressUpdated(Lcom/android/launcher/model/data/PromiseAppInfo;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindPromiseAppProgressUpdated = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindRestoreItemsChange = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .registers 2

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string p1, "bindScreens."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindSuperPowerDesktopApps(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    const-string v0, "bindSuperPowerDesktopApps:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, v0, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->initApps()V

    const-string/jumbo p0, "superpowerload - finish."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindWorkspaceComponentsRemoved = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindWorkspaceItemsChange = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clearPendingBinds()V
    .registers 2

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string v0, "clearPendingBinds."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enterEditMode()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToEditMode()V

    return-void
.end method

.method public executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .registers 2

    return-void
.end method

.method public finishBindingItems(I)V
    .registers 4

    const-string v0, "finishBindingItems: "

    const-string v1, "SuperPowerSaveModeLauncher."

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    return-void
.end method

.method public getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .registers 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    invoke-static {p0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public initApps()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->buildWorkSpaceAppList(Ljava/util/ArrayList;Ljava/util/List;)V

    :cond_b
    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateAppsView()V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerList(Ljava/util/List;)V

    return-void
.end method

.method public notifySuperPowerInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsInit:Z

    return-void
.end method

.method public notifyUninstallEndAction(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string/jumbo p1, "notifyUninstallEndAction."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const-string v0, "SuperPowerSaveModeLauncher."

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToNormalMode()V

    :cond_c
    const/16 v1, 0x64

    if-ne p1, v1, :cond_be

    const/16 p1, 0x65

    if-ne p2, p1, :cond_be

    const/4 p1, 0x0

    :try_start_15
    const-string p2, "CLICK_APP_INFO_COMPONENT"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1f

    move-object p1, p2

    goto :goto_25

    :catch_1f
    move-exception p2

    const-string v1, "data.getParcelableExtra exception:"

    invoke-static {v1, p2, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_25
    const-string p2, "CLICK_X"

    const/4 v1, -0x1

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "CLICK_Y"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CLICK_APP_USER_IDENTIFIER"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    invoke-virtual {v4, p1, p3, v2}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->findMatchItem(Landroid/content/ComponentName;ILjava/util/ArrayList;)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v2, :cond_a1

    if-eqz v4, :cond_56

    goto :goto_a1

    :cond_56
    iput p2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->setViewType(I)V

    mul-int/lit8 v0, v1, 0x3

    add-int/2addr v0, p2

    if-ltz v0, :cond_76

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_76

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_76
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppCount(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mAppCount:I

    invoke-static {p0, v0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->setSuperPowerSaveAppCount(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_97

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3, p2, v1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->generateSpecialDefaultItem(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->addOrUpdateItemToSp(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V

    :cond_97
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerList(Ljava/util/List;)V

    goto :goto_be

    :cond_a1
    :goto_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onActivityResult saveItemInfo is null or has exist same app, just return, contains = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; saveItemInfo = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->disableSystemGestures()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->changeToNormalMode()V

    :cond_7
    return-void
.end method

.method public final onBusEvent(Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;)V
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->isInSuperPowerSaveMode()Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "SuperPowerSaveModeLauncher."

    const-string v0, "finish"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_14
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0117

    if-eq p1, v0, :cond_69

    const v0, 0x7f0a021a

    if-eq p1, v0, :cond_f

    goto :goto_6e

    :cond_f
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitable()Z

    move-result p1

    const-string/jumbo v0, "onClick, canExit = "

    const-string v1, "SuperPowerSaveModeLauncher."

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_58

    iget-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsInit:Z

    if-nez p1, :cond_26

    goto :goto_58

    :cond_26
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsExiting:Z

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exit(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsSuperPowerSaveUsageTime(J)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-static {p0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSystemBattery(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->statsCloseSuperPowerSaveModeBattery(Ljava/lang/String;)V

    goto :goto_6e

    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const p1, 0x7f1204df

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_69
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_6e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "SuperPowerSaveModeLauncher."

    const-string/jumbo v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsEditMode:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsExiting:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->initUI()V

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLinearLayoutClock:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateClockLayoutMargin()V

    goto :goto_24

    :cond_1e
    const-string/jumbo v0, "updateClockLayoutMargin: mLinearLayoutClock is null"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    :cond_2f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    :cond_3f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mStartTime:J

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_2a

    new-instance p1, Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/states/RotationHelper;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/states/RotationHelper;->initialize()V

    :cond_2a
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-nez p1, :cond_43

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->resetLauncherIfNecessary()V

    return-void

    :cond_43
    :try_start_43
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->dismissSplitScreenMode(I)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Error; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_62

    :catch_4c
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: dismissSplitScreenMode error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0d01e1

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->initData()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->initUI()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateClockLayoutMargin()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->updateSystemWindowPadding()V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherAppState;->setSuperPowerSaveLauncher(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    new-instance p1, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    invoke-direct {p1, p0}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->resetErrorState()V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-static {p0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSystemBattery(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/statistics/LauncherStatistics;->statsOpenSuperPowerSaveModeBattery(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p1

    if-eqz p1, :cond_c9

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_c9
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/IIconCacheExt;->cleanFancyIconEngine()V

    :cond_3b
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->destroy()V

    :cond_48
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_55
    return-void
.end method

.method public onFoldStateChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_7
    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "onFoldStateChange reInitGrid！"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->initTargetIdpGrid()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->stopOpenSuperPowerAnimIfNeeded()V

    :cond_23
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_15
    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsMultiWindowMode:Z

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNewIntent: intent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageBoundSynchronously(I)V
    .registers 3

    const-string/jumbo p0, "onPageBoundSynchronously = "

    const-string v0, "SuperPowerSaveModeLauncher."

    invoke-static {p0, p1, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mSuperPowerSaveHomeAppsAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string v0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->registerSuperPowerAvailableTimeObserver()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->unregisterSuperPowerAvailableTimeObserver()V

    return-void
.end method

.method public preAddApps()V
    .registers 2

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v0, "preAddApps."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetDataState()V
    .registers 4

    const-string/jumbo v0, "resetDataState, mIsInit = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsInit:Z

    const-string v2, "SuperPowerSaveModeLauncher."

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mIsInit:Z

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mEnergySaveLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    return-void
.end method

.method public setWindowFlagsNotFullScreen()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public startActivitySafe(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 10
    .param p2  # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_5

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_7

    :cond_5
    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    :goto_7
    const-string v1, " intent="

    const-string v2, "Unable to launch. tag="

    const-string v3, "SuperPowerSaveModeLauncher."

    const/4 v4, 0x0

    const v5, 0x7f1200b0

    if-eqz p1, :cond_47

    if-nez v0, :cond_16

    goto :goto_47

    :cond_16
    const/high16 v6, 0x10000000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1b
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_25} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_46

    :catch_26
    move-exception v0

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_46
    return-void

    :cond_47
    :goto_47
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startBinding()V
    .registers 2

    const-string p0, "SuperPowerSaveModeLauncher."

    const-string/jumbo v0, "startBinding."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSelectAppActivity(II)V
    .registers 8

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->mWorkSpaceAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->getViewType()I

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    invoke-direct {v3}, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;-><init>()V

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->className:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v3, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->userIdentifier:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CLICK_X"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "CLICK_Y"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "FILTER_PACKAGE_LIST"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x64

    invoke-virtual {p0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_72

    :catch_5a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startSelectAppActivity  e : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModeLauncher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void
.end method
