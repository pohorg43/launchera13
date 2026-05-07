.class public Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/search/OplusSearchUiManager;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/android/launcher3/allapps/search/OplusSearchUiManager;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field private static final EMPTY_ALL_APPS_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusAppsSearchContainerLayout"


# instance fields
.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private mFixedTranslationY:F

.field private mHasInflateSearchView:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mMarginTopAdjusting:F

.field private final mMinHeight:I

.field private mOldConfig:Landroid/content/res/Configuration;

.field private mPreQuery:Ljava/lang/String;

.field private final mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

.field private mSearchLine:Landroid/view/View;

.field private final mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

.field private mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->EMPTY_ALL_APPS_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mPreQuery:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mFixedTranslationY:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mMarginTopAdjusting:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070125

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mMinHeight:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->lambda$inflateSearchViewAnimate$0(II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private inflateSearchViewAnimate()Z
    .registers 4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateSearchViewAnimate: inDrawerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAppsSearchContainerLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-nez v0, :cond_4f

    const v0, 0x7f0a045e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    new-instance v1, Lcom/android/launcher3/allapps/search/b;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/search/b;-><init>(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;)V

    iget-object v2, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Ljava/util/List;

    if-nez v2, :cond_4a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4a
    iput-object v2, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->updateSearchCanelButton()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    const/4 p0, 0x1

    return p0

    :cond_5c
    const/4 p0, 0x0

    return p0
.end method

.method private initSearchController(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 10

    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getBranchUIController()Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->setMSearchUiManager(Lcom/android/launcher3/allapps/SearchUiManager;)V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getSearchAlgorithm()Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->setMBranchResponse(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->setMSearchAlgorithmProxy(Lcom/android/launcher3/search/SearchAlgorithm;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->setMContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    iget-object v6, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v7, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, p0

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    return-void

    :cond_3b
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    new-instance v2, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    return-void
.end method

.method private synthetic lambda$inflateSearchViewAnimate$0(II)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_e

    if-ne p2, v0, :cond_e

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchLine:Landroid/view/View;

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :cond_e
    if-ne p1, v0, :cond_1b

    if-nez p2, :cond_1b

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchLine:Landroid/view/View;

    if-eqz p0, :cond_1b

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private shouldInterceptTouchEventToStartBranch(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needStartBranchSearch(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchState()I

    move-result p0

    if-nez p0, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private updateSearchCanelButton()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_1c

    const v1, 0x7f0a00a0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0401f0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public clearSearchEditFocus()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_7
    return-void
.end method

.method public clearSearchResult()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    sget-object v1, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->EMPTY_ALL_APPS_LIST:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    return-void
.end method

.method public exitSearchMode()V
    .registers 1

    return-void
.end method

.method public getEditText()Lcom/android/launcher3/ExtendedEditText;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mPreQuery:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarController()Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    return-object p0
.end method

.method public hideKeyboardAndResetSearchView()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->resetSearchBarState()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->hideKeyboard()V

    return-void
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->initSearchController(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    :cond_b
    return-void
.end method

.method public isSearchEditHasFocus()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onAppsUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lcom/android/common/config/ScreenInfo;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_32

    :cond_25
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_32
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_57

    add-int/2addr v1, v3

    goto :goto_58

    :cond_57
    move v1, v3

    :cond_58
    :goto_58
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_63
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-static {p1}, Lcom/android/common/util/UxConfigUtils;->needReloadColor(I)Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0401f0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->updateSearchCanelButton()V

    :cond_b6
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mOldConfig:Landroid/content/res/Configuration;

    const-string/jumbo v0, "onFinishInflate: mHasInflateSearchView: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const-string v1, "OplusAppsSearchContainerLayout"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->shouldInterceptTouchEventToStartBranch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "OplusAppsSearchContainerLayout"

    const-string/jumbo v0, "startBranchSearch"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    sub-int/2addr p3, p2

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_42

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->focusSearchField()V

    :cond_42
    return-void
.end method

.method public resetQueryHint()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1200c7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public resetSearch()V
    .registers 4

    const-wide/16 v0, 0x8

    const-string v2, "ColorAppsSearchContainerLayout#resetSearch"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->getQuery()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mPreQuery:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->reset()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mFixedTranslationY:F

    neg-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mMarginTopAdjusting:F

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setQuery(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p2, :cond_e

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_1b
    return-void
.end method

.method public setSearchLine(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchLine:Landroid/view/View;

    return-void
.end method

.method public setSearchViewAnimateAlpha(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setTextSearchEnabled(Z)Landroid/widget/EditText;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public showBranchSearchGuide()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_83

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-nez v1, :cond_9

    goto :goto_83

    :cond_9
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "show_branch_search_guide"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    const/4 v3, -0x2

    invoke-direct {v2, v0, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const v3, 0x7f0a00e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;-><init>(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f07019f

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v2, v0, v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void

    :cond_83
    :goto_83
    const-string p0, "OplusAppsSearchContainerLayout"

    const-string/jumbo v0, "popup new search tips launcher is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBranchSearchMarketTips()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "OplusAppsSearchContainerLayout"

    if-eqz v0, :cond_ad

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-nez v2, :cond_10

    goto/16 :goto_ad

    :cond_10
    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getEmptySearchMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string/jumbo p0, "searchMarketIntent is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const v3, 0x7f0a00e8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getEmptySearchMarketString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const v3, 0x7f0a00e5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_85
    const v3, 0x7f0a00e7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;-><init>(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070586

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v2, v0, v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void

    :cond_ad
    :goto_ad
    const-string/jumbo p0, "popup empty search tips launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showKeyboard()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i(I)V

    :cond_c
    return-void
.end method

.method public updateNeedShowIconSelected(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p1, :cond_c

    const p1, 0x3e4ccccd  # 0.2f

    goto :goto_e

    :cond_c
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method public updateQueryUi()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const-string/jumbo v0, "updateQueryUi: mHasInflateSearchView: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    const-string v2, "OplusAppsSearchContainerLayout"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->initSearchController(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    :cond_1f
    return-void
.end method
