.class public Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/oplus/uxicon/ui/R$id;->iv_theme:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    sget v0, Lcom/oplus/uxicon/ui/R$id;->tv_theme:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/oplus/uxicon/ui/R$dimen;->list_text_size_small:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {p2, p1, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method
