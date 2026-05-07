.class public Lcom/android/launcher/pagepreview/PagePreviewListContainer;
.super Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;
.source ""

# interfaces
.implements Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;
.implements Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;


# static fields
.field private static final MAX_CLICK_TO_SNAP_DURATION:I = 0x514

.field private static final REFRESH_PAGEPREVIEW_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "PagePreviewListContainer"


# instance fields
.field private mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

.field private mIsLock:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

.field private mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private getPreviewItems()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_36

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    new-instance v5, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/pagepreview/PagePreviewItem;-><init>(Lcom/android/launcher3/CellLayout;I)V

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v4, v3, :cond_2c

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2c
    move v4, v2

    :goto_2d
    invoke-virtual {v5, v4}, Lcom/android/launcher/pagepreview/PagePreviewItem;->setSelected(Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_36
    return-object v1
.end method

.method private getWorkspace()Lcom/android/launcher3/OplusWorkspace;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    :cond_10
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    return-object p0
.end method

.method private visibility()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mIsLock:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public getAdditionalAnim(Z)Landroid/animation/AnimatorSet;
    .registers 10

    const-string v0, "getAdditionalAnim, view: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagePreviewListContainer"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c81

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    if-eqz p1, :cond_38

    move v4, v0

    goto :goto_39

    :cond_38
    move v4, v2

    :goto_39
    if-eqz p1, :cond_3c

    move v0, v2

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v3, 0x1

    aput v1, v6, v3

    invoke-static {p1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    aput v4, v2, v7

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x16f

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_RECYCLERVIEW_ITEM_TRANS_Y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object p1, v1, v7

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public invalidateCurrentPreviewPage(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v3, :cond_3a

    move-object v3, v2

    check-cast v3, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v3}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getScreenIndex()I

    move-result v3

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    if-eq v3, v4, :cond_2d

    goto :goto_5f

    :cond_2d
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_34

    return-void

    :cond_34
    check-cast v2, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v2, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->switchIconSelectState(Landroid/view/View;)V

    return-void

    :cond_3a
    instance-of v3, v2, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_45

    return-void

    :cond_45
    move v3, v0

    :goto_46
    move-object v4, v2

    check-cast v4, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_5f

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v5, :cond_5c

    check-cast v4, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v4, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->switchIconSelectState(Landroid/view/View;)V

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_62
    return-void
.end method

.method public invalidatePagePreviewItem()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4c

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_49

    :cond_1e
    instance-of v3, v2, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_49

    :cond_26
    instance-of v3, v2, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    if-eqz v3, :cond_49

    move v3, v0

    :goto_2b
    move-object v4, v2

    check-cast v4, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_49

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3f

    goto :goto_46

    :cond_3f
    instance-of v5, v4, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v5, :cond_46

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4c
    return-void
.end method

.method public onConfigurationChangedWithDiff(Landroid/content/res/Configuration;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher/views/AdaptiveScreenRotateRelativeLayout;->onConfigurationChangedWithDiff(Landroid/content/res/Configuration;I)V

    and-int/lit16 p1, p2, 0x1480

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const-string/jumbo p2, "onOrientationChanged childCount:"

    const-string v0, "PagePreviewListContainer"

    invoke-static {p2, p1, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->changePadding()V

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->updatePagePreviewItems()V

    :cond_21
    return-void
.end method

.method public onDropAnimationComplete(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->invalidatePagePreviewItem()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a03f2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewListView;

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070754

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070756

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_46

    :cond_39
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070755

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    new-instance v2, Lcom/android/launcher/togglebar/RvItemDecoration;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/launcher/togglebar/RvItemDecoration;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    new-instance v1, Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 7

    instance-of v0, p1, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v0, :cond_66

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getScreenIndex()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v0

    const/16 v0, 0x514

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v1, "item click, iIndex = "

    const-string v2, ", sIndex = "

    const-string v3, ", currentIndex = "

    invoke-static {v1, p2, v2, p1, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", snap duration = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PagePreviewListContainer"

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimate(Z)V

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    :cond_66
    return-void
.end method

.method public onPageEndTransition()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayoutIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_14

    div-int/lit8 v0, v0, 0x2

    :cond_14
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollToPosition(I)V

    :cond_21
    const-string v1, " currentWorkspaceIndex "

    const-string v2, "PagePreviewListContainer"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    if-eqz p0, :cond_30

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->updateSelectedPos(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_30
    return-void
.end method

.method public onPagePreviewStateDisable(Z)V
    .registers 2

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->setLock(Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    :cond_14
    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_24

    :cond_20
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->setLock(Z)V

    :goto_24
    return-void
.end method

.method public onPagePreviewStateEnable(Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->setLock(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    if-eqz v1, :cond_24

    if-nez p1, :cond_24

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const-string p0, "PagePreviewListContainer"

    const-string/jumbo p1, "onPagePreviewStateEnable set page indicator to invisible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    new-instance v0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getPreviewItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    invoke-virtual {v0, p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->setIAdditionAnim(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    invoke-virtual {v0, p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->setOnItemClickListener(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_49
    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mPreviewListView:Lcom/android/launcher/pagepreview/PagePreviewListView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_56
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->onWallpaperBrightnessChanged()V

    :cond_7
    return-void
.end method

.method public setBtnContainer(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mBtnContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    return-void
.end method

.method public setLock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mIsLock:Z

    return-void
.end method

.method public updatePagePreviewItems()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->visibility()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->mListAdapter:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->getPreviewItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->setData(Ljava/util/ArrayList;)V

    :cond_12
    :goto_12
    return-void
.end method
