.class public Lcom/android/launcher/Launcher;
.super Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.source ""

# interfaces
.implements Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;
.implements Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;
.implements Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;
    }
.end annotation


# static fields
.field private static final CLEAN_UP_FANCY_ICONS:I = 0x3

.field private static final FADE_IN_SCREEN_ANIM_DURATION:I = 0x87

.field private static final FADE_OUT_SCREEN_ANIM_DURATION:I = 0x50

.field private static final INTENT_EXTRA_BACK_ACTION:Ljava/lang/String; = "back_action"

.field private static final INTENT_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final METHOD_REQUEST_LOCATE_ITEM_INFO:Ljava/lang/String; = "request_locate_item_info"

.field private static final MIME_TYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final PAK_NAME_GOOGLE_PACK_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PAK_NAME_PACK_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PAUSE_FANCY_ICONS:I = 0x2

.field private static final PROFILE_ACTIVITY_CREATE:Z = false

.field private static final REMOVE_GHOST_WIDGETS_DELAY:I = 0x1f4

.field private static final RESUME_FANCY_ICONS:I = 0x1

.field private static final RUNTIME_STATE_ALL_APPS_PRE_QUERY:Ljava/lang/String; = "launcher.all_apps.pre_query"

.field private static final RUNTIME_STATE_ALL_APPS_SEARCH_FOCUS:Ljava/lang/String; = "launcher.all_apps.search_focus"

.field private static final SNAP_TO_PAGE_ON_WIDGET_ADDED_DELAY:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "OLauncher"

.field private static final TRACE_SETUP_VIEWS:Ljava/lang/String; = "setupViews"

.field private static final UPDATE_PREDICTED_TIME_WHEN_UPDATE:J = 0x320L


# instance fields
.field private hasCheckWorkspacePadding:Z

.field private isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRemoveAppwidgetSuccesful:Z

.field private mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

.field private mAppUpdateDotChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mAreaWidgetTransformViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

.field private mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

.field public mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

.field private mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

.field private mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

.field private mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/launcher3/OplusBubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockviewPanel:Landroid/view/View;

.field private mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

.field private mExitChildrenModeView:Landroid/widget/TextView;

.field private mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field private mFindView:Landroid/view/View;

.field private mFloatingIconContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

.field public mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

.field private mHasBindFirstPage:Z

.field private mHoldFolderOpen:Z

.field private mHoldFolderOpenForWorkEdu:Z

.field private mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

.field private mIsDrawerLocation:Z

.field private mIsFirstLocateAndDrag:Z

.field private mIsInMinimize:Z

.field private mIsInSplitScreenMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mIsSwitchingLayout:Z

.field public mIsUserUnlocked:Z

.field private mIsWidgetTouchResizeEnable:Z

.field private mLastActivityConfiguration:Landroid/content/res/Configuration;

.field private mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

.field private mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

.field private mLoadingView:Landroid/view/View;

.field private mLocationMessage:Ljava/lang/String;

.field private mNewIntentTask:Ljava/lang/Runnable;

.field private final mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

.field private final mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOplusOnResumeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayAvailableTask:Ljava/lang/Runnable;

.field private mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

.field private mPendingTaskOnStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPullDownDetectController:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

.field private mReInflateWidgetsTask:Ljava/lang/Runnable;

.field private mRecentContainer:Lcom/android/launcher3/RecentContainerView;

.field private mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

.field private mState:I

.field private mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

.field private mSwitchChildrenModeLoading:Z

.field private mTaskViewContainer:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

.field private mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

.field private mToast:Landroid/widget/Toast;

.field private mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

.field private mTouchInProgress:Z

.field private mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

.field private mTryAddCardByStoreRunnable:Ljava/lang/Runnable;

.field private mUncaughtExceptionHandler:Lcom/android/launcher/MyUncaughtExceptionHandler;

.field private mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mVisible:Z

.field private mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

.field private splitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHasBindFirstPage:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mLastActivityConfiguration:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsWidgetTouchResizeEnable:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsSwitchingLayout:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mToast:Landroid/widget/Toast;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsInMinimize:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->hasCheckWorkspacePadding:Z

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/launcher/Launcher$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/Launcher$1;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->splitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsDrawerLocation:Z

    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsFirstLocateAndDrag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/Launcher;->mState:I

    sget-object v0, Lcom/android/common/util/j0;->c:Lcom/android/common/util/j0;

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayAvailableTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher/b;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mReInflateWidgetsTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-void
.end method

.method public static synthetic B(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/Launcher;->lambda$removeItem$29(ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$addCardFromFirstScreen$14(I)V

    return-void
.end method

.method public static synthetic D(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic E(Lcom/android/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$notifyUninstallEndAction$28(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic F(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$pauseFancyIcons$9()V

    return-void
.end method

.method public static synthetic G(ZLjava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$executeAllOplusOnFocusCallbacks$47(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic H(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItems$4()V

    return-void
.end method

.method public static synthetic I(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$43(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J(Lcom/android/launcher/model/ChildrenModeManager;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$bindExitChildrenModeIcon$10(Lcom/android/launcher/model/ChildrenModeManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$24(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic L(Lcom/android/launcher/Launcher;ZLjava/lang/Boolean;)Ly2/p;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$showAllAppsFromIntent$46(ZLjava/lang/Boolean;)Ly2/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$44(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic N(Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$createSecurityHintDialog$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic O(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onWorkspaceHighTemperatureProtectionStateChange$38()V

    return-void
.end method

.method public static synthetic P(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$39(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/Launcher;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static synthetic R(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onUserUnlocked$18()V

    return-void
.end method

.method public static synthetic S(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$26(Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->lambda$removeWidgetWithAnimate$30(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic U(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$addWidgetFromToggleItemOps$13(I)V

    return-void
.end method

.method public static synthetic V(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItems$6()V

    return-void
.end method

.method public static synthetic W(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$resumeFancyIcons$8()V

    return-void
.end method

.method public static synthetic X(Lcom/android/launcher/Launcher;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$grantBindAppWidgetPermission$34(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$rebindWidgetsWhenUserUnlocked$21(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$45(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$42(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/Launcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsInMinimize:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/Launcher;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher/Launcher;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mBrowserOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/Launcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/launcher/Launcher;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BaseActivity;->mIsPaused:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    return-object p0
.end method

.method public static synthetic access$1302(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showUninstallPanel()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->dismissEncryptedHintDialog()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/dragndrop/IDragEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    return-object p0
.end method

.method public static synthetic access$1701(Lcom/android/launcher/Launcher;F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onScrollChanged(F)V

    return-void
.end method

.method public static synthetic access$1801(Lcom/android/launcher/Launcher;F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onScrollChangedBrowserNews(F)V

    return-void
.end method

.method public static synthetic access$1902(Lcom/android/launcher/Launcher;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mFindView:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/statemanager/StateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updatePageIndicatorForSplit()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/statemanager/StateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->onAppUpdateDotChange()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/Launcher;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/Launcher;->mState:I

    return p0
.end method

.method public static synthetic access$602(Lcom/android/launcher/Launcher;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/Launcher;->mState:I

    return p1
.end method

.method public static synthetic access$700(Lcom/android/launcher/Launcher;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsFirstLocateAndDrag:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/android/launcher/Launcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsFirstLocateAndDrag:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/launcher/Launcher;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BaseActivity;->mIsPaused:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/android/launcher/Launcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->isHomeKeyPress:Z

    return p1
.end method

.method private addStaticBlurView()V
    .registers 5

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "OLauncher"

    const-string v1, "addStaticBlurView"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-direct {v0, p0}, Lcom/android/launcher/views/OplusStaticBlurView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setStaticBlurView(Lcom/android/launcher/views/OplusStaticBlurView;)V

    :cond_30
    return-void
.end method

.method public static synthetic b0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$40(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private bindExitChildrenModeIcon()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    :cond_12
    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    invoke-direct {p0, v1}, Lcom/android/launcher/Launcher;->inflateExitChildrenModeView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/launcher/v;

    invoke-direct {v0, v2}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/model/ChildrenModeManager;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4f

    :cond_3d
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public static synthetic c0(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$25(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private cleanUpFancyIcons()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateFancyIcons(I)V

    return-void
.end method

.method private containsAppWidget(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_22

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_e

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    const/4 p0, 0x1

    :cond_22
    :goto_22
    return p0
.end method

.method private createSecurityHintDialog()Landroidx/appcompat/app/AlertDialog;
    .registers 12

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/support/appcompat/R$style;->COUIAlertDialog_Center:I

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->a()V

    const v1, 0x7f120481

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b9

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "app_lock_path_resid"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f12047a

    if-eqz v1, :cond_b5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "settingsLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OLauncher"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_4c
    array-length v8, v1

    if-ge v7, v8, :cond_75

    const-string/jumbo v8, "settingsLockId:"

    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v7

    invoke-static {v8, v9, v5}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v8, v1, v7

    const-string/jumbo v9, "string"

    const-string v10, "com.android.settings"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher/Launcher;->querySecurityDialogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    sub-int/2addr v8, v2

    if-ge v7, v8, :cond_72

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_75
    const-string/jumbo v1, "settingsRoute:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12047c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    goto :goto_bf

    :cond_b1
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    goto :goto_bf

    :cond_b5
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    goto :goto_bf

    :cond_b9
    const v1, 0x7f12047b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :goto_bf
    const v1, 0x7f120480

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/launcher/Launcher$9;

    invoke-direct {v3, p0}, Lcom/android/launcher/Launcher$9;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v1, 0x7f120167

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/launcher/u;

    invoke-direct {v3, p0}, Lcom/android/launcher/u;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$new$32()V

    return-void
.end method

.method private dismissEncryptedHintDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_a
    return-void
.end method

.method private dumpLauncherData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string p2, "\n\n"

    invoke-static {p2, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/Launcher;->dumpLauncherStatus(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p1, p3}, Lcom/android/common/config/ScreenInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/util/DisplayController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p4}, Lcom/android/common/debug/LogUtils;->onLauncherDump([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher/download/DownloadAppsManager;->dumpDownloadAppInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p0

    if-eqz p0, :cond_4e

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->dumpFolderRecommendInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_4e
    invoke-static {p3}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->dump(Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-eqz p0, :cond_5e

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {p0, p1, p3}, Lcom/oplus/launcher/overlay/RROverlayManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_5e
    return-void
.end method

.method private dumpLauncherStatus(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "======== Launcher status start ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Launcher Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/common/config/VersionInfo;->getLauncherVersionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v1}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current page count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Activity configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/LauncherApplication;->getAppConfigInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Application configuration: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppConfig()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/LauncherApplication;->getAppConfigInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "======== Launcher status end ========"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e0(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$41(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private executeLocationIcon()V
    .registers 7

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLocationMessage:Ljava/lang/String;

    new-instance v2, Lcom/android/launcher/Launcher$14;

    invoke-direct {v2, p0}, Lcom/android/launcher/Launcher$14;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_128

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_128

    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object v3, v3, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object v0, v0, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {v0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setComponentName(Landroid/content/ComponentName;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/Launcher$15;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher/Launcher$15;-><init>(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindView:Landroid/view/View;

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, -0x65

    if-eq v1, v5, :cond_97

    const/16 v2, -0x64

    if-eq v1, v2, :cond_63

    goto/16 :goto_128

    :cond_63
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_8e

    if-ne v1, v4, :cond_6a

    goto :goto_8e

    :cond_6a
    if-ne v1, v3, :cond_75

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceFolderView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto/16 :goto_128

    :cond_75
    const/16 v2, 0x64

    if-ne v1, v2, :cond_82

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopCardView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto/16 :goto_128

    :cond_82
    const/4 v2, 0x5

    if-ne v1, v2, :cond_128

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopWidgetView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto/16 :goto_128

    :cond_8e
    :goto_8e
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto/16 :goto_128

    :cond_97
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_e6

    if-ne v1, v4, :cond_9e

    goto :goto_e6

    :cond_9e
    if-ne v1, v3, :cond_a9

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, p0, v0, v5}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceFolderView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto/16 :goto_128

    :cond_a9
    const/16 v0, 0xca

    if-ne v1, v0, :cond_128

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->switchToTab(I)V

    :cond_c8
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V

    goto :goto_128

    :cond_da
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    iput-boolean v2, p0, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    goto :goto_128

    :cond_e6
    :goto_e6
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v1, :cond_128

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto :goto_128

    :cond_f0
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->switchToTab(I)V

    :cond_10b
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V

    goto :goto_128

    :cond_11d
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    iput-boolean v2, p0, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    :cond_128
    :goto_128
    return-void
.end method

.method private executeTaskRelyOnStarted(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void
.end method

.method private executeTryAddCardByStoreRunnable()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mTryAddCardByStoreRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mTryAddCardByStoreRunnable:Ljava/lang/Runnable;

    const-string p0, "OLauncher"

    const-string v0, "execute tryAddCardByStore task"

    invoke-static {p0, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static synthetic f0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItems$7()V

    return-void
.end method

.method public static synthetic g0(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItems$5(Landroid/view/View;)V

    return-void
.end method

.method private getAppInfoInList(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, p0

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz p2, :cond_26

    new-instance p0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    :cond_26
    return-object p0
.end method

.method private varargs getFirstMatchForAllAppsView([Ljava/util/function/Predicate;)Landroid/view/View;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string p0, "OLauncher"

    const-string p1, "Get null parent view while match for all apps view"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    move v3, v4

    goto :goto_2b

    :cond_27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    :goto_2b
    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v5, v2

    move v2, v4

    :goto_37
    array-length v6, p1

    if-ge v2, v6, :cond_b1

    aget-object v6, p1, v2

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v7

    const-class v8, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz v7, :cond_7f

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7f

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_7f

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    move v9, v4

    :goto_69
    if-ge v9, v8, :cond_7f

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v6, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    goto :goto_80

    :cond_7c
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    :cond_7f
    move-object v10, v1

    :goto_80
    if-eqz v10, :cond_89

    invoke-direct {p0, v10, v3, v5}, Lcom/android/launcher/Launcher;->isMatchViewVisible(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_ae

    return-object v10

    :cond_89
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v4

    :goto_8e
    if-ge v8, v7, :cond_a5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v6, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a2

    move-object v10, v9

    goto :goto_a5

    :cond_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_8e

    :cond_a5
    :goto_a5
    if-eqz v10, :cond_ae

    invoke-direct {p0, v10, v3, v5}, Lcom/android/launcher/Launcher;->isMatchViewVisible(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_ae

    return-object v10

    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_b1
    return-object v1
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static getLauncher(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher/Launcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher/Launcher;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLauncherOrNull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " catch "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OLauncher"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h0(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$addWidgetFromToggleItemOps$15(I)V

    return-void
.end method

.method public static synthetic i0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->onLauncherStarted()V

    return-void
.end method

.method private inflateExitChildrenModeView(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->updateExitChildrenModeIconStyle(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v1, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    :goto_20
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-object p1
.end method

.method private initBrowserOverLayScrollSpring()V
    .registers 4

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/launcher/Launcher$13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/Launcher$13;-><init>(Lcom/android/launcher/Launcher;F)V

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43fa0000  # 500.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v0, 0x3c23d70a  # 0.01f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private initFirstLauncherBitmap()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->createLauncherBitmap(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private initOverLayScrollSpring()V
    .registers 4

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/launcher/Launcher$12;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/Launcher$12;-><init>(Lcom/android/launcher/Launcher;F)V

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43fa0000  # 500.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v0, 0x3c23d70a  # 0.01f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private initSimpleModeObserver()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "OLauncher"

    const-string/jumbo v0, "not support SimpleMode"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initWallpaper()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->tryLoadWallpaper(Z)V

    :cond_8
    return-void
.end method

.method private isDeviceOwnerOrActiveAdmins(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    const-string p1, "isDeviceOwnerOrActiveAdmins ---> flag = "

    const-string v0, "OLauncher"

    invoke-static {p1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isMatchViewVisible(Landroid/view/View;II)Z
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int/2addr v0, v2

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "view is obscured"

    const-string v6, "OLauncher"

    if-eqz v3, :cond_42

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz v3, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    aget p1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    if-ge v2, p0, :cond_52

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_52

    if-lt v2, p2, :cond_4e

    if-le v0, p3, :cond_52

    :cond_4e
    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_52
    return v1
.end method

.method public static synthetic j0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$initSimpleModeObserver$35()V

    return-void
.end method

.method public static synthetic k0()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/Launcher;->lambda$new$31()V

    return-void
.end method

.method public static synthetic l0(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$onAppsLimitedStateChange$17(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$addCardFromFirstScreen$14(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$addWidgetFromToggleItemOps$13(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$addWidgetFromToggleItemOps$15(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$bindAppWidgetAdd$23(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    goto :goto_30

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->setUpdateAlphaValueAfterAddWidget(Z)V

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :goto_30
    return-void
.end method

.method private synthetic lambda$bindAppWidgetRemove$22(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 11

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2a

    iget-object p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "OLauncher"

    const-string v0, "bindAppWidgetRemove remove widget"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    return p1

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$bindExitChildrenModeIcon$10(Lcom/android/launcher/model/ChildrenModeManager;Landroid/view/View;)V
    .registers 3

    const-string p1, "OLauncher"

    const-string v0, "Start to quit children mode."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p1}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->exitChildrenMode()V

    return-void
.end method

.method private synthetic lambda$createSecurityHintDialog$11(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->dismissEncryptedHintDialog()V

    return-void
.end method

.method private static synthetic lambda$disbandFolder$24(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$disbandFolder$25(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 5

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p2

    if-eqz p2, :cond_2a

    instance-of p2, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p2, :cond_2a

    const-string p2, "OLauncher"

    const-string v0, "disbandFolder: fillUpEmptyCell"

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    const/4 v1, 0x0

    aput v0, p2, v1

    iget p0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    aput p0, p2, v0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :cond_2a
    return-void
.end method

.method private synthetic lambda$disbandFolder$26(Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V
    .registers 5

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/folder/DisbandFolderHelper;->batchBindItemToEmptyPoint(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Ljava/util/List;)V

    if-eqz p4, :cond_17

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p0

    if-eqz p0, :cond_17

    instance-of p0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$disbandFolder$27()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->setReorderAnimating(Z)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$dump$16(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getDumpPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher/Launcher;->dumpLauncherData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->flushDump()V

    return-void
.end method

.method private static synthetic lambda$executeAllOplusOnFocusCallbacks$47(ZLjava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$finishBindingItems$3()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/AppAdviceCheck;->tryAddAppAdviceCard()V

    return-void
.end method

.method private synthetic lambda$finishBindingItems$4()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/OplusModelWriter;->removeGhostWidgets()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/common/util/e0;->c:Lcom/android/common/util/e0;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$finishBindingItems$5(Landroid/view/View;)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishBindingItems in toggle bar. set alpha with 1 to current page. cellLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_25
    return-void
.end method

.method private synthetic lambda$finishBindingItems$6()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->checkInvalidAndNoPermissionCard()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/card/manager/domain/CardManager;->setCreateWithEmptyConfig(Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$finishBindingItems$7()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher/widget/GlobalSearchWidgetHelper;->checkAndAddGlobalSearch(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$39(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p3, :cond_2a

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v1, p0, :cond_2a

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p0, :cond_d

    if-ne p0, v0, :cond_2a

    :cond_d
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    iget-object p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$40(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstMatchForAppClose: cachedClickedItemInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3e

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$41(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p0, :cond_f

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$42(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    instance-of v0, p3, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast p3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p0

    if-eqz p0, :cond_33

    aget-object p0, p1, v1

    if-nez p0, :cond_33

    aput-object v2, p1, v1

    iget-object p0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    aput p0, p2, v1

    :cond_33
    const/4 p0, 0x1

    return p0

    :cond_35
    return v1
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$43(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    instance-of v0, p3, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast p3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p0

    if-eqz p0, :cond_33

    aget-object p0, p1, v1

    if-nez p0, :cond_33

    aput-object v2, p1, v1

    iget-object p0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    aput p0, p2, v1

    :cond_33
    const/4 p0, 0x1

    return p0

    :cond_35
    return v1
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$44(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_28

    :cond_a
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    if-ne v1, v2, :cond_28

    :cond_11
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    move v0, v2

    :cond_28
    :goto_28
    return v0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$45(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private synthetic lambda$grantBindAppWidgetPermission$34(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getInnerManager()Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-string p1, "grantBindAppWidgetPermission, exception = "

    const-string v0, "OLauncher"

    invoke-static {p1, p0, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$initSimpleModeObserver$35()V
    .registers 7

    const-string v0, "OLauncher"

    iget-object v1, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    :try_start_d
    new-instance v3, Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher/LauncherSimpleModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "simple_mode_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "refreshLauncherMode"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    invoke-static {p0}, Lcom/android/common/util/LauncherModeUtil;->refreshLauncherMode(Landroid/content/Context;)V

    const-string/jumbo v3, "refreshLauncherMode end"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_35} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_35} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_35} :catch_36

    goto :goto_52

    :catch_36
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSimpleModeObserver error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    iget-object p0, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_52
    :goto_52
    return-void
.end method

.method private static synthetic lambda$new$31()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/common/util/OplusFoldStateHelper;->updateIdpWhenChangingFoldState(Z)V

    return-void
.end method

.method private synthetic lambda$new$32()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    check-cast p0, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppWidgetHost;->reInflateAllHostView()V

    return-void
.end method

.method private synthetic lambda$notifyUninstallEndAction$28(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_27

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_27
    :goto_27
    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    :cond_32
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v0, :cond_4d

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_4d

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private synthetic lambda$onAppsLimitedStateChange$17(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->updateAppLimitedState(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onBusEvent$37()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-nez v0, :cond_e

    return-void

    :cond_e
    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->clickItem()V

    return-void
.end method

.method private synthetic lambda$onChildrenModeChanged$12()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    const-string v1, "childrenMode"

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherCallbacksImp;->connectAssist(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->startBinding()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateInsetForChildrenMode()V

    return-void
.end method

.method private static synthetic lambda$onConfigurationChanged$2()V
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper;->onConfigurationChange()V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setGlobleSearchName(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/MemoryWatchDog;->pushStatistics(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onUserUnlocked$18()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    const-string/jumbo v2, "userUnlock"

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0, v2}, Lcom/android/launcher/LauncherCallbacksImp;->connectAssist(Ljava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mBrowserOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lo1/d;

    if-eqz v0, :cond_19

    check-cast p0, Lo1/d;

    invoke-virtual {p0, v2}, Lo1/d;->a(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private synthetic lambda$onUserUnlocked$19()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->checkLimitedAppOnUserUnlocked()V

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->checkHiddenAppsOnUserUnlocked()V

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->checkHiddenGameAppsOnUserUnlocked()V

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setGlobleSearchName(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onUserUnlocked$20()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getMPendingInitForUserLock()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setMPendingInitForUserLock(Z)V

    const-string v1, "OLauncher"

    const-string v2, "init USRelatedPermissionManager for user unlocked"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->initPermissionState()V

    :cond_1e
    return-void
.end method

.method private synthetic lambda$onWorkspaceHighTemperatureProtectionStateChange$38()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updateHighTemperatureProtectionState()V

    return-void
.end method

.method private synthetic lambda$pauseFancyIcons$9()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateFancyIcons(I)V

    return-void
.end method

.method private static synthetic lambda$rebindWidgetsWhenUserUnlocked$21(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    instance-of v0, p3, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    check-cast p3, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$removeItem$29(ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    if-eqz p1, :cond_8

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    goto :goto_e

    :cond_8
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->markUnsubscribedOnDetach()V

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    if-eqz p4, :cond_2d

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    move-object p2, p5

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V

    goto :goto_2d

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p1, p5}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePagePreviewItems()V

    :cond_44
    return-void
.end method

.method private static synthetic lambda$removeWidgetWithAnimate$30(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$resumeFancyIcons$8()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateFancyIcons(I)V

    return-void
.end method

.method private synthetic lambda$setDragListener$33()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher3/dragndrop/IDragCallback;->sendCardInfoList(Ljava/util/List;)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    sget-object v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->initOneHandedMode(Landroid/content/Context;)V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private synthetic lambda$showAllAppsFromIntent$46(ZLjava/lang/Boolean;)Ly2/p;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAllAppsFromIntent switch to drawer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->showAllAppsFromIntent(Z)V

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$tryAddCardByStore$36(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->tryAddCardByStore(I)V

    return-void
.end method

.method private listenHomeKey()V
    .registers 3

    new-instance v0, Lcom/android/launcher/HomeKeyObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher/HomeKeyObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    new-instance v1, Lcom/android/launcher/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$7;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/HomeKeyObserver;->setHomeKeyListener(Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->startListen()V

    return-void
.end method

.method public static synthetic m0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$bindAppWidgetAdd$23(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private mapOverCellLayout(Ljava/util/Map;Lcom/android/launcher3/CellLayout;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/CellLayout;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_6a

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v5, :cond_4e

    instance-of v5, v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v5, :cond_4e

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v5, :cond_67

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_32
    if-ge v6, v5, :cond_48

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, p1, v8}, Lcom/android/launcher/Launcher;->getAppInfoInList(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v9

    if-eqz v9, :cond_45

    iget-boolean v7, v9, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    iput-boolean v7, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    const/4 v7, 0x1

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_48
    if-eqz v7, :cond_67

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    goto :goto_67

    :cond_4e
    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v5, :cond_67

    instance-of v5, v3, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v5, :cond_67

    invoke-direct {p0, p1, v4}, Lcom/android/launcher/Launcher;->getAppInfoInList(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v5

    if-eqz v5, :cond_67

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean v5, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    iput-boolean v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusBubbleTextView;->applyLimitedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_6a
    return-void
.end method

.method private mapOverItems(Ljava/util/Map;[Lcom/android/launcher3/CellLayout;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;[",
            "Lcom/android/launcher3/CellLayout;",
            ")V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p2, v1

    if-eqz v2, :cond_b

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/Launcher;->mapOverCellLayout(Ljava/util/Map;Lcom/android/launcher3/CellLayout;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method private mapOverItems([Lcom/android/launcher3/CellLayout;)V
    .registers 12

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_63

    aget-object v2, p1, v1

    if-eqz v2, :cond_60

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_12
    if-ge v4, v3, :cond_60

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v7, v6, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v7, :cond_4c

    instance-of v7, v5, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v7, :cond_4c

    check-cast v5, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v7, :cond_5d

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v0

    move v9, v8

    :goto_3a
    if-ge v8, v7, :cond_46

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_3a

    :cond_46
    if-eqz v9, :cond_5d

    invoke-virtual {v5}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    goto :goto_5d

    :cond_4c
    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v7, :cond_5d

    instance-of v7, v5, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v7, :cond_5d

    check-cast v5, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v5, v5, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v5, v6}, Lcom/android/launcher3/IBubbleTextViewExt;->applyHighTempProtectedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_63
    return-void
.end method

.method public static synthetic n0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$setDragListener$33()V

    return-void
.end method

.method public static synthetic o0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onBusEvent$37()V

    return-void
.end method

.method private onAppUpdateDotChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->onAppUpdateDotSwitchChange()V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->onAppUpdateDotSwitchChange()V

    :cond_12
    return-void
.end method

.method private onLauncherStarted()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.LAUNCHER_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/common/config/Constants$Packages;->PACKAGE_CLOCK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_34

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "onLauncherStarted -- Exception:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->onLauncherStarted(Lcom/android/launcher/Launcher;)V

    :cond_3f
    return-void
.end method

.method public static synthetic p0(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$dump$16(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method private pauseFancyIcons()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/b;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic q0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$27()V

    return-void
.end method

.method private querySecurityDialogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "OLauncher"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_13} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const-string p1, "Exception:"

    invoke-static {p1, p0, v0}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v1

    :catch_1b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NotFoundException:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_31
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NameNotFoundException:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic r0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onChildrenModeChanged$12()V

    return-void
.end method

.method private releaseObj()V
    .registers 2

    invoke-static {p0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->release()V

    invoke-static {p0}, Lcom/android/launcher3/ota/OpOtaManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ota/OpOtaManager;->release()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->release()V

    return-void
.end method

.method private removeWidgetWithAnimate(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 10

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x440001ec

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v1, 0x3f170a3d  # 0.59f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v3, p1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    const v2, 0x3a83126f  # 0.001f

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Lcom/android/launcher/w;

    invoke-direct {v5, p2}, Lcom/android/launcher/w;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, p1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, p1, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v5, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private resetRecentsVisibility()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    const-string/jumbo v0, "resetRecentsVisibility error, "

    const-string v1, "OLauncher"

    invoke-static {v0, p0, v1}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private resumeFancyIcons()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s0(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$tryAddCardByStore$36(I)V

    return-void
.end method

.method private showLoadingViewIfNeed()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/common/util/UserUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "OLauncher"

    if-nez v0, :cond_1b

    const-string/jumbo p0, "showLoadingViewIfNeed: dragLayer is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    const-string/jumbo v2, "showLoadingViewIfNeed -- show loading view in guest user!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0119

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private showUninstallPanel()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-nez v0, :cond_d

    const-string p0, "OLauncher"

    const-string/jumbo v0, "onPrepareDialog --->DIALOG_UNINSTALL_APP ---> appInfo null. "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportWorkProfile:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->isDeviceOwnerOrActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->startActivityForUninstall(Ljava/lang/String;)V

    return-void

    :cond_29
    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel;

    invoke-direct {v0, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void
.end method

.method private startActivityForUninstall(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_27

    const-string p1, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2c

    :cond_27
    const-string p1, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2c
    const/high16 p1, 0x10800000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWidgetViewAddAnimation(Landroid/view/View;Z)V
    .registers 9

    if-nez p2, :cond_7f

    if-nez p1, :cond_5

    goto :goto_7f

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x440001ec

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x3f170a3d  # 0.59f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const v1, 0x3a83126f  # 0.001f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const v3, 0x3f4ccccd  # 0.8f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v4, p1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public static synthetic t0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$bindAppWidgetRemove$22(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private toMap(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v2, :cond_9

    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_32
    return-object p0
.end method

.method public static synthetic u0()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/Launcher;->lambda$onUserUnlocked$20()V

    return-void
.end method

.method private udpateWorkspacePaddingIfNeeded()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->hasCheckWorkspacePadding:Z

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->hasCheckWorkspacePadding:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    if-eq v1, v0, :cond_51

    const-string v0, "OLauncher"

    const-string/jumbo v1, "workspace padding changed, recreate device profile"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->initTargetIdpGrid()V

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    :cond_51
    return-void
.end method

.method private updateAppLimitedState(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/Launcher;->mapOverItems(Ljava/util/Map;[Lcom/android/launcher3/CellLayout;)V

    :cond_b
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-array v2, v1, [Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_2b

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2b
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/Launcher;->mapOverItems(Ljava/util/Map;[Lcom/android/launcher3/CellLayout;)V

    :cond_2e
    return-void
.end method

.method private updateDragLayerTranslationX()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_5f

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDraglayer.TranslationX()："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OLauncher"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private updateExitChildrenModeIconStyle(Landroid/widget/TextView;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isChildrenModeWpBright()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const v2, 0x7f0805ad

    const v3, 0x7f0603ae

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v0, :cond_23

    const v2, 0x7f0805ae

    const v3, 0x7f0603af

    :cond_23
    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46

    :cond_32
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3f
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_46
    return-void
.end method

.method private updateFancyIcons(I)V
    .registers 6

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    if-eqz p0, :cond_65

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcons()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFancyIcons: op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v3, :cond_35

    check-cast v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_51

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResume()V

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResumeThread()V

    :cond_51
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5a

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPause()V

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPauseThread()V

    :cond_5a
    if-ne p1, v2, :cond_35

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onCleanUp()V

    goto :goto_35

    :cond_60
    if-ne p1, v2, :cond_65

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_65
    return-void
.end method

.method private updateHighTemperatureProtectionState()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_15

    const-string v0, "OLauncher"

    const-string/jumbo v1, "updateHighTemperatureProtectionState in workspace "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->mapOverItems([Lcom/android/launcher3/CellLayout;)V

    :cond_15
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-array v2, v1, [Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v1, :cond_35

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_35
    invoke-direct {p0, v2}, Lcom/android/launcher/Launcher;->mapOverItems([Lcom/android/launcher3/CellLayout;)V

    :cond_38
    return-void
.end method

.method private updatePageIndicatorForSplit()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_29

    :cond_b
    const-string/jumbo v0, "update indicator for split "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    const-string v2, "Common"

    const-string v3, "OLauncher"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->updateAssistScreenPoint(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->updatePageIndicatorCount()V

    :cond_29
    :goto_29
    return-void
.end method

.method public static synthetic v0()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/Launcher;->lambda$finishBindingItems$3()V

    return-void
.end method

.method public static synthetic w0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onUserUnlocked$19()V

    return-void
.end method

.method public static synthetic x0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onCreate$0()V

    return-void
.end method


# virtual methods
.method public addAppCardImpl(Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/card/PendingAddCardInfo;->mFromDrop:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/Launcher;->completeAddAppCard(Lcom/android/launcher3/PendingAddItemInfo;Z)V

    return-void
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 2

    if-nez p1, :cond_a

    const-string p0, "OLauncher"

    const-string p1, "addAppWidgetFromDrop, info == null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void
.end method

.method public addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .registers 6

    const/4 p5, 0x5

    invoke-virtual {p4, p0, p1, p2, p5}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p5

    if-nez p5, :cond_e

    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    :cond_e
    return-void
.end method

.method public addCardFromFirstScreen(Lcom/android/launcher3/widget/PendingAddWidgetInfo;Z)Z
    .registers 7

    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    const/16 p2, -0x64

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 p2, 0x0

    move v0, p2

    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string p1, "Success to find cell at page "

    const-string v1, "OLauncher"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/y;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;II)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_30
    return p2
.end method

.method public addConvertedFolder(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Z)Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 6

    if-eqz p4, :cond_a

    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    :cond_a
    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p4

    if-nez p4, :cond_27

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p4

    if-eqz p4, :cond_20

    sget-object p4, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    const v0, 0x7f0d0050

    invoke-virtual {p4, v0, p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p4

    goto :goto_27

    :cond_20
    const p4, 0x7f0d00e5

    invoke-static {p4, p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p4

    :cond_27
    :goto_27
    sget-object p1, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateFolderName(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p3

    if-eqz p3, :cond_38

    move-object p3, p4

    check-cast p3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_38
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p4, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object p4
.end method

.method public addFolder(Lcom/android/launcher3/CellLayout;IIIILjava/lang/String;)Lcom/android/launcher3/folder/FolderIcon;
    .registers 14

    new-instance v6, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v6}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, ""

    iput-object v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_3d

    :cond_10
    iput-object p6, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p6}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->onNewGameFolderCreated()V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sendGameFolderCreatedBroadcastIfNeed(Landroid/content/Context;)V

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const p2, 0x7f0d00e5

    invoke-static {p2, p0, p1, v6}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p2, p1, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p2

    if-nez p2, :cond_5e

    return-object p1

    :cond_5e
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/statistics/LauncherStatistics;->statsGenerateFolder(Ljava/lang/String;)V

    return-object p1
.end method

.method public addOplusOnFocusChangeCallback(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "addOplusOnFocusChangeCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOplusOnResumeCallback(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "addOplusOnResumeCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;IZZ)Z
    .registers 11

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    const/16 v1, -0x64

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    const-string v1, "OLauncher"

    const/4 v3, 0x0

    if-eqz p3, :cond_28

    const-string p0, "addWidgetFromDrop can not find cell for widget! widget info = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_28
    move v4, v3

    :goto_29
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_66

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v0

    goto :goto_48

    :cond_41
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_48
    if-ge v4, v5, :cond_4b

    goto :goto_63

    :cond_4b
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z

    move-result v5

    if-eqz v5, :cond_63

    const-string p1, "Success to find cell at page "

    invoke-static {p1, v4, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher/y;

    invoke-direct {p2, p0, v4, v0}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;II)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_66
    if-eqz p4, :cond_74

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;IZZ)Z

    move-result p0

    return p0

    :cond_74
    const p1, 0x7f1203cb

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->showOutOfSpaceMessage(I)V

    return v3
.end method

.method public addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z
    .registers 10

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    const/16 v0, -0x64

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    instance-of v0, p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    const-string v1, "OLauncher"

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    const v3, 0xd3ecf26

    if-ne v0, v3, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->checkUSCardContainerExistAndToast(Lcom/android/launcher3/OplusWorkspace;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string p0, "There is already a universal_service card on the desktop, and repeated additions are not allowed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z

    move-result v3

    if-eqz v3, :cond_33

    return v4

    :cond_4b
    if-eqz p2, :cond_60

    const-string p0, "addWidgetFromDrop can not find cell for widget! widget info = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_60
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_67
    sget-object v3, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_78

    add-int/lit8 v0, v0, -0x1

    goto :goto_67

    :cond_78
    :goto_78
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_9b

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z

    move-result v3

    if-eqz v3, :cond_98

    const-string p1, "Success to find cell at page "

    invoke-static {p1, v0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher/y;

    invoke-direct {p2, p0, v0, v4}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;II)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_9b
    if-eqz p3, :cond_a9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    move-result p0

    return p0

    :cond_a9
    const p1, 0x7f1203cb

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->showOutOfSpaceMessage(I)V

    return v2
.end method

.method public addWorkspaceLoadedCallback(Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateFadeScreen(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const-string v1, "OLauncher"

    if-nez v0, :cond_c

    const-string p0, "animateFadeScreen() mWorkspace is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsSwitchingLayout:Z

    if-nez p0, :cond_16

    const-string p0, "animateFadeScreen() mIsSwitchingLayout is false."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const/high16 p0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    move v2, p0

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    if-eqz p1, :cond_21

    move p0, v1

    :cond_21
    if-eqz p1, :cond_26

    const/16 p1, 0x87

    goto :goto_28

    :cond_26
    const/16 p1, 0x50

    :goto_28
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput p0, v1, v3

    const/4 p0, 0x1

    aput v2, v1, p0

    const-string p0, "alpha"

    invoke-static {v0, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_40

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_40
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public beforeStartActivity(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->beforeStartActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_22

    :cond_c
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/quickstep/TopTaskTracker;->forceUpdateOrderedTaskList:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearCacheForCamera(Landroid/content/Context;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V

    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "OLauncher"

    if-eqz p1, :cond_1c

    const-string p1, "bindAllApplications all APP"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    goto :goto_32

    :cond_1c
    const-string p1, "bindAllApplications state = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->bindAppRemove(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindAppWidgetAdd(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/Launcher;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz p3, :cond_1d

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance p3, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {p3, p0, p2}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public bindAppWidgetRemove(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, "OLauncher"

    if-nez v0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindAppWidgetRemove -- provider is null! name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_25
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p1, v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z

    move-result p0

    return p0

    :cond_3c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusLauncherModel;->findWidgetInfoInWorkHandler(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    instance-of v3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v3, :cond_4c

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    if-nez v3, :cond_64

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindAppWidgetRemove -- can not find widget,  item = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_64
    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance v4, Lcom/android/launcher/x;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher/x;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    if-nez v1, :cond_8b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string p0, "bindAppWidgetRemove: just reomove data, becuase has not found this widget from container"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    const/4 p0, 0x1

    return p0
.end method

.method public bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->addOrUpdateApps(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->bindAppAddOrUpdate(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindAppsAddedToWorkspace(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isAddAppToWorkspace()Z

    move-result v0

    const-string v1, "addAppOnWorkspace: "

    const-string v2, ", mode: "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OLauncher"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher/operators/Customizer;->onAddApp(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isOnlyPlaceAPPInDrawer()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v1

    if-nez v1, :cond_40

    :cond_3d
    invoke-static {p0, p1}, Lcom/android/launcher/model/FindSpaceHelper;->placeTargetAppsOnScreenIfNeeded(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    :cond_40
    if-eqz v0, :cond_6d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    :cond_6d
    return-void
.end method

.method public bindItems(Ljava/util/List;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_8
    if-ge p2, p1, :cond_18

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->snapToTargetShortcutPage(Lcom/android/launcher3/OplusWorkspace;Landroid/os/Handler;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public canAnimatePageChange()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public clearOplusOnFocusCallback()V
    .registers 4

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "clearOplusOnFocusCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public clearOplusOnResumeCallback()V
    .registers 4

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "clearOplusOnResumeCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public completeAddAppCard(Lcom/android/launcher3/PendingAddItemInfo;Z)V
    .registers 13

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/card/PendingAddCardInfo;->getCardConfigInfo()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    iget v1, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    const v2, 0xd3ecf26

    const-string v3, "OLauncher"

    if-ne v1, v2, :cond_27

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string p0, "completeAddAppCard SeedlingContainerCardDisabled."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    new-instance v1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v1}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    iget v4, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {v2, v4}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v2, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->minWidth:I

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iget v2, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->minHeight:I

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iget v2, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget-object v2, p2, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->mServiceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget p2, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->mCategory:I

    iput p2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iput-object v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p2

    if-nez p2, :cond_7f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "completeAddAppCard view is null, launcherCardInfo:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7f
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v4

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p2, v1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeAddAppCard--cardInf:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",success:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_ba

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_ba
    invoke-interface {p2}, Lcom/oplus/card/manager/domain/ICardView;->showLoadingIfNeed()V

    return-void
.end method

.method public completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez p4, :cond_f

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    :cond_f
    if-nez p4, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "completeAddAppWidget: appWidgetInfo is null. id = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OLauncher"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    new-instance v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v9, p1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p4, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    instance-of v3, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_5a

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v3, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    iput v3, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    :cond_5a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v3

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    if-nez p3, :cond_72

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p3, p0, p1, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    :cond_72
    iget p1, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-lez p1, :cond_83

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p1

    if-eqz p1, :cond_83

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    goto :goto_86

    :cond_83
    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    :goto_86
    invoke-virtual {p0, p3, v9}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p3, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_98

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_98
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_a8

    instance-of p1, p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz p1, :cond_a8

    move-object p1, p3

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setIsFirstAddToScreen(Z)V

    :cond_a8
    iget-object p1, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    invoke-static {p0, p1, p4}, Lcom/android/common/util/PackageUtils;->unFreezePackageIfNeeded(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, p3, v2}, Lcom/android/launcher/Launcher;->startWidgetViewAddAnimation(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object p2

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/launcher/Launcher$11;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/Launcher$11;-><init>(Lcom/android/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_10
    return-object p2
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 8

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, -0x65

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d010b

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    goto :goto_53

    :cond_1f
    instance-of v3, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_42

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_53

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    iget-object v3, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz v3, :cond_53

    sget-object v4, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/common/util/FontManager;

    iget v4, v4, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {v3, v4, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    goto :goto_53

    :cond_42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0044

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    :cond_53
    :goto_53
    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    instance-of p2, p1, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    if-eqz p2, :cond_8b

    move-object p2, p1

    check-cast p2, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p2, v3}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->setDragSource(Lcom/android/launcher3/DragSource;)V

    if-nez v0, :cond_8b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/LauncherState;

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    instance-of v3, p2, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-eqz v3, :cond_87

    check-cast p2, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->supportIconSelected(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_87

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    invoke-interface {v0, v1, v2, v2}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    :cond_8b
    return-object p1
.end method

.method public disbandFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v2, "OLauncher"

    const/4 v3, 0x3

    if-eq v1, v3, :cond_13

    const-string v0, "disbandFolder: the item to disband is not a folder, ignore !"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v7, 0x1

    if-lez v3, :cond_22

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItems(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;Z)V

    :cond_22
    iget-object v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v0, "disbandFolder: folderInfo.contents to disband is empty, ignore !"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_39

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupBlurHelper;->executePopupDeferredImmediately(Lcom/android/launcher3/Launcher;)V

    :cond_39
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->stopAppStoreContentRecommend(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_46
    move-object v3, v5

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v8

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v9, v4, :cond_5c

    invoke-virtual {v8}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_64

    :cond_5c
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    :goto_64
    move-object v4, v0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {v4, v5}, Lcom/android/launcher3/OplusCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v10, v4, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_81
    invoke-static {v1, v4}, Lcom/android/launcher/folder/DisbandFolderHelper;->getEmptyCellsAndFolderPointFromCellLayout(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)Landroid/util/Pair;

    move-result-object v0

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    const/4 v11, 0x0

    if-nez v0, :cond_92

    move v12, v7

    goto :goto_93

    :cond_92
    move v12, v11

    :goto_93
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-le v13, v14, :cond_db

    const-string v0, "disbandFolder: batchAndBindAddedWorkspaceItems"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1, v3, v11, v7}, Lcom/android/launcher/folder/DisbandFolderHelper;->removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v2, v1

    if-ne v0, v2, :cond_b7

    invoke-virtual {v8}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    :cond_b7
    new-array v0, v7, [I

    invoke-virtual {v8}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v7

    aput v1, v0, v11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/common/util/r;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/common/util/r;-><init>(Ljava/util/List;I)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/launcher/x;

    invoke-direct {v2, v5, v4}, Lcom/android/launcher/x;-><init>(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/launcher3/LauncherModel;->batchAndBindAddedWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/LauncherModel$CallbackTask;[I)V

    goto :goto_133

    :cond_db
    if-eqz v12, :cond_103

    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    const/16 v5, -0xc9

    if-eq v0, v5, :cond_ed

    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    const/16 v5, -0xc8

    if-ne v0, v5, :cond_f7

    :cond_ed
    const-string v0, "disbandFolder: currentPage is EMPTY_SCREEN, commitExtraEmptyScreens."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_f7
    const-string v0, "disbandFolder: isFolderIconInDocker = true"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1, v3, v7, v11}, Lcom/android/launcher/folder/DisbandFolderHelper;->removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V

    invoke-static {v6, v4, v9, v10}, Lcom/android/launcher/folder/DisbandFolderHelper;->batchBindItemToEmptyPoint(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Ljava/util/List;)V

    goto :goto_133

    :cond_103
    const-string v12, "disbandFolder: isFolderIconInDocker = false"

    invoke-static {v2, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v0, v12, v10, v2}, Lcom/android/launcher/folder/DisbandFolderHelper;->computeEmptyCellsAndItemCells(Landroid/graphics/Point;ILjava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v6, v1, v3, v7, v11}, Lcom/android/launcher/folder/DisbandFolderHelper;->removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V

    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v4, v0}, Lcom/android/launcher/folder/DisbandFolderHelper;->animateExistItemsToPosition(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;)V

    new-instance v11, Lcom/android/launcher/a0;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v8, v11, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_133
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    if-eqz v0, :cond_140

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->setReorderAnimating(Z)V

    :cond_140
    new-instance v0, Lcom/android/launcher/b;

    const/16 v1, 0xb

    invoke-direct {v0, v6, v1}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x55

    add-int/lit16 v1, v1, 0x546

    int-to-long v1, v1

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getDumpPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/launcher/c;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/launcher/c;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->dumpLauncherData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public executeAllOplusOnFocusCallbacks(Z)V
    .registers 5

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "executeAllOplusOnFocusCallbacks"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/launcher/l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/l;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->clearOplusOnFocusCallback()V

    return-void
.end method

.method public executeAllOplusOnResumeCallbacks()V
    .registers 4

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "executeAllOplusOnResumeCallbacks"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    sget-object v1, Lcom/android/launcher/o;->b:Lcom/android/launcher/o;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsDrawerLocation:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->executeLocationIcon()V

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsDrawerLocation:Z

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->clearOplusOnResumeCallback()V

    return-void
.end method

.method public findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    const-string v4, "OLauncher"

    const/4 v5, 0x0

    if-nez v3, :cond_2c

    const-string v1, "addWidgetFromToggleItemClick, cl is null!, screen = "

    const-string v3, ", count = "

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2c
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    const/16 v6, -0xc9

    if-ne v2, v6, :cond_51

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    goto :goto_51

    :cond_4b
    const-string v2, "IntArray is empty !, screenId = -1"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    :cond_51
    :goto_51
    move v6, v2

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_198

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v8, 0x64

    if-ne v2, v8, :cond_80

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :goto_66
    invoke-virtual {v3, v7, v2, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v10

    if-nez v10, :cond_71

    if-le v2, v8, :cond_71

    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    :cond_71
    :goto_71
    invoke-virtual {v3, v7, v2, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-nez v8, :cond_7c

    if-le v4, v9, :cond_7c

    add-int/lit8 v4, v4, -0x1

    goto :goto_71

    :cond_7c
    move v8, v2

    move v9, v4

    goto/16 :goto_179

    :cond_80
    iget-object v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget v8, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v9, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v10, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget v11, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-static {v2}, Lcom/android/common/util/WidgetUtils;->checkMinResizeWidthHeightIsValid(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget v12, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iget v13, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    if-eqz v13, :cond_95

    const/4 v13, 0x1

    goto :goto_96

    :cond_95
    move v13, v5

    :goto_96
    iget v14, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    if-eqz v14, :cond_9c

    const/4 v14, 0x1

    goto :goto_9d

    :cond_9c
    move v14, v5

    :goto_9d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v15

    if-eqz v15, :cond_128

    const/16 v15, 0x12

    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "findCellToAddWidget:resizeMode:"

    aput-object v16, v15, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v15, v16

    const-string v5, ",minResizeWidth:"

    const/16 v16, 0x2

    aput-object v5, v15, v16

    iget v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x3

    aput-object v5, v15, v16

    const/4 v5, 0x4

    const-string v16, ",minResizeHeight:"

    aput-object v16, v15, v5

    const/4 v5, 0x5

    iget v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v5

    const/4 v0, 0x6

    const-string v5, ",minWidth:"

    aput-object v5, v15, v0

    const/4 v0, 0x7

    iget v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/16 v0, 0x8

    const-string v5, ",minHeight:"

    aput-object v5, v15, v0

    const/16 v0, 0x9

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v0

    const/16 v0, 0xa

    const-string v2, ",spanX-Y:"

    aput-object v2, v15, v0

    const/16 v0, 0xb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v0

    const/16 v0, 0xc

    const-string v2, "-"

    aput-object v2, v15, v0

    const/16 v0, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/16 v0, 0xe

    const-string v5, ",minSpanX-Y:"

    aput-object v5, v15, v0

    const/16 v0, 0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/16 v0, 0x10

    aput-object v2, v15, v0

    const/16 v0, 0x11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v0

    invoke-static {v4, v15}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_128
    const/4 v0, 0x1

    if-eq v12, v0, :cond_168

    const/4 v0, 0x2

    if-eq v12, v0, :cond_157

    const/4 v0, 0x3

    if-eq v12, v0, :cond_135

    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_178

    :cond_135
    if-eqz v13, :cond_142

    :goto_137
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_142

    if-le v8, v10, :cond_142

    add-int/lit8 v8, v8, -0x1

    goto :goto_137

    :cond_142
    if-eqz v14, :cond_14f

    :goto_144
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_14f

    if-le v9, v11, :cond_14f

    add-int/lit8 v9, v9, -0x1

    goto :goto_144

    :cond_14f
    if-nez v14, :cond_178

    if-nez v13, :cond_178

    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_178

    :cond_157
    if-eqz v14, :cond_164

    :goto_159
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_178

    if-le v9, v11, :cond_178

    add-int/lit8 v9, v9, -0x1

    goto :goto_159

    :cond_164
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_178

    :cond_168
    if-eqz v13, :cond_175

    :goto_16a
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_178

    if-le v8, v10, :cond_178

    add-int/lit8 v8, v8, -0x1

    goto :goto_16a

    :cond_175
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    :cond_178
    :goto_178
    const/4 v5, 0x0

    :goto_179
    aget v0, v7, v5

    if-ltz v0, :cond_184

    const/4 v0, 0x1

    aget v0, v7, v0

    if-ltz v0, :cond_184

    const/4 v0, 0x1

    goto :goto_185

    :cond_184
    const/4 v0, 0x0

    :goto_185
    if-eqz v0, :cond_196

    const/16 v2, -0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v6

    move-object v4, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    const/4 v0, 0x1

    return v0

    :cond_196
    const/4 v0, 0x0

    return v0

    :array_198
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .registers 10

    const-string v0, "finishBindingItems -- isLandscape = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v3}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OLauncher"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v0}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherProvider;->setLoadingFromDefaultXml(Z)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    sget-object p1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->finishBindingItems()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->initFolderContentRecommendEnable(Landroid/content/Context;)V

    sget-object p1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {p1}, Lcom/oplus/launcher/overlay/RROverlayManager;->checkOverlayStatus()V

    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setLauncherFinishBindFlag(Z)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string p1, "Hotseat_expand"

    const-string v2, "finishBindingItems setEnableUpdateExpandFlag:true"

    invoke-static {p1, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateAppConnectExpandDataIfNeeded(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->restoreSimpleModeChangeState(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsResumeStateIfNeed(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher3/OplusWorkspace;->refreshIndicatorForExposure(I)V

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-virtual {v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePagePreviewItems()V

    :cond_b3
    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_c8

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_c8

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_c8
    iget-object v2, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/launcher/b;

    const/16 v5, 0xc

    invoke-direct {v4, p0, v5}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-eqz v2, :cond_f8

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isExitSimpleMode()Z

    move-result v4

    if-nez v4, :cond_f8

    const-string/jumbo v4, "update hotseat data and state"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->updateHotseatDataState()V

    :cond_f8
    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v2

    if-nez v2, :cond_113

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    if-nez v2, :cond_113

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    :cond_113
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/AppLimitedStartUpManager;->forceBindLimitedApp()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initWallpaper()V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->checkCurrentPageVisibility()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusDragLayer;->recreateControllers()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->recreateStateHandlers()V

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_14b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_14b

    sget-object v4, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;)V

    :cond_14b
    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/download/DownloadAppsManager;->finishBindingItems()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_16d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_166

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_16d

    :cond_166
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v4}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_16d
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v4, p1, Lcom/android/launcher/LauncherCallbacksImp;

    const-string v7, "finishBindingItems"

    if-eqz v4, :cond_17a

    check-cast p1, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p1, v7}, Lcom/android/launcher/LauncherCallbacksImp;->connectAssist(Ljava/lang/String;)V

    :cond_17a
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mBrowserOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v4, p1, Lo1/d;

    if-eqz v4, :cond_185

    check-cast p1, Lo1/d;

    invoke-virtual {p1, v7}, Lo1/d;->a(Ljava/lang/String;)V

    :cond_185
    invoke-static {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->init()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePageManager;->showAppGuideViewIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object p1

    if-eqz p1, :cond_1a0

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->initTargetWidgetInfos(Lcom/android/launcher/Launcher;)V

    :cond_1a0
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_1bc

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "launcher.apps_view_shown"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1bc

    const-string p0, "enter drawer mode for the first time, do not perform GC collection operation for animation"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1bc
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initFirstLauncherBitmap()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-eqz p1, :cond_1d0

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    if-eqz p1, :cond_1d0

    instance-of p1, p1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz p1, :cond_1d0

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updateDragLayerTranslationX()V

    :cond_1d0
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz p1, :cond_1dd

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(I)V

    :cond_1dd
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, v2, :cond_1ee

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    sget-object v2, Lcom/android/launcher/n;->b:Lcom/android/launcher/n;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_1ee
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/android/launcher3/ota/AddCardManager;->shouldAddSimpleGuidCard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/ota/AddCardManager;->buildSimpleGuidCardInfo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/launcher3/ota/AddCardManager;->markAddSimpleGuidCardDone(Landroid/content/Context;)V

    :cond_20b
    sget-object p1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->sendUpdateShortcutBroadcast()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager;->getCreateWithEmptyConfig()Z

    move-result p1

    if-eqz p1, :cond_22d

    const-string p1, "finishBindingItems, CreateWithEmptyConfig, checkInvalidAndNoPermissionCard."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/b;

    const/16 v2, 0xd

    invoke-direct {v0, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22d
    sget-object p1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    const-string v0, "finishBindingItems: isUserUnlocked = "

    invoke-static {v0, p1, v3}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_250

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher/b;

    const/16 v2, 0xe

    invoke-direct {v0, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_250
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result p1

    if-eqz p1, :cond_262

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_262
    invoke-static {}, Lcom/android/launcher/AppAdviceCheck;->finishBind()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->executeTryAddCardByStoreRunnable()V

    return-void
.end method

.method public getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAreaWidgetTransformViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    return-object p0
.end method

.method public getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-object p0
.end method

.method public getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    return-object p0
.end method

.method public getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    return-object p0
.end method

.method public getBrwoserDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 2

    new-instance v0, Lo1/d;

    invoke-direct {v0, p0}, Lo1/d;-><init>(Lcom/android/launcher/Launcher;)V

    return-object v0
.end method

.method public getCardHost()Lcom/android/launcher3/card/LauncherCardHost;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mCardHost:Lcom/android/launcher3/card/LauncherCardHost;

    return-object p0
.end method

.method public getCardManager()Lcom/oplus/card/manager/domain/CardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    return-object p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 2

    new-instance v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-direct {v0, p0}, Lcom/android/launcher/LauncherCallbacksImp;-><init>(Lcom/android/launcher/Launcher;)V

    return-object v0
.end method

.method public getDockviewPanel()Landroid/view/View;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mDockviewPanel:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz p0, :cond_13

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForShortCutItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    return-object p0
.end method

.method public getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;
    .registers 15

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->getLastStartCard(Ljava/lang/String;)Landroid/view/View;

    move-result-object p4

    goto :goto_11

    :cond_10
    move-object p4, v0

    :goto_11
    if-eqz p4, :cond_14

    return-object p4

    :cond_14
    new-instance p4, Lcom/android/launcher/s;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/launcher/s;-><init>(ILjava/lang/String;Landroid/os/UserHandle;)V

    new-instance p1, Lcom/android/launcher/p;

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v1}, Lcom/android/launcher/p;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    new-instance v2, Lcom/android/launcher/q;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher/q;-><init>(Ljava/util/function/Predicate;I)V

    const/4 p1, 0x1

    new-array v3, p1, [Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    aput-object v0, v3, v1

    new-array v0, p1, [I

    const/4 v4, -0x1

    aput v4, v0, v1

    new-instance v5, Lcom/android/launcher/r;

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/android/launcher/r;-><init>(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[II)V

    new-instance v6, Lcom/android/launcher/r;

    invoke-direct {v6, p4, v3, v0, p1}, Lcom/android/launcher/r;-><init>(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[II)V

    new-instance v7, Lcom/android/launcher/p;

    invoke-direct {v7, p2, p3, p1}, Lcom/android/launcher/p;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p3

    add-int/2addr p3, p1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p3

    if-eqz p3, :cond_5c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    new-instance v8, Lcom/android/launcher/k;

    invoke-direct {v8, p2, v1}, Lcom/android/launcher/k;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p3, v8}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    sget-object p3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p3

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz p3, :cond_7f

    new-array p2, v8, [Ljava/util/function/Predicate;

    aput-object p4, p2, v1

    aput-object v2, p2, p1

    aput-object v7, p2, v9

    invoke-direct {p0, p2}, Lcom/android/launcher/Launcher;->getFirstMatchForAllAppsView([Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_7f
    const/4 p0, 0x5

    new-array p0, p0, [Ljava/util/function/Predicate;

    aput-object p4, p0, v1

    aput-object v6, p0, p1

    aput-object v2, p0, v9

    aput-object v5, p0, v8

    const/4 p1, 0x4

    aput-object v7, p0, p1

    invoke-static {p2, p0}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p1, :cond_a9

    aget p1, v0, v1

    if-eq p1, v4, :cond_a1

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToClosingPage(I)V

    :cond_a1
    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    aget-object p1, v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->createItemIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    move-result-object p0

    :cond_a9
    return-object p0
.end method

.method public getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mFloatingIconContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    return-object p0
.end method

.method public getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/guide/GuidePageManager;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/GuidePageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

    :cond_b
    iget-object p0, p0, Lcom/android/launcher/Launcher;->mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

    return-object p0
.end method

.method public getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    return-object p0
.end method

.method public getLastActivityConfiguration()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLastActivityConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .registers 3

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p0, v0

    invoke-static {}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->getNormalOverviewOffset()F

    move-result v0

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method public getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    return-object p0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "OLauncher"

    const-string v2, "getPagesToBindSynchronously pages to bind is empty"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_3e

    :cond_1d
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    if-gez v1, :cond_2d

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v1

    :cond_2d
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_41

    invoke-static {v1, p1}, Lcom/android/launcher3/util/OplusTwoPanelUtils;->getScreenPair(ILcom/android/launcher3/util/IntArray;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_41

    :cond_3e
    :goto_3e
    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_41
    :goto_41
    return-object v0
.end method

.method public getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPullDownDetectController:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    return-object p0
.end method

.method public getRecentContainer()Lcom/android/launcher3/RecentContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    return-object p0
.end method

.method public getRectOfExitChildrenModeIcon()Landroid/graphics/Rect;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    if-nez v0, :cond_d

    const-string p0, "OLauncher"

    const-string v0, "getRectOfExitChildrenModeIcon. The mExitChildrenModeIcon is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

    return-object p0
.end method

.method public getStaticBlurView()Lcom/android/launcher/views/OplusStaticBlurView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    return-object p0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0xf

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-nez v0, :cond_6f

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_27

    goto :goto_6f

    :cond_27
    new-array v0, v1, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v17

    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v16

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->AppOpenNewWindow:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v15

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_CONVERT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_EXPAND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->REDUCE_CARD_RECOMMEND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->SERVICE_RECOMMEND_SETTING:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->THEME_MARKET_AREA_WIDGET_REPLACE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_UNINSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FIXED_WIDGET_SHORTCUT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->ICON_DELETE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_SHARE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_DISBAND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->DISABLE_PREDICTION:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->CARD_SETTNG:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->CARD_ADD:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    goto/16 :goto_f1

    :cond_6f
    :goto_6f
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v18, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v18, v0, v17

    sget-object v17, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v17, v0, v16

    sget-object v16, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->AppOpenNewWindow:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v16, v0, v15

    sget-object v15, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_CONVERT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v15, v0, v14

    sget-object v14, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_EXPAND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v14, v0, v13

    sget-object v13, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->SERVICE_INTRODUCTION:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v13, v0, v12

    sget-object v12, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->BUS_AND_SUBWAY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v12, v0, v11

    sget-object v11, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->EXPRESS_AND_DELIVERY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v11, v0, v10

    sget-object v10, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->HIGH_SPEED_RAIL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v10, v0, v9

    sget-object v9, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->AIRCRAFT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v9, v0, v8

    sget-object v8, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->TEST_ONLY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v8, v0, v7

    sget-object v7, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->REDUCE_CARD_RECOMMEND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v7, v0, v6

    sget-object v6, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->SERVICE_RECOMMEND_SETTING:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v6, v0, v5

    sget-object v5, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->THEME_MARKET_AREA_WIDGET_REPLACE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v5, v0, v4

    sget-object v4, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FIXED_WIDGET_SHORTCUT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v4, v0, v3

    sget-object v3, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->ICON_DELETE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_UNINSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_SHARE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_DISBAND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->DISABLE_PREDICTION:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->CARD_SETTNG:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->CARD_ADD:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_f1

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_f1

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    :cond_f1
    :goto_f1
    const-string v1, "getSupportedShortcuts"

    invoke-static {v1}, Lcom/android/launcher3/appedit/AppEditConfig;->isNotSupportOpen(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_103

    sget-object v1, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_EDIT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    :cond_103
    return-object v0
.end method

.method public getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mTaskViewContainer:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    return-object p0
.end method

.method public getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    return-object p0
.end method

.method public getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    return-object p0
.end method

.method public getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-object p0
.end method

.method public getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    return-object p0
.end method

.method public grantBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/common/util/m;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x5

    :try_start_d
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    const-string p1, "OLauncher"

    const-string v0, "grantBindAppWidgetPermission: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    const-string p3, "handleActivityResult, requestCode = "

    const-string v0, ", resultCode = "

    const-string v1, "OLauncher"

    invoke-static {p3, p1, v0, p2, v1}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/16 p3, 0x2715

    if-ne p1, p3, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq p1, p3, :cond_1f

    return-void

    :cond_1f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5d

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    goto :goto_5d

    :cond_32
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz p1, :cond_5d

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel()V

    goto :goto_5d

    :cond_46
    const/16 p2, 0x2716

    const/4 p3, 0x0

    if-eq p1, p2, :cond_58

    const/16 p2, 0x2717

    if-ne p1, p2, :cond_50

    goto :goto_58

    :cond_50
    const p2, 0x13461c1

    if-ne p1, p2, :cond_5d

    iput-boolean p3, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    goto :goto_5d

    :cond_58
    :goto_58
    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0, p3, p3}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public handlePendingRequest()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    const-string v1, "OLauncher"

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const-string p0, "handlePendingRequest: mPendingRequestArgs != null, handled = true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_40

    goto :goto_24

    :pswitch_14  #0x2718
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    goto :goto_24

    :pswitch_1c  #0x2712, 0x2717
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    goto :goto_25

    :goto_24
    move v2, v3

    :goto_25
    :pswitch_25  #0x2711, 0x2713, 0x2714, 0x2715, 0x2716
    const-string v0, "handlePendingRequest: mPendingActivityRequestCode = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", handled = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_data_40
    .packed-switch 0x2711
        :pswitch_25  #00002711
        :pswitch_1c  #00002712
        :pswitch_25  #00002713
        :pswitch_25  #00002714
        :pswitch_25  #00002715
        :pswitch_25  #00002716
        :pswitch_1c  #00002717
        :pswitch_14  #00002718
    .end packed-switch
.end method

.method public hideAssistScreenIfShown()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->shouldHideAssistScreen()V

    :cond_15
    return-void
.end method

.method public ignoreBindItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xca

    if-ne v0, v1, :cond_2d

    :cond_a
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->isFoldScreenFoldedFromDisplay()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFoldScreenFoldedFromDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hotseat_expand"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_32

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_32

    :cond_2d
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->ignoreBindItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateAppWidget, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v3

    if-eqz v3, :cond_42

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateAppWidget, widget item locked, but user is unlock, item = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_42
    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v3

    if-nez v3, :cond_63

    if-nez v0, :cond_63

    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    or-int/2addr v0, v2

    iput v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateAppWidget, widget item unlock, but user is locked, item = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance v0, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateAppWidget, item user locked, create locked view. item = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_86
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-nez v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->isScreenSizeChanged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "super_powersave_launcher_exit"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/IntentUtils;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1b
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->initTargetIdpGrid()V

    :cond_22
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public isAllAppsViewInSelectState()Z
    .registers 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result p0

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenConnected()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenConnected()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenEnable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0, p0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenShown()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isBrowserNewsVisible()Z
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mBrowserOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lo1/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    check-cast p0, Lo1/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBrwoserNewsShowing mClient not null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo1/d;->b:Lo1/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    const-string v4, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v0, v2, v4}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lo1/d;->b:Lo1/b;

    if-nez v0, :cond_28

    goto :goto_3f

    :cond_28
    invoke-virtual {v0}, Lo1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    iget v0, p0, Lo1/b;->n:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3e

    iget p0, p0, Lo1/b;->q:I

    if-eq p0, v3, :cond_3e

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3f

    :cond_3e
    move v1, v3

    :cond_3f
    :goto_3f
    return v1
.end method

.method public isFromState(Lcom/android/launcher3/LauncherState;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isHoldFolderOpen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    return p0
.end method

.method public isHoldFolderOpenForWorkEdu()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    return p0
.end method

.method public isInMinimize()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsInMinimize:Z

    return p0
.end method

.method public isInSplitScreenMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    return p0
.end method

.method public isLoadingViewShowing()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "OLauncher"

    const-string v0, "isLoadingViewShowing: dragLayer is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    if-eqz p0, :cond_1b

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isMultiWindowModeChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    return p0
.end method

.method public isOplusLauncher()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isOverlayScrolling()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOverlayScrollProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_15

    iget p0, p0, Lcom/android/launcher3/Launcher;->mOverlayScrollProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isSwitchChildrenModeLoading()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    return p0
.end method

.method public isVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isWidgetTouchResizeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsWidgetTouchResizeEnable:Z

    return p0
.end method

.method public launchCardSetting(III)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSettingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "OLauncher"

    if-nez v2, :cond_86

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_86

    :cond_24
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cardType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cardId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hostId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchCardSetting-> CARD_TYPE: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CARD_ID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", HOST_ID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_6c
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_85

    :catchall_70
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launcherCardSetting catch exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_85
    return-void

    :cond_86
    :goto_86
    const-string p0, "launcherCardSetting info is empty"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDatabaseUpdateOrDeleteAction()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/model/AutomaticAddNoPositionItemsTask;

    invoke-direct {v0}, Lcom/android/launcher3/model/AutomaticAddNoPositionItemsTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_1d
    return-void
.end method

.method public notifyUninstallEndAction(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAllAppHighTemperatureProtectionStateChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_15

    const-string v0, "OLauncher"

    const-string/jumbo v1, "onAllAppHighTemperatureProtectionStateChange : "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->onAppHighTempStateChanged()V

    :cond_15
    return-void
.end method

.method public onAppsLimitedStateChange(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 8

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onAttachedToWindow()V

    const/16 v0, 0x21

    const/4 v1, 0x2

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_15

    const/16 v0, 0x14

    const/16 v2, 0x14

    if-lt v0, v2, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    goto :goto_4f

    :cond_15
    const/16 v0, 0x21

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4f

    :try_start_1b
    const-string v0, "com.oplus.view.OplusWindowAttributesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setBackGestureRestriction"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/view/Window;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_45} :catch_46

    goto :goto_4f

    :catch_46
    move-exception p0

    const-string/jumbo v0, "setBackGestureRestriction e="

    const-string v1, "OLauncher"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-interface {v0, p0}, Lcom/android/launcher/ILauncherLifecycleObserver;->onBackPressed(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->removeLoadingView()V

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBrowserOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    check-cast v0, Lo1/d;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lo1/d;->hideOverlay(I)V

    :cond_2d
    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->setWidgetTouchResizeEnable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v1, -0x1

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyGoHome()V

    iput v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    return-void

    :cond_45
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onBackPressed()V

    iput v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    return-void
.end method

.method public final onBusEvent(Lcom/android/launcher/locateaction/LocateEvent;)V
    .registers 4

    const-string v0, "locationMessage"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mLocationMessage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "request_locate_item_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_3c

    :cond_33
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsDrawerLocation:Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final onBusEvent(Lcom/oplus/quickstep/events/event/BreenoSkillEvent;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    new-instance v0, Lcom/android/launcher/b;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object v0, p1, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final onBusEvent(Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;)V
    .registers 2

    invoke-virtual {p1}, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->isInSuperPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method

.method public onChildrenModeChanged()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->recreateControllers()V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/b;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11

    const-wide/16 v0, 0x8

    const-string v2, "LauncherConfigChange"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->startConfigCache()V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->clearCallBacks()V

    :cond_17
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/launcher/c0;->b:Lcom/android/launcher/c0;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    iget-object v3, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_53

    const-string v3, "Hotseat_expand"

    const-string/jumbo v5, "orientation config changed"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusHotseat;->cancelHotseatExpandAnimate()V

    :cond_53
    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/LauncherSimpleModeHelper;->isSimpleModeIconChanging()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_67
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    const-string v5, "OLauncher"

    if-nez v3, :cond_79

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "mOldConfig is null."

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    return-void

    :cond_79
    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const-string/jumbo v6, "onConfigurationChanged -- new orientation = "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v6, v3, 0x400

    const/4 v7, 0x1

    if-nez v6, :cond_99

    and-int/lit16 v6, v3, 0x1000

    if-eqz v6, :cond_ea

    :cond_99
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v6

    if-eqz v6, :cond_a9

    sget-object v6, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveCardContentForPage(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v6}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->markCaching()V

    :cond_a9
    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_d3

    const-string/jumbo v2, "onConfigurationChanged initScreenData and reInitGrid！"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->updateFoldingMode()I

    sput-boolean v7, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    invoke-static {p0, p1}, Lcom/android/common/util/DisplayUtils;->updateDisplayInfoIfNeeded(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;)V

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_cc

    sget-object v2, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/util/FontManager;

    invoke-virtual {v2}, Lcom/android/common/util/FontManager;->initFoldScreenFontSize()V

    :cond_cc
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v2, :cond_d3

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->reInitEffectIfNeeded()V

    :cond_d3
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v2

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz v2, :cond_e0

    invoke-virtual {v2}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->recycleWallpaperBlurCache()V

    :cond_e0
    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->initTargetIdpGrid()V

    :cond_ea
    invoke-static {v3, p0}, Lcom/android/common/util/UxConfigUtils;->onConfigurationChanged(ILandroid/content/Context;)V

    invoke-static {v3}, Lcom/android/common/util/UxConfigUtils;->isOverlayChanged(I)Z

    move-result v2

    if-eqz v2, :cond_fb

    sget-object v2, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v2}, Lcom/oplus/launcher/overlay/RROverlayManager;->startCheckAvailable()V

    invoke-static {p0}, Lcom/android/common/util/UxConfigUtils;->reapplyTheme(Landroid/content/Context;)V

    :cond_fb
    invoke-static {v3}, Lcom/android/common/util/UxConfigUtils;->needReloadColor(I)Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v2, p0, v7}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    :cond_10a
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    if-eqz v2, :cond_11b

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/common/util/OplusFoldStateHelper;->isOrientationChange(I)Z

    move-result v2

    if-eqz v2, :cond_11b

    move v4, v7

    :cond_11b
    if-eqz v4, :cond_124

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    check-cast v2, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/OplusStateManager;->resetLauncherViewState()V

    :cond_124
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {v3}, Lcom/android/common/util/UxConfigUtils;->isWallpaperColorChanged(I)Z

    move-result v2

    if-eqz v2, :cond_132

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mReInflateWidgetsTask:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/android/launcher/Launcher;->executeTaskRelyOnStarted(Ljava/lang/Runnable;)V

    :cond_132
    if-eqz v4, :cond_155

    sget-object v2, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveCardContentForPage(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v2

    if-eqz v2, :cond_148

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->destroy()V

    :cond_148
    const-string/jumbo v2, "orientation changed, invoke after onConfigurationChanged"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v4, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v2, v4}, Lcom/android/launcher3/OplusLauncherInjector;->injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;)V

    :cond_155
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2, v3, p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onConfigurationChanged(ILcom/android/launcher/Launcher;)V

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz v2, :cond_163

    invoke-interface {v2, p0, p1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onPostConfigurationChanged(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;)V

    :cond_163
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_21d

    invoke-static {p0}, Lcom/android/common/util/CacheUtils;->getMaximumWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;

    move-result-object v2

    const-string/jumbo v4, "onConfigurationChanged -- diff = "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\norientation: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nisMultiWindowMode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nwindow.width&height: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "--"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\nwm.getBounds().width&height: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nwm.getBounds: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nnewConfig.windowConfiguration.getBounds: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nnewConfig.windowConfiguration.getAppBounds: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ngetResources.windowConfiguration.getBounds: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nsmallestScreenWidthDp: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {v4, p0, v5}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_21d
    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->unMarkCaching()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->setLauncher(Lcom/android/launcher/Launcher;)V

    invoke-static {p0}, Lcom/android/launcher/AppAdviceCheck;->setLauncher(Lcom/android/launcher/Launcher;)V

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "OLauncher-onCreate"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; mRecreate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OLauncher"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher/MyUncaughtExceptionHandler;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v2, v3, p0}, Lcom/android/launcher/MyUncaughtExceptionHandler;-><init>(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mUncaughtExceptionHandler:Lcom/android/launcher/MyUncaughtExceptionHandler;

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-nez v2, :cond_5c

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isDefaultSimpleMode()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher/guide/GuidePageManager;->showGestureViewIfNeeded(Lcom/android/launcher/Launcher;)V

    :cond_5c
    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v2, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->setLauncher(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->resetCheckState()V

    sget-object v2, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {v2, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->initNormalSmartEngine(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/card/CardPermissionManager;->init(Lcom/android/launcher3/Launcher;)V

    new-instance v2, Lcom/oplus/card/config/domain/CardConfigInitManager;

    invoke-direct {v2}, Lcom/oplus/card/config/domain/CardConfigInitManager;-><init>()V

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardHost;->getInstance()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mCardHost:Lcom/android/launcher3/card/LauncherCardHost;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager;->registerCardCallback()V

    sget-object v3, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v3}, Lcom/android/launcher3/card/seed/SeedCardClient;->registerListObserver()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/CardConfigInitManager;->loadInitConfig()V

    :cond_9a
    new-instance v2, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-direct {v2, p0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    new-instance v2, Lcom/android/keyguardservice/FastUnlockManager;

    invoke-direct {v2, p0}, Lcom/android/keyguardservice/FastUnlockManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->checkForNavMode(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_c7

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->resetLauncherIfNecessary()V

    return-void

    :cond_c7
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v2, Lcom/android/launcher/Launcher$2;

    invoke-direct {v2, p0}, Lcom/android/launcher/Launcher$2;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result p1

    if-eqz p1, :cond_e2

    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-direct {p1, p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    :cond_e2
    invoke-static {p0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatisticsHelper;->registerDateChangeListener(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {p1, v2}, Lcom/android/common/multiapp/MultiAppManager;->setCallBacks(Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->listenHomeKey()V

    invoke-static {p0}, Lcom/android/launcher/layout/LayoutUtilsManager;->initLayoutArrangementType(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/AppLimitedStartUpManager;->setCallbacks(Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result p1

    if-eqz p1, :cond_10e

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->registerGameBounceListener(Landroid/content/Context;)V

    :cond_10e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p1

    if-eqz p1, :cond_11f

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_11f

    invoke-static {}, Lcom/android/launcher/custom/PictorialUtils;->getInstance()Lcom/android/launcher/custom/PictorialUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/custom/PictorialUtils;->unInstallRmGlPictorial(Landroid/content/Context;)V

    :cond_11f
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->setLauncher(Lcom/android/launcher/Launcher;)V

    new-instance p1, Lcom/android/launcher/LauncherLifecycleObserver;

    invoke-direct {p1}, Lcom/android/launcher/LauncherLifecycleObserver;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/operators/Customizer;->onActivityCreated(Landroid/app/Activity;)V

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-direct {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    if-eqz v2, :cond_14b

    invoke-virtual {p1, v2}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V

    :cond_14b
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->registerWallpaperChangeReceiver(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->initTextThemeColor(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher/LauncherInputDeviceManager;->getInstance()Lcom/android/launcher/LauncherInputDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/LauncherInputDeviceManager;->registerInputDeviceListener()V

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->init()V

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->setCallbacks(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;)V

    sget-object p1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showLoadingViewIfNeed()V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isSupportAppUpdateDotSwitch:Z

    if-eqz p1, :cond_193

    new-instance p1, Lcom/android/launcher/Launcher$3;

    invoke-direct {p1, p0}, Lcom/android/launcher/Launcher$3;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mAppUpdateDotChangeListener:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dot/AppUpdateDotManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mAppUpdateDotChangeListener:Ljava/util/function/Consumer;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/dot/AppUpdateDotManager;->addOnChangeListener(Ljava/util/function/Consumer;)V

    :cond_193
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mBrowserOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {p1, p0, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->initCustomizeRestrictionManager(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherModel;)V

    new-instance p1, Lcom/android/launcher/touch/BlurScrimWindowController;

    invoke-direct {p1, p0}, Lcom/android/launcher/touch/BlurScrimWindowController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->resetRecentsVisibility()V

    invoke-static {p0}, Lcom/android/common/util/LauncherUtil;->saveCurNightModeState(Landroid/content/Context;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz p1, :cond_1c1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/ota/OpOtaManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/ota/OpOtaManager;->runOtaAsyncIfNeeded()Z

    :cond_1c1
    new-instance p1, Lcom/oplus/card/helper/StartCardActivityHelper;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz p1, :cond_1dc

    sget-object v2, Lcom/android/launcher3/card/LauncherCardBadgeManager;->INSTANCE:Lcom/android/launcher3/card/LauncherCardBadgeManager;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/card/LauncherCardBadgeManager;->saveState(Lcom/android/launcher3/LauncherState;)V

    :cond_1dc
    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/launcher/b;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->registerReceiver(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->registerReceiver(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->init(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher/custom/PacmanCustomize;->INSTANCE:Lcom/android/launcher/custom/PacmanCustomize;

    invoke-virtual {v2, p0}, Lcom/android/launcher/custom/PacmanCustomize;->registerReceiver(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    if-eqz v2, :cond_20f

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/common/util/OplusFoldStateHelper;->updateLauncherContext(Landroid/content/Context;)V

    :cond_20f
    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->registerCardConfigCallback()V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher;->splitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    invoke-virtual {v2, v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher/Launcher;->mIsInSplitScreenMode:Z

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updatePageIndicatorForSplit()V

    sget-object v2, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v2}, Lcom/android/common/config/FeatureOption;->isSupportWcgFeature()Z

    move-result v2

    if-eqz v2, :cond_245

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v2

    if-eqz v2, :cond_245

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setColorMode(I)V

    :cond_245
    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v0, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->addAvailableCallback(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;)V

    new-instance v0, Lcom/android/launcher/b;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_25c

    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setLauncher(Lcom/android/launcher/Launcher;)V

    :cond_25c
    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->onCreate(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result p1

    if-eqz p1, :cond_271

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->registerSpChangeListener()V

    :cond_271
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result p1

    if-eqz p1, :cond_280

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->needShowSettingsGuideMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_280

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->showSettingsGuideMessage(Landroid/content/Context;)V

    :cond_280
    invoke-static {}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setLauncher(Lcom/android/launcher3/Launcher;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportAreaWidgetTransform()Z

    move-result p1

    if-eqz p1, :cond_297

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mAreaWidgetTransformViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    :cond_297
    return-void
.end method

.method public onDeferredResumed()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onDeferredResumed()V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {v0}, Lcom/android/common/util/SoundPlayerUtils;->release()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->recycle()V

    :cond_23
    invoke-static {p0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/statistics/LauncherStatisticsHelper;->unregisterDateChangeListener(Landroid/content/Context;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->unregisterGameBounceListener(Landroid/content/Context;)V

    :cond_39
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->release()V

    :cond_46
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeAllListener()V

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onDestroy()V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->finishBindingItems()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearAllCardViewCaches()V

    invoke-static {}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->clearAllCard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->unregisterCardConfigCallback()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v1, :cond_66

    sget-object v2, Lcom/android/launcher3/card/LauncherCardBadgeManager;->INSTANCE:Lcom/android/launcher3/card/LauncherCardBadgeManager;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_66
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-virtual {v1}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherDestroy()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/CardPermissionManager;->unregisterCardPermissionObserver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager;->unRegisterCardCallback()V

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v1}, Lcom/android/launcher3/card/seed/SeedCardClient;->unRegisterListObserver()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->destroy()V

    :cond_8a
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz v1, :cond_91

    invoke-virtual {v1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->onLauncherDestroy(Landroid/content/Context;)V

    :cond_91
    invoke-static {}, Lcom/android/launcher/download/DownloadAppUtils;->recycleStaticResources()V

    invoke-static {}, Lcom/android/launcher/LauncherInputDeviceManager;->getInstance()Lcom/android/launcher/LauncherInputDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/LauncherInputDeviceManager;->unRegisterInputDeviceListener()V

    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/SmallAppUtils;->unRegisterSmallAppWhiteListObserver()V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    if-eqz v1, :cond_af

    invoke-virtual {v1}, Lcom/android/launcher/HomeKeyObserver;->stopListen()V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    :cond_af
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->splitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    invoke-virtual {v1, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    if-eqz v1, :cond_ce

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    :cond_ce
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/statistics/LauncherStatistics;->setLauncher(Lcom/android/launcher/Launcher;)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportAppUpdateDotSwitch:Z

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAppUpdateDotChangeListener:Ljava/util/function/Consumer;

    if-eqz v1, :cond_e6

    invoke-static {p0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dot/AppUpdateDotManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mAppUpdateDotChangeListener:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dot/AppUpdateDotManager;->removeListener(Ljava/util/function/Consumer;)V

    :cond_e6
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz v1, :cond_ed

    invoke-virtual {v1, v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->setLauncher(Lcom/android/launcher/Launcher;)V

    :cond_ed
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    if-eqz v1, :cond_fd

    iget-object v1, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/IIconCacheExt;->cleanFancyIconEngine()V

    :cond_fd
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    if-eqz v1, :cond_112

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    iget-object v1, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_112
    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->destroy()V

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setListener(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;)V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->destroy()V

    :cond_131
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;

    invoke-direct {v2}, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->unRegistRestrictionDataObserver()V

    sget-object v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->unregisterObserver(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->unregisterReceiver(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->unregisterReceiver(Landroid/content/Context;)V

    sget-object v1, Lcom/android/launcher/custom/PacmanCustomize;->INSTANCE:Lcom/android/launcher/custom/PacmanCustomize;

    invoke-virtual {v1, p0}, Lcom/android/launcher/custom/PacmanCustomize;->unregisterReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->releaseObj()V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v1

    if-eqz v1, :cond_164

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_164
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->unregisterCotaNonRebootPackageScannedFinishReceiver()V

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setDividerView(Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;)V

    invoke-static {}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->unregisterCotaNonRebootPackageAddedReceiver()V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/statistics/LauncherStatistics;->cleanRunnableQueue()V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->destroys(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v1, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->removeAvailableCallback(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;)V

    sget-object v1, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v1}, Lcom/android/common/util/TemporaryCacheHelper;->stopTemporaryCache()V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_196

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setLauncher(Lcom/android/launcher/Launcher;)V

    :cond_196
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v1

    if-eqz v1, :cond_19f

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->unregisterSpChangeListener()V

    :cond_19f
    invoke-static {}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->setLauncher(Lcom/android/launcher/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    instance-of v0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    if-eqz v0, :cond_1b1

    check-cast p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->releaseLauncher()V

    :cond_1b1
    sget-object p0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/ReportController;->unbindService()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->releaseLauncher()V

    return-void
.end method

.method public onDeviceProfileInitiated()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    instance-of v1, v0, Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initTextPaint()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setNumAppsPerRow(I)V

    :cond_24
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    return-void
.end method

.method public onExitChildrenModeIconWallpaperBrightnessChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateExitChildrenModeIconStyle(Landroid/widget/TextView;)V

    :cond_7
    return-void
.end method

.method public onFoldStateChange()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveCardContentForPage(Lcom/android/launcher3/OplusWorkspace;)V

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_3c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->updateHotseatBgOnFoldStateChange()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_52

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onFoldStateChange()V

    :cond_52
    return-void
.end method

.method public onHotSeatFinishBinding()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initWallpaper()V

    return-void
.end method

.method public onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V
    .registers 10

    sget-object v0, Lcom/android/launcher3/util/SimpleGuidPageManager;->INSTANCE:Lcom/android/launcher3/util/SimpleGuidPageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalling()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "OLauncher"

    const-string p1, "idp change by simple guid page, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->recreateStateHandlers()V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    new-instance p1, Lcom/android/launcher3/util/ViewPool;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const v4, 0x7f0d0044

    const/16 v5, 0x23

    const/16 v6, 0x1e

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/common/util/OplusFoldStateHelper;->isOrientationChange(I)Z

    move-result p1

    if-nez p1, :cond_50

    :cond_3a
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_49

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-virtual {p1, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    iget-object p2, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherInjector;->injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;)V

    :cond_50
    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    const-string p1, "OLauncher"

    const-string/jumbo p2, "onInitialBindComplete"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/Launcher;->animateFadeScreen(ZLandroid/animation/Animator$AnimatorListener;)V

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mHasBindFirstPage:Z

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mNewIntentTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object p2, p0, Lcom/android/launcher/Launcher;->mNewIntentTask:Ljava/lang/Runnable;

    :cond_1b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0x121

    if-ne p1, v0, :cond_1f

    :try_start_8
    sget-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_CAMERA_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/common/util/AppIntentUtils;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    const-string v0, "OLauncher"

    const-string v1, "Launcher do not found camera action!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/launcher/Launcher;->mState:I

    if-nez v0, :cond_2e

    const/4 p0, 0x0

    return p0

    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5

    if-eqz p1, :cond_1e

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    if-nez p1, :cond_35

    sget-object p2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/launcher3/OplusDeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    :cond_35
    sget-object p2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    iget-object p2, p0, Lcom/android/launcher/Launcher;->mDockviewPanel:Landroid/view/View;

    if-eqz p2, :cond_49

    check-cast p2, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/dock/DockView;->onMultiWindowModeChanged(Z)V

    :cond_49
    const-string p2, "OLauncher"

    if-eqz p1, :cond_54

    const-string/jumbo p0, "onMultiWindowModeChanged, isInMultiWindowMode is true, don\'t deal with it"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-nez p1, :cond_5f

    const-string/jumbo p0, "onMultiWindowModeChanged, mDeviceProfile is null"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5f
    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusLauncherRootView;

    if-eqz p1, :cond_78

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchInsets()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->refreshSystemWindowInsets()V

    :cond_78
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "OLauncher"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo p0, "onNewIntent, launcher isFinishing."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-static {p0, p1, v2}, Lcom/android/launcher/togglebar/ToggleBarUtils;->resolveStateByNewIntent(Lcom/android/launcher/Launcher;Landroid/content/Intent;Lcom/android/systemui/plugins/shared/LauncherOverlayManager;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-boolean v3, p0, Lcom/android/launcher/Launcher;->mHasBindFirstPage:Z

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_31

    :cond_2f
    iput-object v2, p0, Lcom/android/launcher/Launcher;->mNewIntentTask:Ljava/lang/Runnable;

    :cond_31
    :goto_31
    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/download/DownloadAppsManager;->dismissMobileNetworkAndStorageSpaceDialog()V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    return-void
.end method

.method public onOverlayAvailable()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayAvailableTask:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->executeTaskRelyOnStarted(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "onPause, loading"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OLauncher-onPause"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelGlobalDragIfNeed()V

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onPause()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->pauseFancyIcons()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_24

    const-string v0, "launcher.all_apps.pre_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    const-string v2, "launcher.all_apps.search_focus"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->setQuery(Ljava/lang/String;Z)V

    :cond_3c
    return-void
.end method

.method public onResume()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OLauncher-onResume"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onResume, loading="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " recentsVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OLauncher"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onResume()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->executeAllOplusOnResumeCallbacks()V

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/LauncherSimpleModeHelper;->notifySceneModeToChangeSimpleStateIfNecessary(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initSimpleModeObserver()V

    sget-object v1, Lcom/android/launcher3/util/SimpleGuidPageManager;->INSTANCE:Lcom/android/launcher3/util/SimpleGuidPageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/SimpleGuidPageManager;->setPageCalling(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherResume()V

    :cond_50
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->resumeFancyIcons()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v1, :cond_88

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_88

    sget-object v1, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isSupportAnimationRound()Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher/Launcher$4;

    invoke-direct {v3, p0}, Lcom/android/launcher/Launcher$4;-><init>(Lcom/android/launcher/Launcher;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_77

    :cond_74
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    :goto_77
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_88

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refillAdapterItemsAndUpdate()V

    :cond_88
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne v1, v3, :cond_a9

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_a4

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_a9

    :cond_a4
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    :cond_a9
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues(Z)V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->onLauncherResumed()V

    :cond_b8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-eqz v1, :cond_c5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/OplusDragLayer;->checkResetBackgroundFlag(Lcom/android/launcher/Launcher;)Z

    :cond_c5
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_f8

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    if-eqz v0, :cond_f8

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updatePaddingsIfNeeded(Lcom/android/launcher3/DeviceProfile;)V

    :cond_f8
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-static {v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->handleHotseatVisibilityChanged(Z)V

    :cond_101
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->snapToPageToWorkPage(Lcom/android/launcher/Launcher;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statWidgetsAndCardsExposure()V

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->needShowLayoutUpgradeGuideOnStart(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_125

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/Launcher$5;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$5;-><init>(Lcom/android/launcher/Launcher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_125
    new-instance v0, Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-direct {v0, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    new-instance v1, Lcom/android/launcher/Launcher$6;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$6;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setOnLocationListener(Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/download/DownloadAppsManager;->dismissMobileNetworkAndStorageSpaceDialog()V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz v0, :cond_11

    invoke-interface {v0, p0, p1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onSaveInstanceState(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)V

    :cond_11
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->getPreQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher.all_apps.pre_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result p0

    const-string v0, "launcher.all_apps.search_focus"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_45
    return-void
.end method

.method public onScrollChanged(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_20

    :try_start_4
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_23

    :catch_8
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to animate,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OLauncher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_20
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onScrollChanged(F)V

    :goto_23
    return-void
.end method

.method public onScrollChangedBrowserNews(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_33

    :try_start_4
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBrowserNewsScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to animate,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OLauncher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_33
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onScrollChangedBrowserNews(F)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onStart()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OLauncher-onStart"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseActivity;->setActivityStopped(Z)V

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStart()V

    const-string v2, "OLauncher"

    const-string/jumbo v3, "onStart"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/android/launcher/b;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v4}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    if-nez v2, :cond_35

    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    sget-object v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->setChangeFromLauncher(Z)V

    invoke-static {v1}, Lcom/android/common/util/OplusFoldStateHelper;->updateIdpWhenChangingFoldState(Z)V

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->setChangeFromLauncher(Z)V

    :cond_35
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    sget-object v2, Lcom/android/launcher/m;->b:Lcom/android/launcher/m;

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v1}, Lcom/oplus/launcher/overlay/RROverlayManager;->startCheckAvailable()V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->udpateWorkspacePaddingIfNeeded()V

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->switchExpandHotseatIfNeeded(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public onStop()V
    .registers 6

    const-string/jumbo v0, "onStop, loading"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_22
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "OLauncher-onStop"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLastActivityConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherOnStop()V

    :cond_3e
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStop()V

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz v4, :cond_5c

    check-cast v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getShortcutType()I

    move-result v4

    if-ne v4, v1, :cond_5c

    invoke-virtual {v3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPendingCardContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setForceClosePopContainerFlag(Z)V

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_5c
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-static {v2}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseActivity;->setActivityStopped(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->immediatelyUpdateFolder(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_73
    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher/folder/download/MarketServiceManager;->registerDelayUnBindService(Landroid/content/Context;)V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    if-eqz p0, :cond_86

    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onStop()V

    :cond_86
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 4

    const-string/jumbo v0, "onTrimMemory: level: "

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onTrimMemory(I)V

    const/4 v0, 0x5

    const/16 v1, 0xf

    if-eq p1, v1, :cond_16

    const/16 v1, 0xa

    if-eq p1, v1, :cond_16

    if-ne p1, v0, :cond_2a

    :cond_16
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/LauncherAssetManager;->clearCategoryMap()V

    if-eq p1, v0, :cond_2a

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearAllCardViewCaches()V

    :cond_2a
    return-void
.end method

.method public onUserUnlocked(Landroid/os/UserHandle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onUserUnlocked(Landroid/os/UserHandle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OLauncher"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->onUserUnlock()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v1, Lcom/android/common/util/c0;->c:Lcom/android/common/util/c0;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_56
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 4

    const-string v0, "Wallpapers"

    const-string v1, "OLauncher"

    const-string/jumbo v2, "onWallpaperBrightnessChanged"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->updateTextColor()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onWallpaperBrightnessChanged()V

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->updateDragTipBackground()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->updateCellLayoutItemColor()V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->onWallpaperBrightnessChanged()V

    :cond_41
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onWallpaperBrightnessChanged()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onWallpaperBrightnessChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherRootView;->onWallpaperBrightnessChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {p0}, Lcom/android/launcher/SwitchStateRenderer;->onWallpaperBrightnessChanged()V

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->onWallpaperBrightnessChanged(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onWindowFocusChanged(Z)V

    const-string/jumbo v0, "onWindowFocusChanged:"

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/keyguardservice/FastUnlockManager;->onWindowFocusChanged(Z)V

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->executeAllOplusOnFocusCallbacks(Z)V

    return-void
.end method

.method public onWorkspaceHighTemperatureProtectionStateChange()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/b;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p0, :cond_e

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_e
    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public reapplyUi()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->reapplyUi()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updateAllAppsParamsWhenIdpChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setSize(Z)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_50
    return-void
.end method

.method public rebindWidgetsWhenUserUnlocked(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "rebindWidgetsWhenUserUnlocked: widget size = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {p1, v0, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    :cond_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance v2, Lcom/android/launcher/x;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher/x;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindWidgetsUserUnlocked: locked widget host view size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->reInflate()V

    goto :goto_4d

    :cond_5d
    return-void
.end method

.method public recreateRecentTouController()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->recreateTouchController()V

    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z
    .registers 15

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_55

    iget-object p5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p5, v0}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p5

    instance-of v0, p5, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1e

    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    move-object p4, p2

    check-cast p4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1, p4, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_32

    :cond_1e
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p5

    if-eqz p5, :cond_2d

    iget-object p5, p5, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p5, p2}, Lcom/android/launcher3/icons/IIconCacheExt;->removeFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_2d
    iget-object p5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p5, p1, p4}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    :goto_32
    if-eqz p3, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_3b
    sget-object p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_8e

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8e

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->writeHeytapMarketShortcutStatus(Ljava/lang/String;I)V

    goto :goto_8e

    :cond_55
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_74

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    instance-of p5, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p5, :cond_65

    move-object p5, p1

    check-cast p5, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p5}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    :cond_65
    iget-object p5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p5, p1, p4}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    if-eqz p3, :cond_8e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_8e

    :cond_74
    instance-of v0, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_8f

    instance-of v4, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    new-instance v0, Lcom/android/launcher/b0;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move v6, p4

    move v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher/b0;-><init>(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p5, :cond_8b

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/Launcher;->removeWidgetWithAnimate(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_8e

    :cond_8b
    invoke-virtual {v0}, Lcom/android/launcher/b0;->run()V

    :cond_8e
    :goto_8e
    return v1

    :cond_8f
    const/4 p0, 0x0

    return p0
.end method

.method public removeLoadingView()V
    .registers 4

    const-string/jumbo v0, "removeLoadingView, mLoadingView: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUserUnlocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    const-string v2, "OLauncher"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-nez v0, :cond_29

    const-string/jumbo p0, "removeLoadingView: dragLayer is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    :cond_31
    return-void
.end method

.method public resetPendingActivityRequestCode()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    return-void
.end method

.method public setDragListener()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/Launcher$10;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$10;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/b;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setHoldFolderOpen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    return-void
.end method

.method public setHoldFolderOpenForWorkEdu(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    return-void
.end method

.method public setIgnoreHomeMenuKeyFlag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_a
    invoke-static {v0, p1}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_d
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_29

    :catch_e
    move-exception p1

    const-string/jumbo v1, "setHomeAndMenuKeyState e:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OLauncher"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_29
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2c
    return-void
.end method

.method public setIsSwitchingLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsSwitchingLayout:Z

    return-void
.end method

.method public setLauncherBrowsernewsOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->setLauncherBrowsernewsOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initBrowserOverLayScrollSpring()V

    :cond_8
    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initOverLayScrollSpring()V

    :cond_8
    return-void
.end method

.method public setMultiWindowModeFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    return-void
.end method

.method public setTouchInProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mTouchInProgress:Z

    return-void
.end method

.method public setWidgetTouchResizeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsWidgetTouchResizeEnable:Z

    return-void
.end method

.method public setWorkspaceLoading(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWorkspaceLoading: value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_47

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;

    invoke-interface {v0}, Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;->onWorkspaceLoaded()V

    goto :goto_34

    :cond_44
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_47
    return-void
.end method

.method public setupViews()V
    .registers 10

    const-wide/16 v0, 0x8

    const-string/jumbo v2, "setupViews"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Lcom/android/launcher/touch/IconFallenStatesTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    new-instance v2, Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPullDownDetectController:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    new-instance v2, Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/dragndrop/OplusDragController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    const v2, 0x7f0a0408

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/RecentContainerView;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->setupViews()V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initSearchEntryView()V

    const v2, 0x7f0a0238

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/FloatingIconViewContainer;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mFloatingIconContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->initTransitionManager()V

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_60

    const v2, 0x7f0a01e1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mDockviewPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    check-cast v2, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockView(Lcom/oplus/quickstep/dock/DockView;)V

    :cond_60
    sget-object v2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v3

    if-eqz v3, :cond_8a

    const v3, 0x7f0a0147

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->initPhoneManagerEntranceState(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    sget-object v2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->init(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOplusCleanStorageFrameLayout(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    :cond_8a
    const v2, 0x7f0a0404

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_ac

    const v2, 0x7f0a0517

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mTaskViewContainer:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    :cond_ac
    new-instance v2, Lcom/android/launcher3/util/ViewPool;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const v6, 0x7f0d0044

    const/16 v7, 0x23

    const/16 v8, 0x1e

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    new-instance v2, Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-direct {v2, p0}, Lcom/android/launcher/togglebar/ToggleBarManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    new-instance v2, Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    new-instance v2, Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-direct {v2, p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-virtual {v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setupViews()V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/OplusDragController;->setDragScroller(Lcom/android/launcher3/dragndrop/DragScroller;)V

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->setupDefaultManager()V

    sget-object v2, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->addSnapshotCardView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->addStaticBlurView()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public shareApkFile(Ljava/io/File;)V
    .registers 4

    const-string v0, "com.android.launcher.file_provider"

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p1, 0x7f120488

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showAllAppsFromIntent(Z)V
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    new-instance v3, Lcom/android/launcher/t;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher/t;-><init>(Lcom/android/launcher/Launcher;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherModeAndNotify(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2d

    :cond_1b
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->showAllAppsFromIntent(Z)V

    goto :goto_2d

    :cond_25
    const-string p0, "OLauncher"

    const-string/jumbo p1, "showAllAppsFromIntent do nothing in simple mode"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public showAppEncryptedHintDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "OLauncher"

    const-string/jumbo v0, "showAppEncryptedHintDialog -- mAppEncryptedHintDialog dialog is showing, don\'t show another!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->createSecurityHintDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppDialogManager;->setDialogIgnoreHomeKey(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showOutOfSpaceMessage(I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lcom/android/launcher/Launcher;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_e
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x13461c1

    if-ne p2, v2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    const/16 v2, 0x4e21

    if-ne p2, v2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseQuickstepLauncher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_62

    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    instance-of p1, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p1, :cond_37

    move-object p1, p3

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    if-eqz p1, :cond_37

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_37

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/OplusLauncherModel;->onRemoveGreenPointApps(Ljava/util/ArrayList;)V

    :cond_37
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6f

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_6f

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, p1, p3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p0, v1}, Lcom/android/common/util/DrawAppSortManagerUtil;->handleAppInfoClick(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V

    goto :goto_6f

    :cond_62
    if-eqz v0, :cond_6f

    instance-of p1, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p1, :cond_6f

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

    invoke-virtual {p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->clearLastStart(Landroid/content/Intent;)V

    if-eqz v0, :cond_7c

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguardservice/FastUnlockManager;->setIgnoreSkipByLauncher(Z)V

    :cond_7c
    return v0
.end method

.method public startBinding()V
    .registers 5

    const-string/jumbo v0, "startBinding -- isLandscape = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", availableWidthPx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OLauncher"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->startBindingItems()V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->clearCallBacks()V

    :cond_59
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->cancelHotseatExpandAnimate()V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setLauncherFinishBindFlag(Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string v0, "Hotseat_expand"

    const-string/jumbo v2, "startBinding setEnableUpdateExpandFlag:false"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->startBinding()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->resetWallpaperOffsetterNumScreens()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->bindExitChildrenModeIcon()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->updateQueryUi()V

    :cond_8d
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/card/manager/domain/CardManager;->setCreateWithEmptyConfig(Z)V

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->supportsAdaptiveIconAnimation(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public tryAddCardByStore(I)V
    .registers 10

    const-string/jumbo v0, "tryAddCardByStore, cardType = "

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    return-void

    :cond_c
    const v0, 0xd3ecf26

    if-ne p1, v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isBindingItems()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lcom/android/launcher/y;

    const/4 v2, 0x3

    invoke-direct {v0, p0, p1, v2}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;II)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mTryAddCardByStoreRunnable:Ljava/lang/Runnable;

    const-string/jumbo p0, "pending tryAddCardByStore task"

    invoke-static {v1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_35

    const-string/jumbo p0, "tryAddCardByStore failed, cardType = "

    invoke-static {p0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_35
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, -0x69

    if-ne v2, v3, :cond_aa

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_94

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_94

    :cond_58
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByComponentNameName(Landroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    if-nez v2, :cond_89

    const-string/jumbo p0, "tryAddCardByStore failed: widgetItem, CN = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_89
    new-instance v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v0, v2, v6}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iput p1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    goto :goto_b2

    :cond_94
    :goto_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "tryAddCardByStore failed: ComponentName, configInfo = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_aa
    new-instance p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-direct {p1, v0, v6}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    invoke-virtual {p0, p1, v5, v4}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    :goto_b2
    return-void
.end method

.method public tryAndUpdatePredictedApps()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->updatePredictedApps(I)V

    return-void
.end method

.method public uninstallOrDisableApplication(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 4

    if-nez p1, :cond_b

    const-string p0, "OLauncher"

    const-string/jumbo p1, "uninstallOrDisableApplication. The itemInfo is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, ""

    goto :goto_1c

    :cond_14
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/util/PackageUtils;->isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {p1}, Lcom/android/common/util/PackageUtils;->isInForbidUnstallList(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_5a

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_44
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showUninstallPanel()V

    goto :goto_5a

    :cond_52
    new-instance v1, Lcom/android/launcher/Launcher$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher/Launcher$8;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public updateDeviceProfile()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onDeviceProfileInitiated()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/OplusLauncherRootView;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchInsets()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->refreshSystemWindowInsets()V

    :cond_31
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public updateRecommendFolder(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;",
            "Lcom/android/launcher/folder/download/model/MarketRecommendModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateFolderFromStore(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V

    return-void
.end method
