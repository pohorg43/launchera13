.class public final Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/pagepreview/PagePreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TwoPanelPagePreviewVH"
.end annotation


# instance fields
.field private mTwoPanelPreviewParent:Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

.field private mTwoPanelView1:Lcom/android/launcher/pagepreview/PagePreviewItemView;

.field private mTwoPanelView2:Lcom/android/launcher/pagepreview/PagePreviewItemView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->view:Landroid/view/View;

    const v0, 0x7f0a03b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.findViewById(R.id.page_preview_item1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView1:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->view:Landroid/view/View;

    const v0, 0x7f0a03ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.findViewById(R.id.page_preview_item2)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView2:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->view:Landroid/view/View;

    const v0, 0x7f0a059c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.findViewById(R.id.two_panel_preview_parent)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelPreviewParent:Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    return-void
.end method


# virtual methods
.method public final correctTwoPanelVhSelected(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelPreviewParent:Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;->forceSetSelectedWithNoAnimWhenVHRecycled(Z)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView1:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setTwoPanelSelectedAndStroke(ZZ)V

    return-void
.end method

.method public final getMTwoPanelPreviewParent()Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelPreviewParent:Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    return-object p0
.end method

.method public final getMTwoPanelView1()Lcom/android/launcher/pagepreview/PagePreviewItemView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView1:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0
.end method

.method public final getMTwoPanelView2()Lcom/android/launcher/pagepreview/PagePreviewItemView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView2:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->view:Landroid/view/View;

    return-object p0
.end method

.method public final setMTwoPanelPreviewParent(Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelPreviewParent:Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    return-void
.end method

.method public final setMTwoPanelView1(Lcom/android/launcher/pagepreview/PagePreviewItemView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView1:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-void
.end method

.method public final setMTwoPanelView2(Lcom/android/launcher/pagepreview/PagePreviewItemView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView2:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-void
.end method

.method public final setTwoPanelVhSelected(ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelPreviewParent:Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    invoke-virtual {v0, v2}, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView1:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setTwoPanelSelectedAndStroke(ZZ)V

    iget-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView2:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1f

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->mTwoPanelView2:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->setTwoPanelSelectedAndStroke(ZZ)V

    :cond_1f
    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$TwoPanelPagePreviewVH;->view:Landroid/view/View;

    return-void
.end method
