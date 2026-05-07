.class public Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorAppsSearchContainerLayout"


# instance fields
.field private mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

.field private mAppsView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

.field private mContext:Landroid/content/Context;

.field private mHasInflateSearchView:Z

.field private final mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

.field private final mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

.field private mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    iput-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private inflateSearchViewAnimate()Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-nez v0, :cond_1c

    const v0, 0x7f0a0461

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "  "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08058d

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    return v4
.end method

.method private notifyResultChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mAppsView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->onSearchResultsChanged()V

    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->notifyResultChanged()V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public exitSearchMode()V
    .registers 1

    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScrollRangeDelta(Landroid/graphics/Rect;)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public hideKeyBoard()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->hideKeyboard()V

    return-void
.end method

.method public initialize(Landroid/view/View;)V
    .registers 8

    instance-of v0, p1, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    iput-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mAppsView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    :cond_8
    iget-boolean p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    new-instance v1, Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {v2}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    iget-object v3, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Landroid/content/Context;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    :cond_25
    return-void
.end method

.method public onAppsUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    const-string/jumbo v0, "onFinishInflate: mHasInflateSearchView: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    const-string v1, "ColorAppsSearchContainerLayout"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getRight()I

    move-result p4

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_3c

    :cond_27
    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getTop()I

    move-result p3

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {p1, p2}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    invoke-direct {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->notifyResultChanged()V

    :cond_a
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public resetSearch()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->reset()V

    return-void
.end method

.method public setAllApp(Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    return-void
.end method

.method public setContentVisibility(ILcom/android/launcher3/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
    .registers 4

    return-void
.end method

.method public setTextSearchEnabled(Z)Landroid/widget/EditText;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateQueryUi()V
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->inflateSearchViewAnimate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    const-string/jumbo v0, "updateQueryUi: mHasInflateSearchView: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    const-string v2, "ColorAppsSearchContainerLayout"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mHasInflateSearchView:Z

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchBarController:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;

    new-instance v2, Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;

    iget-object v0, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mApps:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {v3}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchView:Lcom/coui/appcompat/searchview/COUISearchView;

    iget-object v4, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->mSearchViewAnimate:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchBarController;->initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Landroid/content/Context;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    :cond_31
    return-void
.end method
