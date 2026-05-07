.class public Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;
.super Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusAllAppsSearchBarController"


# instance fields
.field private mHasInited:Z

.field private mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

.field private mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    return-void
.end method

.method private clearResult()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    if-eqz v0, :cond_29

    const-string p0, "OplusAllAppsSearchBarController"

    const-string v0, "clearResult isFolderOpen"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->unfocusSearchField()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v0}, Lcom/android/launcher3/search/SearchCallback;->clearSearchResult()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private unfocusSearchField()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isSmartView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_18
    return-void
.end method


# virtual methods
.method public focusSearchField()V
    .registers 1

    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public getsearchViewAnimate()Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    return-object p0
.end method

.method public hideKeyboard()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    :cond_15
    return-void
.end method

.method public final initialize(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/OplusAllAppsContainerView;",
            "Lcom/android/launcher3/search/SearchAlgorithm;",
            "Lcom/coui/appcompat/searchview/COUISearchView;",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/coui/appcompat/searchview/COUISearchViewAnimate;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OplusAllAppsSearchBarController"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iput-object p5, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    iput-object p4, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    iput-object p6, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-nez p6, :cond_20

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    return-void

    :cond_20
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060361

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p6, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f1200c7

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    new-instance p3, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;

    invoke-direct {p3, p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;-><init>(Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    return-void
.end method

.method public isSearchFieldFocused()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->clearResult()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->hideKeyboard()V

    return-void
.end method

.method public resetSearchBarState()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    :cond_1c
    return-void
.end method
