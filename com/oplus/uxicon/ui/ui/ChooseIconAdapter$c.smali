.class public Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroid/view/View;Z)V
    .registers 6

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$c;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p3, :cond_23

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$c;->a:Landroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1200(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oplus/uxicon/ui/R$dimen;->footer_view_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-static {p1, p3}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1302(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$c;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1300(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroid/view/View;ZLcom/oplus/uxicon/ui/ui/ChooseIconAdapter$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$c;-><init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroid/view/View;Z)V

    return-void
.end method
