.class Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$2;
.super Lcom/android/launcher/views/VHLinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->snapToNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-direct {p0, p2}, Lcom/android/launcher/views/VHLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalSnapPreference()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method
