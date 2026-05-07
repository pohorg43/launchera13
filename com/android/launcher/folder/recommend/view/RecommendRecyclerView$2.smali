.class Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 6
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->access$000(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Lcom/android/launcher/views/VHLinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-static {p2}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->access$100(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Lcom/android/launcher/views/VHLinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->access$200(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Lcom/android/launcher/views/VHLinearLayoutManager;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_63

    if-eq p3, p1, :cond_63

    if-eqz p1, :cond_63

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->access$300(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)I

    move-result v0

    rem-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p2, v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-static {v1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->access$400(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->access$500(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Z

    move-result p0

    if-eqz p0, :cond_5c

    sub-float/2addr v0, p2

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_63

    :cond_5c
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_63
    :goto_63
    return-void
.end method
