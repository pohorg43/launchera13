.class public Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;
.super Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;
.source ""


# static fields
.field private static final MAX_INPUT_LIMIT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveSearchBarController"


# instance fields
.field private mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Lcom/android/launcher3/search/SearchAlgorithm;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Lcom/android/launcher3/search/SearchCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Lcom/android/launcher3/search/SearchAlgorithm;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Lcom/android/launcher3/search/SearchCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)Lcom/android/launcher3/search/SearchAlgorithm;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    return-object p0
.end method

.method private clearResult()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->unfocusSearchField()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v0}, Lcom/android/launcher3/search/SearchCallback;->clearSearchResult()V

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private showSoftInput(Landroid/view/View;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private unfocusSearchField()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_12
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

.method public hideKeyboard()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Landroid/os/IBinder;Landroid/content/Context;)V

    return-void
.end method

.method public final initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Landroid/content/Context;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/search/SearchAlgorithm;",
            "Lcom/coui/appcompat/searchview/COUISearchView;",
            "Landroid/content/Context;",
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

    const-string v0, "SuperPowerSaveSearchBarController"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iput-object p4, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    iput-object p3, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput-object p2, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/4 p2, 0x0

    if-nez p5, :cond_20

    iput-boolean p2, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    return-void

    :cond_20
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1200c7

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p3}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p3

    new-array p5, p4, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p5, p2

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    new-instance p2, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController$1;

    invoke-direct {p2, p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController$1;-><init>(Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1, p4}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->showSoftInput(Landroid/view/View;)Z

    return-void
.end method

.method public isSearchFieldFocused()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->clearResult()V

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->hideKeyboard()V

    return-void
.end method

.method public resetSearchBarState()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mHasInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->mCOUISearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    :cond_1c
    return-void
.end method
