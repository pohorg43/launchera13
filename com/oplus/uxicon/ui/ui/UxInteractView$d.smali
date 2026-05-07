.class public Lcom/oplus/uxicon/ui/ui/UxInteractView$d;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxInteractView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxInteractView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/oplus/uxicon/ui/R$dimen;->ux_preview_icon_title_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object p4, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p4}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$800(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object v1, v0, Lb/h;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$902(Lcom/oplus/uxicon/ui/ui/UxInteractView;I)I

    const/4 v0, 0x0

    if-gtz p4, :cond_30

    iget-object p4, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p4}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$800(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p4

    if-gtz p4, :cond_30

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_88

    if-nez p2, :cond_3e

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_d6

    :cond_3e
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v2}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result v2

    if-gt v1, v2, :cond_70

    int-to-double v1, p4

    iget-object p4, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p4}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p4

    mul-int/2addr p4, p3

    int-to-double p3, p4

    sub-double/2addr v1, p3

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p3}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    int-to-double p3, p3

    div-double/2addr v1, p3

    double-to-int p3, v1

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_d6

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_d6

    :cond_70
    int-to-double v0, p4

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p2}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p2

    mul-int/2addr p2, p3

    int-to-double p2, p2

    sub-double/2addr v0, p2

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double p2, p0

    div-double/2addr v0, p2

    double-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_d6

    :cond_88
    if-nez p2, :cond_8d

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_d6

    :cond_8d
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {v2}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result v2

    if-gt v1, v2, :cond_bf

    int-to-double v1, p4

    iget-object p4, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p4}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p4

    mul-int/2addr p4, p3

    int-to-double p3, p4

    sub-double/2addr v1, p3

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p3}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$900(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    int-to-double p3, p3

    div-double/2addr v1, p3

    double-to-int p3, v1

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_d6

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_d6

    :cond_bf
    int-to-double v0, p4

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p2}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p2

    mul-int/2addr p2, p3

    int-to-double p2, p2

    sub-double/2addr v0, p2

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$d;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->access$1000(Lcom/oplus/uxicon/ui/ui/UxInteractView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double p2, p0

    div-double/2addr v0, p2

    double-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_d6
    :goto_d6
    return-void
.end method
