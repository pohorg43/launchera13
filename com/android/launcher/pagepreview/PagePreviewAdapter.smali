.class public final Lcom/android/launcher/pagepreview/PagePreviewAdapter;
.super Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pagepreview/PagePreviewAdapter$Companion;,
        Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;,
        Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/pagepreview/PagePreviewAdapter$Companion;

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PagePreviewAdapter"


# instance fields
.field private mIsFirstEnterPreview:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPagePreviewItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPos:I

.field private mTwoPanelPagePreviewItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->Companion:Lcom/android/launcher/pagepreview/PagePreviewAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "previewItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mIsFirstEnterPreview:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getSelectedPosition()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getTwoPanelItems()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->onBindViewHolder$lambda-1(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->onBindViewHolder$lambda-0(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V
    .registers 5

    const-string/jumbo p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$holder"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$pagePreviewItemView"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p4, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    if-eq p4, p1, :cond_21

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->updateSelectedPos(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMItemClickListener()Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

    move-result-object p0

    if-nez p0, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p0, p3, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_21
    :goto_21
    return-void
.end method

.method private static final onBindViewHolder$lambda-1(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V
    .registers 7

    const-string/jumbo p6, "this$0"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$holder"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$twoPanelItemView1"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$twoPanelItem"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$twoPanelItemView2"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p6, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    if-eq p6, p1, :cond_40

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->updateSelectedPos(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMItemClickListener()Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

    move-result-object p2

    if-nez p2, :cond_28

    goto :goto_2b

    :cond_28
    invoke-interface {p2, p3, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :goto_2b
    invoke-virtual {p4}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMItemClickListener()Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;

    move-result-object p0

    if-nez p0, :cond_3d

    goto :goto_40

    :cond_3d
    invoke-interface {p0, p5, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_40
    :goto_40
    return-void
.end method

.method private final updateHolderBindInfoWhenWHRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZZ)V
    .registers 5

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v0

    if-lez v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mIsFirstEnterPreview:Z

    if-eqz v0, :cond_1c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mIsFirstEnterPreview:Z

    goto :goto_2f

    :cond_1c
    instance-of p0, p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;

    if-eqz p0, :cond_26

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;

    invoke-virtual {p1, p2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;->correctPreviewVhSelected(Z)V

    goto :goto_2f

    :cond_26
    instance-of p0, p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    if-eqz p0, :cond_2f

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->correctTwoPanelVhSelected(ZZ)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public final changePadding()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    const v3, 0x7f070755

    const v4, 0x7f0709c6

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getItemCount()I

    move-result v1

    const v2, 0x7f0709c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070756

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_69

    :cond_31
    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_69

    :cond_3e
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0709c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_69

    :cond_5a
    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070754

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_69
    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f0709cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ge v1, v0, :cond_82

    move v1, v0

    :cond_82
    const-string v0, " changePadding :"

    const-string v2, " widthPx:"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " screenWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PagePreviewAdapter"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_af

    goto :goto_c8

    :cond_af
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_c8
    return-void
.end method

.method public final checkIndex(I)Z
    .registers 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_27

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_29

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p1, p0, :cond_29

    :cond_27
    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    goto :goto_f

    :cond_d
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getSelectedPosition()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p0

    div-int/2addr v0, p0

    :cond_1f
    return v0
.end method

.method public final getTwoPanelItems()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Li1/d;->g(II)Lm3/d;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Li1/d;->f(Lm3/b;I)Lm3/b;

    move-result-object v0

    iget v3, v0, Lm3/b;->a:I

    iget v4, v0, Lm3/b;->b:I

    iget v0, v0, Lm3/b;->c:I

    if-lez v0, :cond_1f

    if-le v3, v4, :cond_23

    :cond_1f
    if-gez v0, :cond_95

    if-gt v4, v3, :cond_95

    :cond_23
    :goto_23
    add-int v5, v3, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_46

    iget-object v8, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    new-instance v7, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    div-int/lit8 v8, v3, 0x2

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-direct {v7, v6, v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;-><init>(Ljava/util/List;I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_68

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v6}, Lcom/android/launcher/pagepreview/PagePreviewItem;->isSelected()Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->setSelected(Z)V

    goto :goto_8b

    :cond_68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v2, :cond_8b

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/PagePreviewItem;->isSelected()Z

    move-result v8

    if-nez v8, :cond_88

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v6}, Lcom/android/launcher/pagepreview/PagePreviewItem;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_87

    goto :goto_88

    :cond_87
    move v9, v1

    :cond_88
    :goto_88
    invoke-virtual {v7, v9}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->setSelected(Z)V

    :cond_8b
    :goto_8b
    iget-object v6, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v3, v4, :cond_93

    goto :goto_95

    :cond_93
    move v3, v5

    goto :goto_23

    :cond_95
    :goto_95
    return-void
.end method

.method public isPageViewHolder()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->changePadding()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 13

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "mPagePreviewItems[position]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewItem;->isSelected()Z

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->updateHolderBindInfoWhenWHRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZZ)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewItem;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewItem;->getIndex()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setCellLayout(Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setSelected(Z)V

    if-eqz v2, :cond_34

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    :cond_34
    new-instance v0, Lcom/android/launcher/pagepreview/a;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/launcher/pagepreview/a;-><init>(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e3

    :cond_3e
    instance-of v0, p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "mTwoPanelPagePreviewItems[position]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->isSelected()Z

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_62

    move v2, v0

    goto :goto_63

    :cond_62
    move v2, v3

    :goto_63
    invoke-direct {p0, p1, v0, v2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->updateHolderBindInfoWhenWHRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZZ)V

    move-object v4, p1

    check-cast v4, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    invoke-virtual {v4}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->getMTwoPanelView1()Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->getMTwoPanelView2()Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v5}, Lcom/android/launcher/pagepreview/PagePreviewItem;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v6}, Lcom/android/launcher/pagepreview/PagePreviewItem;->getIndex()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setCellLayout(Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_9f

    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cc

    :cond_9f
    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_cc

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v5}, Lcom/android/launcher/pagepreview/PagePreviewItem;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v1}, Lcom/android/launcher/pagepreview/PagePreviewItem;->getIndex()I

    move-result v1

    invoke-virtual {v9, v5, v1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setCellLayout(Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_cc
    :goto_cc
    invoke-virtual {v4, v0, v2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->setTwoPanelVhSelected(ZZ)V

    if-eqz v0, :cond_d3

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    :cond_d3
    invoke-virtual {v4}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->getMTwoPanelPreviewParent()Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/pagepreview/b;

    move-object v3, v1

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/pagepreview/b;-><init>(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;Lcom/android/launcher/pagepreview/PagePreviewItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e3
    :goto_e3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    new-instance p2, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d019a

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mLayoutInflater.inflate(…two_panel, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;-><init>(Landroid/view/View;)V

    goto :goto_6e

    :cond_25
    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_41

    new-instance p2, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0199

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mLayoutInflater.inflate(…em_tablet, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;-><init>(Landroid/view/View;)V

    goto :goto_6e

    :cond_41
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p2

    if-eqz p2, :cond_5b

    new-instance p2, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0198

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mLayoutInflater.inflate(…oldscreen, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;-><init>(Landroid/view/View;)V

    goto :goto_6e

    :cond_5b
    new-instance p2, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0197

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mLayoutInflater.inflate(…view_item, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;-><init>(Landroid/view/View;)V

    :goto_6e
    return-object p2
.end method

.method public final recycle()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->setMItemClickListener(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setData(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->getTwoPanelItems()V

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->changePadding()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateSelectedPos(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->checkIndex(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->setSelected(Z)V

    goto :goto_31

    :cond_24
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher/pagepreview/PagePreviewItem;->setSelected(Z)V

    :cond_31
    :goto_31
    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->checkIndex(I)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->setSelected(Z)V

    goto :goto_59

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher/pagepreview/PagePreviewItem;->setSelected(Z)V

    :cond_59
    :goto_59
    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    if-nez p2, :cond_68

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    :cond_68
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->updateViewSelectState(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mSelectedPos:I

    return-void
.end method

.method public updateViewSelectState(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    instance-of v0, p3, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mTwoPanelPagePreviewItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    invoke-virtual {p1}, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->getPagePreviewItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_28

    check-cast p3, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    invoke-virtual {p3, v2, v2}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->setTwoPanelVhSelected(ZZ)V

    goto :goto_3a

    :cond_28
    check-cast p3, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    invoke-virtual {p3, v2, v1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->setTwoPanelVhSelected(ZZ)V

    goto :goto_3a

    :cond_2e
    if-nez p3, :cond_32

    const/4 p1, 0x0

    goto :goto_34

    :cond_32
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_34
    if-nez p1, :cond_37

    goto :goto_3a

    :cond_37
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_3a
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_61

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_5b

    instance-of p0, p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    if-eqz p0, :cond_5b

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;

    invoke-virtual {p1, v1, v1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->setTwoPanelVhSelected(ZZ)V

    goto :goto_64

    :cond_5b
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_64

    :cond_61
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_64
    return-void
.end method
