.class public Lcom/oplus/uxicon/ui/ui/SwipeLinearLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# instance fields
.field public a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/SwipeLinearLayoutManager;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    return-void
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/SwipeLinearLayoutManager;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/SwipeLinearLayoutManager;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    iget v1, v1, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a:I

    if-ne v0, v1, :cond_15

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_15
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    return p0
.end method
