.class public Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroidx/recyclerview/widget/COUIRecyclerView;

.field public b:I

.field public c:Landroidx/recyclerview/widget/OrientationHelper;

.field public d:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public e:Landroid/content/Context;

.field public f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    new-instance v0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;-><init>(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x2

    if-ne v0, v4, :cond_42

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_41

    :cond_1b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v6, v5

    :goto_25
    if-ge v2, v0, :cond_41

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v8

    div-int/2addr v8, v4

    add-int/2addr v8, v7

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v3, :cond_3e

    move-object v1, v5

    move v3, v7

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_41
    :goto_41
    return-object v1

    :cond_42
    const/4 v4, 0x1

    if-ne v0, v4, :cond_9b

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_50

    goto :goto_9b

    :cond_50
    instance-of v6, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_67

    move-object v6, p1

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v6, v7, :cond_63

    goto :goto_64

    :cond_63
    move v4, v2

    :goto_64
    if-eqz v4, :cond_67

    goto :goto_9b

    :cond_67
    iget-object v4, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    goto :goto_78

    :cond_74
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    :goto_78
    if-ge v2, v5, :cond_9b

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    goto :goto_8f

    :cond_8b
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    :goto_8f
    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v3, :cond_98

    move-object v1, v6

    move v3, v7

    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_9b
    :goto_9b
    return-object v1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->c:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_10

    :cond_a
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->c:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->c:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method public final c()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eq v0, v1, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    :cond_14
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public final d(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    move p0, v0

    :cond_14
    return p0
.end method
