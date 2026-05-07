.class public Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# instance fields
.field private mMoreRecommendMargin:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->mMoreRecommendMargin:I

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070638

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    const/high16 v2, 0x41200000  # 10.0f

    const/4 v3, 0x0

    if-nez v1, :cond_50

    if-nez p4, :cond_3a

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->mMoreRecommendMargin:I

    sub-int/2addr p0, p3

    invoke-virtual {p1, p0, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    :cond_3a
    if-ne p4, v0, :cond_48

    invoke-static {p2, v2}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->dp2px(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p2, v2}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p0, v3, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    :cond_48
    invoke-static {p2, v2}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->dp2px(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, p0, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    :cond_50
    if-nez p4, :cond_59

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->mMoreRecommendMargin:I

    sub-int/2addr p0, p3

    invoke-virtual {p1, v3, v3, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    :cond_59
    if-ne p4, v0, :cond_67

    invoke-static {p2, v2}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->dp2px(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p2, v2}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p0, v3, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    :cond_67
    invoke-static {p2, v2}, Lcom/android/launcher/folder/recommend/view/RecommendPaddingDecoration;->dp2px(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, v3, v3, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6e
    return-void
.end method
