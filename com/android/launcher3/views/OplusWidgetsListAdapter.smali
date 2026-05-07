.class public Lcom/android/launcher3/views/OplusWidgetsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/OplusWidgetsListAdapter$OplusWidgetListRowEntryComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OplusWidgetsListAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDiffReporter:Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHzItemSpacing:I

.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/icons/IconCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 7

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mHzItemSpacing:I

    iput-object p2, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance p2, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

    invoke-direct {p2, p3, p0}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;-><init>(Lcom/android/launcher3/icons/IconCache;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p2, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mDiffReporter:Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c9e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mHzItemSpacing:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->onBindViewHolder(Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object v0, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    iget-object v1, p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->title:Lcom/android/launcher3/BubbleTextView;

    iget-object v2, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object p2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-interface {v2, v1, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->applyFromPackageItemInfo(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/PackageItemInfo;)V

    new-instance p2, Lcom/android/launcher/widget/OplusWidgetsHzAdapter;

    iget-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p2, v1, v0, v2, p0}, Lcom/android/launcher/widget/OplusWidgetsHzAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;
    .registers 6

    iget-object p2, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d023d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;

    invoke-direct {p2, p1}, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    iget-object p1, p2, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/launcher/widget/OplusWidgetsHzAdapter$WidgetsHzItemDecoration;

    iget v2, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mHzItemSpacing:I

    invoke-direct {v0, v2}, Lcom/android/launcher/widget/OplusWidgetsHzAdapter$WidgetsHzItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p2, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p2, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    iget-object p1, p2, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p2, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->title:Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060702

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    :cond_4a
    return-object p2
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    check-cast p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->onFailedToRecycleView(Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->onViewRecycled(Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;)V
    .registers 4

    iget-object p0, p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_17

    iget-object v1, p1, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/views/OplusWidgetsListAdapter$OplusWidgetListRowEntryComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/OplusWidgetsListAdapter$OplusWidgetListRowEntryComparator;-><init>(Lcom/android/launcher3/views/OplusWidgetsListAdapter$1;)V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mDiffReporter:Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->process(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;)V

    return-void
.end method
