.class public Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroid/view/View;)V
    .registers 4
    .param p1  # Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/oplus/uxicon/ui/R$id;->iv_selectable_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1, p2}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$702(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Z)V

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p2

    new-instance v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;

    invoke-direct {v0, p0, p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;-><init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
