.class public Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;
.super Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.source ""


# static fields
.field private static final INITIAL_TOUCH_SETTLING_DURATION:I = 0x64

.field private static final REPEAT_TOUCH_SETTLING_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "OplusAllAppsFastScrollHelper"


# instance fields
.field private final mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mCurrentFastScrollSection:Ljava/lang/String;

.field public mFastScrollFrameIndex:I

.field private final mFastScrollFrames:[I

.field public mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

.field private mHasFastScrollTouchSettled:Z

.field private mHasFastScrollTouchSettledAtLeastOnce:Z

.field private mOffset:I

.field public mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

.field private mTargetFastScrollSection:Ljava/lang/String;

.field private mTrackedFastScrollViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    const/16 p1, 0xa

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollFrames:[I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    new-instance p1, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$1;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollFrames:[I

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    return-void
.end method

.method private smoothSnapToPosition(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smoothSnapToPosition: info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAllAppsFastScrollHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->trackAllChildViews()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    goto :goto_53

    :cond_38
    iput-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v0, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    if-eqz v3, :cond_4e

    const-wide/16 v3, 0xc8

    goto :goto_50

    :cond_4e
    const-wide/16 v3, 0x64

    :goto_50
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_53
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    iget v1, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    iget-object v3, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    move v3, v2

    goto :goto_69

    :cond_67
    iget v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mOffset:I

    :goto_69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_77

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_77

    move p2, v2

    goto :goto_81

    :cond_77
    iget-object p3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p3, v1, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_81
    iget-object p3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length p3, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double/2addr v3, v0

    double-to-int v0, v3

    move v1, v2

    :goto_9a
    if-ge v1, p3, :cond_b3

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollFrames:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    aput v4, v3, v1

    sub-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    :cond_b3
    iput v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private trackAllChildViews()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private updateTrackedViewsFastScrollFocusState()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    const/4 v3, -0x1

    if-le v2, v3, :cond_4a

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-eqz v2, :cond_4a

    iget-object v3, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    if-ne v2, v3, :cond_4a

    const/4 v2, 0x1

    move v4, v2

    :cond_4a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_6

    :cond_50
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->setFocusedPosition(I)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public onFastScrollCompleted()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->mOffset:I

    return-void
.end method

.method public smoothScrollToSection(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z
    .registers 6

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget v1, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    if-eq v0, v1, :cond_d

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->smoothSnapToPosition(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
