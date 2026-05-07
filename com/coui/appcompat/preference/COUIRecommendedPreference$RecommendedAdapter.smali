.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->b:Ljava/util/List;

    const/4 v0, 0x0

    new-instance v1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    invoke-direct {v1, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    iget-object v1, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-lez p2, :cond_91

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_4b

    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    iget-object v2, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->recommended_recyclerView_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->a:Landroid/content/Context;

    sget v2, Lcom/support/appcompat/R$drawable;->coui_recommended_last_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setBackgroundAnimationDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_86

    :cond_4b
    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->recommended_recyclerView_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-ne p2, v2, :cond_86

    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    iget-object v3, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->a:Landroid/content/Context;

    sget v3, Lcom/support/appcompat/R$color;->coui_list_color_pressed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setBackgroundAnimationDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_86
    :goto_86
    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    new-instance p2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;-><init>(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_98

    :cond_91
    if-nez p2, :cond_98

    iget-object p0, p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->b:Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_98
    :goto_98
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_17

    new-instance p2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$layout;->item_recommended_head_textview:I

    invoke-virtual {v0, v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V

    goto :goto_2a

    :cond_17
    new-instance p2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$layout;->item_recommended_common_textview:I

    invoke-virtual {v0, v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V

    :goto_2a
    return-object p2
.end method
