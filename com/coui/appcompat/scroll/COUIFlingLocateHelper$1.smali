.class Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->b:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->a:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 9

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_102

    iget-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->a:Z

    if-eqz p1, :cond_102

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->a:Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->b:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->c()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-nez p2, :cond_16

    goto/16 :goto_102

    :cond_16
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1e

    goto/16 :goto_102

    :cond_1e
    iget v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_c8

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_71

    iget-object v3, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    div-int/2addr v5, v4

    sub-int v5, v3, v5

    goto :goto_71

    :cond_5f
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v3

    :cond_71
    :goto_71
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, v1, :cond_a6

    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/2addr v3, v4

    add-int v5, v3, v1

    goto :goto_a6

    :cond_93
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/2addr v3, v4

    sub-int v5, v1, v3

    :cond_a6
    :goto_a6
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    div-int/2addr p2, v4

    add-int/2addr p2, v1

    sub-int/2addr p2, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_102

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(II)V

    goto :goto_102

    :cond_c8
    if-ne v1, v3, :cond_102

    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    goto :goto_f3

    :cond_e3
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    :goto_f3
    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_102

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(II)V

    :cond_102
    :goto_102
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->a:Z

    :cond_7
    return-void
.end method
