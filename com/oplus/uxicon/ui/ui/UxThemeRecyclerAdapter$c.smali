.class public Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->onBindViewHolder(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

.field public final synthetic c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;ILcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$100(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$200(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->startMoreIconActivity(Landroid/content/Context;)V

    goto :goto_2b

    :cond_26
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/view/View;)V

    :goto_2b
    return-void

    :cond_2c
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$400(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)La/b;

    move-result-object p1

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    invoke-interface {p1, v0}, La/b;->onThemeSelect(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$500(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$500(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$500(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b()V

    :cond_51
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$502(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_75
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$602(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_ad

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$color;->ux_text_black_alpha_50:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ad
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->b:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$702(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$700(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$color;->ux_txt_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->c:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;->a:I

    invoke-static {p1, p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$802(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;I)I

    return-void
.end method
