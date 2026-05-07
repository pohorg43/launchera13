.class public Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;,
        Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_PAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UxChangeIconPanelFragment"


# instance fields
.field private mHasRemoveInsertView:Z

.field private final mLoadingViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/coui/appcompat/progressbar/COUILoadingView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemChooseListener:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;

.field private mOnLoadMoreListener:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;

.field private mPagerCount:I

.field private final mRVAdapterList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public mSwipe:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mLoadingViews:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mPagerCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mHasRemoveInsertView:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mOnLoadMoreListener:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;)Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mOnItemChooseListener:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;

    return-object p0
.end method


# virtual methods
.method public clearData(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    if-eqz v0, :cond_1d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->clearData()V

    :cond_1d
    return-void
.end method

.method public getItemCount()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mPagerCount:I

    return p0
.end method

.method public declared-synchronized insertLoadingView(II)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    if-eqz v0, :cond_43

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mHasRemoveInsertView:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->insertLoadingView(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mHasRemoveInsertView:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewPager insert page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " insertPos: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UxChangeIconPanelFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->onBindViewHolder(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;I)V
    .registers 6
    .param p1  # Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;->a()Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mLoadingViews:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;->b:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mLoadingViews:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/progressbar/COUILoadingView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p2, "UxChangeIconPanelFragment"

    const-string v0, "ViewPager onCreateViewHolder "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oplus/uxicon/ui/R$layout;->view_pager_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$b;-><init>(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized removeFooterView(II)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    if-eqz v0, :cond_3f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->removeFooterView(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mHasRemoveInsertView:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewPager remove pagePos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " removePos: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UxChangeIconPanelFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setData(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    if-eqz v0, :cond_51

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mRVAdapterList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->setData(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mLoadingViews:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/progressbar/COUILoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pagePos: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UxChangeIconPanelFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    :cond_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setListener(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mOnLoadMoreListener:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;

    return-void
.end method

.method public setPagerCount(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mPagerCount:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRVItemChooseListener(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mOnItemChooseListener:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;

    return-void
.end method
