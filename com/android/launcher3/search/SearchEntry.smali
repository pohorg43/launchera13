.class public final Lcom/android/launcher3/search/SearchEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchEntry$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_DOMESTIC_SEARCH_APP:Ljava/lang/String; = "android.search.action.DOCK_SEARCH"

.field private static final ACTION_EXP_SEARCH_APP:Ljava/lang/String; = "com.oppo.quicksearchbox.action.Dispatch"

.field public static final Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

.field private static final DEFAULT_VALUE:Z = true

.field private static final DELAY_RESTORE:J = 0x2bcL

.field public static final IS_SEARCH_ENTRY_ENABLE:Ljava/lang/String; = "is_search_entry_enable"

.field private static final MSG_SHOW_SEARCH_ENTRY:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SearchEntry"


# instance fields
.field private mActivityStated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIsSupport:Z

.field private mIsSwitchEnableState:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

.field private mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

.field private mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

.field private mWallpaperColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIndicator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/search/SearchEntry$mHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/search/SearchEntry$mHandler$1;-><init>(Lcom/android/launcher3/search/SearchEntry;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    new-instance p1, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/SearchEntry;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp$lambda-0(Lcom/android/launcher3/search/SearchEntry;)V

    return-void
.end method

.method private final doRealStartSearchApp()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-static {v1}, Lcom/android/launcher3/search/SearchEntry$Companion;->access$getSearchAppLaunchIntent(Lcom/android/launcher3/search/SearchEntry$Companion;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->startOpenSearchAppAnim()V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_16
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_2c

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "doRealStartSearchApp: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SearchEntry"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public static final getSearchAppAction()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSearchAppPackageName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSearchEntrySupported()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v0

    return v0
.end method

.method public static final isShowSearchEntry(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isShowSearchEntry(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isSwitchEnable(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/search/SearchEntry$Companion;->setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V

    return-void
.end method

.method private final startOpenSearchAppAnim()V
    .registers 2

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startOpenSearchAppAnim()V

    return-void
.end method

.method private static final startSearchApp$lambda-0(Lcom/android/launcher3/search/SearchEntry;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->doRealStartSearchApp()V

    return-void
.end method


# virtual methods
.method public final cancelReplaceAnimation()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->isEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->isStateAnimRunning()Z

    move-result v0

    const-string v1, "cancelReplaceAnimation, running = "

    const-string v2, "SearchEntry"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->cancel()V

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2b
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->updateContent()V

    :cond_2e
    return-void
.end method

.method public final changeSupportState()V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    const-string v1, "changeSupportState, mIsSupport = "

    const-string v2, "SearchEntry"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->initViewIfNeeded()V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/SearchEntry;->setWindowInsets(Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->updateContent()V

    return-void
.end method

.method public final doReplaceAnimation(ZZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->isEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const-string v1, "SearchEntry"

    if-nez v0, :cond_22

    const-string p0, "doReplaceAnimation, ignore as other launcher state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p0, "doReplaceAnimation, ignore as state switching"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    const-string v0, "doReplaceAnimation, showSearchEntry = "

    const-string v2, ", delay = "

    invoke-static {v0, p1, v2, p2, v1}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const/16 v0, 0x65

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x2bc

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_4e
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getAlpha()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float p2, p2, v2

    if-lez p2, :cond_6f

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6f

    if-eqz p1, :cond_6f

    const-string p0, "Ignore as into an existing search entry state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_8f

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_8f

    if-nez p1, :cond_8f

    const-string p0, "Ignore as into an existing indicator state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8f
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    if-nez p2, :cond_9f

    goto :goto_a2

    :cond_9f
    invoke-virtual {p2}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->cancel()V

    :goto_a2
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    new-instance p2, Lcom/android/launcher3/search/SearchEntryStateAnimation;

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v0, v1, p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/search/SearchEntryView;Z)V

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-virtual {p2}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->start()V

    return-void
.end method

.method public final getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    return-object p0
.end method

.method public final getView()Lcom/android/launcher3/search/SearchEntryView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    return-object p0
.end method

.method public final initViewIfNeeded()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d022e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.search.SearchEntryView"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/search/SearchEntryView;

    iput-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/search/SearchEntryView;->setIndicator(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->updateContent()V

    :cond_38
    return-void
.end method

.method public final isEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isStateAnimRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1
.end method

.method public final isStateAnimRunningWithoutMsgCheck()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0
.end method

.method public final onWallpaperBrightChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryView;->onWallpaperBrightChange()V

    :goto_8
    return-void
.end method

.method public final setPivotX(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntryView;->setPivotX(F)V

    :goto_8
    return-void
.end method

.method public final setPivotY(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntryView;->setPivotY(F)V

    :goto_8
    return-void
.end method

.method public final setScaleX(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_8
    return-void
.end method

.method public final setScaleY(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_8
    return-void
.end method

.method public final setSwitchEnableState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->updateContent()V

    return-void
.end method

.method public final setTranslationX(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    :goto_8
    return-void
.end method

.method public final setTranslationY(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_8
    return-void
.end method

.method public final setWindowInsets(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    const-string v0, "indicatorLp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public final startSearchApp()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statsClickSearchEntry()V

    const-string v0, "SearchEntry"

    const-string/jumbo v1, "startSearchApp"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmDrawerSearchEntrySupport()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/android/launcher3/card/seed/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/search/SearchEntry;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_51

    :cond_4e
    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->doRealStartSearchApp()V

    :goto_51
    return-void
.end method

.method public final updateBackground(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/search/SearchEntry;->mWallpaperColor:I

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateBackground(I)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/SearchEntryView;->updateBackground(I)V

    :goto_11
    iput p1, p0, Lcom/android/launcher3/search/SearchEntry;->mWallpaperColor:I

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez p0, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_20
    :goto_20
    return-void
.end method

.method public final updateContent()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->isEnable()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_24
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_29

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/search/SearchEntryView;->setBgWidthOffset(FZ)V

    :goto_2c
    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4e

    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_37

    goto :goto_3a

    :cond_37
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_3a
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    if-nez v0, :cond_3f

    goto :goto_44

    :cond_3f
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_44
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimVisibility(I)V

    :goto_4e
    return-void
.end method
