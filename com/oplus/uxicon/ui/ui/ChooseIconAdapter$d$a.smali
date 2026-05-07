.class public Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;-><init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$802(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2c
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$800(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$800(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$800(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$800(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$800(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_62
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    check-cast p1, Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$702(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object p1, p1, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object p1, p1, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object p1, p1, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$900(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;

    move-result-object p1

    if-eqz p1, :cond_d5

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1000(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_d5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1100(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_d5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$900(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object v1, v1, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1000(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/uxicon/ui/util/c$a;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d$a;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$1100(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1, p0}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;->a(Lcom/oplus/uxicon/ui/util/c$a;Landroid/graphics/drawable/Drawable;)V

    :cond_d5
    return-void
.end method
