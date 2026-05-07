.class public Lcom/android/launcher3/allapps/OplusAllAppsContainerView;
.super Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher3/allapps/OplusSelectedContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;
    }
.end annotation


# static fields
.field public static final DRAW_APP_SORT_RULE_KEY:Ljava/lang/String; = "draw_app_sort_rule_key"

.field public static final INTERPOLATOR_INDICATOR_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INT_10:I = 0xa

.field private static final SHOW_EXIT_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "OplusAllAppsContainerView"

.field private static final UPDATE_SCROLLER_COLOR_DELAY:I = 0x3e8


# instance fields
.field private mContentView:Landroid/widget/RelativeLayout;

.field private mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

.field private mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

.field private mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

.field private mIsInTranslate:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mOldConfig:Landroid/content/res/Configuration;

.field private mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

.field public mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field public mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

.field private mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

.field private mSelectedViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowExitAnimator:Landroid/animation/ValueAnimator;

.field private mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

.field private mSwitchToWorkTabPending:Z

.field private mWorkTabListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->INTERPOLATOR_INDICATOR_SHOW:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mIsInTranslate:Z

    new-instance p1, Lcom/android/launcher3/allapps/j;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/allapps/j;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    new-instance p1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$6;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$6;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mIsInTranslate:Z

    new-instance p2, Lcom/android/launcher3/allapps/j;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/allapps/j;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    new-instance p1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$6;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$6;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mIsInTranslate:Z

    new-instance p1, Lcom/android/launcher3/allapps/j;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/allapps/j;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    new-instance p1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$6;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$6;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->resetSearchIfNessary()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mIsInTranslate:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mIsInTranslate:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updateWorkTabColor()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->refreshBackgroundColor()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private applyAdapterPaddingsForSortAlphabetical(Lcom/android/launcher3/DeviceProfile;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    :cond_52
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :goto_6f
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_7d
    return-void
.end method

.method private getDrawAppSortRule(Landroid/content/Context;)I
    .registers 3

    const-string p0, "draw_app_sort_rule_key"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->lambda$refreshDrawSortDialogWidth$5(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private hideFloatingHeader()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->lambda$updatePredictedApps$3(Ljava/util/List;)V

    return-void
.end method

.method private initColorPopListWindow()V
    .registers 6

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    const-string v0, "AppFeatureUtils.INSTANCE.isAppRankDisabled()： "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isAppRankDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusAllAppsContainerView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isAppRankDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f1201f1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f1201f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f120130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->a(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    iput-object v1, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private isInTopSearchViewArea(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    aget v3, v2, v1

    aget v4, v2, v1

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    aget v2, v2, v4

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    int-to-float v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_5a

    move v1, v4

    :cond_5a
    return v1
.end method

.method public static synthetic j(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->lambda$onFinishInflate$0()V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->lambda$createDrawSortOptionDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$createDrawSortOptionDialog$2(Landroid/content/DialogInterface;I)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createDrawSortOptionDialog which = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusAllAppsContainerView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->notifyAppSortUpdateListener(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statsClickDrawerAppSort(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .registers 2

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updateGlobalColor()V

    :cond_7
    return-void
.end method

.method private static lambda$refreshDrawSortDialogWidth$5(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updatePredictedApps$3(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updatePredictedData(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updatePredictedApps$4(I)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getPredictedApps(I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryAndUpdatePredictedApps,recommendedPkgs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAllAppsContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->lambda$updatePredictedApps$4(I)V

    return-void
.end method

.method private needUpdateScrollerColorWhenConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOldConfig:Landroid/content/res/Configuration;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    invoke-static {p0}, Lcom/android/common/util/UxConfigUtils;->needReloadColor(I)Z

    move-result p0

    return p0
.end method

.method private notifyAppSortUpdateListener(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;->drawAppSortUpdate(I)V

    goto :goto_10

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility(Ljava/lang/Integer;)V

    return-void
.end method

.method private refreshBackgroundColor()V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshBackgroundColor cur = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusAllAppsContainerView"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v2, :cond_44

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v0, :cond_44

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-interface {p0, v0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->setSearchViewAnimateAlpha(F)V

    :cond_44
    return-void
.end method

.method private refreshDrawSortDialogWidth(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->e:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    instance-of v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_47

    if-eqz p0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/content/res/Configuration;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_47
    return-void
.end method

.method private resetAllAppsDividerItemView()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getAllAppsDividerItemView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0288

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f0401f0

    invoke-static {p0, v2, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2d
    return-void
.end method

.method private resetSearchIfNessary()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "resetSearch query:"

    const-string v2, "OplusAllAppsContainerView"

    invoke-static {v1, v0, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    :cond_1c
    return-void
.end method

.method private updateGlobalColor()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateScrollerColor()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_25

    const v1, 0x7f0a0288

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0401f0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    return-void
.end method

.method private updatePredictedData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->setPredictedApps(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const-class v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz p0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    :cond_24
    return-void
.end method

.method private updateWorkTabColor()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_39

    const-string v0, "OplusAllAppsContainerView"

    const-string/jumbo v1, "updateWorkTabColor"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a04f9

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a04fa

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_39

    if-nez v1, :cond_23

    goto :goto_39

    :cond_23
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f060058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    nop

    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->applyAdapterPaddingsForSortAlphabetical(Lcom/android/launcher3/DeviceProfile;)V

    goto :goto_1d

    :cond_1a
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    :goto_1d
    return-void
.end method

.method public clearSelectData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_f
    return-void
.end method

.method public createDrawSortOptionDialog()V
    .registers 5

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    if-nez v0, :cond_11

    const-string p0, "OplusAllAppsContainerView"

    const-string/jumbo v0, "sort. clickable false."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getDrawAppSortRule(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialogBuilder:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    const v2, 0x7f03001c

    new-instance v3, Lcom/android/launcher/u;

    invoke-direct {v3, p0}, Lcom/android/launcher/u;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->b(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f1201eb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->a()Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->refreshDrawSortDialogWidth(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawSortAlertDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_52
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->dispatchSlideMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public drawManagerChooseClick()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_64

    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_39

    return-void

    :cond_39
    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    if-nez v0, :cond_49

    const-string p0, "OplusAllAppsContainerView"

    const-string v0, "AppChoose. clickable false."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->replacePredictionIcon(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->showSelectedViews(Ljava/util/List;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/OplusAllAppsPagedView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1b

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0

    :cond_1b
    :goto_1b
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method public getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/search/OplusSearchUiManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    return-object p0
.end method

.method public getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    return-object p0
.end method

.method public getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-object p0
.end method

.method public getSelectedViewList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    return-object p0
.end method

.method public handleManagerClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "OplusAllAppsContainerView"

    const-string v1, "handleManagerClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refreshListDot(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c(Ljava/util/List;)V

    :cond_28
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mPopupWindow:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Landroid/view/View;)V

    :cond_2d
    return-void
.end method

.method public onAppsUpdated()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onAppsUpdated()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSwitchToWorkTabPending:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSwitchToWorkTabPending:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->switchToTab(I)V

    :cond_17
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    new-instance v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->resetSearchIfNessary()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    return-void
.end method

.method public onClearSearchResult()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->needUpdateScrollerColorWhenConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "OplusAllAppsContainerView"

    const-string/jumbo v1, "onConfigurationChanged updateScrollerColor"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updateGlobalColor()V

    :cond_18
    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updateWorkTabColor()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->refreshDrawSortDialogWidth(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    if-eqz p3, :cond_10

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsDragAppToWorkspaceFromDrawer(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_10
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->initColorPopListWindow()V

    const v0, 0x7f0a0453

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    const v0, 0x7f0a05bc

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOplusAppsSearchContainerLayout:Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    invoke-interface {v1, v0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->setSearchLine(Landroid/view/View;)V

    const v0, 0x7f0a0224

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mRecyclerViewFastScroller:Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BranchManager.featureSupport() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAllAppsContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    goto :goto_86

    :cond_71
    invoke-static {}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_86

    sget-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    :cond_86
    :goto_86
    new-instance v0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->setScrollHelper(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setScrollHelper(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_116

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->hideFloatingHeader()V

    new-instance v0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->setOnExploreBranchClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_116
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public onFinishInflateInject()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    check-cast v0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    new-instance v1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$3;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->setMaxTranslationChangeListener(Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "OplusAllAppsContainerView"

    const-string p1, "intercept touch event if not in all app state"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_44

    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :goto_44
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->isInTopSearchViewArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1, v0, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->hideKeyboardAndResetSearchView()V

    :cond_6b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-lez v0, :cond_76

    return v2

    :cond_76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_84

    goto :goto_85

    :cond_84
    return v1

    :cond_85
    :goto_85
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->isInTopSearchViewArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_ae

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_ae

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-eqz p1, :cond_ae

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result p0

    if-eqz p0, :cond_ae

    goto :goto_af

    :cond_ae
    move v2, v1

    :goto_af
    return v2
.end method

.method public onScrollUpEnd()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(I)V

    :cond_d
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->enterDrawer()V

    goto :goto_24

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->showKeyboardInDrawerPage()V

    :goto_24
    return-void
.end method

.method public onScrollUpStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v2, v1, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_7d

    check-cast v1, Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    if-eqz v1, :cond_3b

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_3f

    :cond_3b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    :goto_3f
    int-to-float v2, v2

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    goto :goto_57

    :cond_4b
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_57
    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_7b

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7b

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_7b

    cmpg-float p0, p1, p0

    if-lez p0, :cond_79

    goto :goto_7b

    :cond_79
    const/4 p0, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 p0, 0x1

    :goto_7c
    return p0

    :cond_7d
    return v0
.end method

.method public registeredAppSortUpdateListener(Lcom/android/launcher3/allapps/OplusAllAppsContainerView$DrawAppSortUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mDrawAppSortUpdateListenerList:Ljava/util/ArrayList;

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_a
    const-string p0, "OplusAllAppsContainerView"

    const-string/jumbo p1, "registeredAppSortUpdateListener sortUpdateListener is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public reset(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->resetAllAppsDividerItemView()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->refreshBackgroundColor()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->resetSelectState()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz p0, :cond_15

    check-cast p0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;->handleUpEvent()V

    :cond_15
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->exitDrawer()V

    :cond_20
    return-void
.end method

.method public resetSelectState()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->clearSelectedViews()V

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher/views/AllAppsBatchTipView;->checkAndRemoveAllAppsBatchTipView(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public selectView(Landroid/view/View;)V
    .registers 7

    const-string v0, "OplusAllAppsContainerView"

    if-nez p1, :cond_b

    const-string/jumbo p0, "selectView, view is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    const-string/jumbo p0, "selectView, tag is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_72

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_31
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_62

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    const v1, 0x7f120482

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6a

    :cond_62
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->updateEnableUninstallBtn(Z)V

    return-void

    :cond_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "select view not a shortcut, tag = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_50

    :cond_41
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_50
    add-int/2addr v1, v2

    :cond_51
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700f6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_65

    :cond_64
    move v2, v3

    :goto_65
    move v4, v3

    :goto_66
    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a4

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    add-int v6, v1, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_a4
    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_fb

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-boolean p1, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    if-eqz p1, :cond_ef

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_e0

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v4, v3, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_104

    :cond_e0
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    sub-int/2addr v4, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4, v3, v0, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_104

    :cond_ef
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2, v3, v0, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_104

    :cond_fb
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_104
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_14b

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    goto :goto_16c

    :cond_14b
    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    :goto_16c
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->reLayoutUpArrow()V

    return-void
.end method

.method public showKeyboardInDrawerPage()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportShowInputInDrawer:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    if-eqz v0, :cond_27

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "show_inputmethod_in_drawer_switch"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->needKeyboardFromNotification()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->showKeyboard()V

    :cond_27
    return-void
.end method

.method public switchToTab(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->switchToTab(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    const-string p1, "OplusAllAppsContainerView"

    const-string/jumbo v1, "switch to work tab pending"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSwitchToWorkTabPending:Z

    :cond_14
    return-void
.end method

.method public updateAllAppsParamsWhenIdpChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object p0

    :goto_10
    if-eqz p0, :cond_17

    check-cast p0, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusRecyclerViewFastScroller;->updateWidth()V

    :cond_17
    return-void
.end method

.method public updatePaddingsIfNeeded(Lcom/android/launcher3/DeviceProfile;)V
    .registers 5

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    if-eq v0, v1, :cond_41

    const-string v0, "OplusAllAppsContainerView"

    const-string/jumbo v1, "need to update all apps paddings"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    :cond_41
    return-void
.end method

.method public updatePredictedApps(I)V
    .registers 4

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/allapps/k;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/k;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e

    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updatePredictedData(Ljava/util/List;)V

    :goto_1e
    return-void
.end method

.method public updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OplusAllAppsContainerView"

    if-nez v0, :cond_84

    if-eqz p2, :cond_84

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    if-eqz v0, :cond_84

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_84

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_4c
    const-string/jumbo p1, "updateSelectedViewList , deleteViews size: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mSelectedViewList size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_76

    return-void

    :cond_76
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->updateEnableUninstallBtn(Z)V

    return-void

    :cond_84
    :goto_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedViewList , packageName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , userHandle: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , mSelectedViewList : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->mSelectedViewList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
