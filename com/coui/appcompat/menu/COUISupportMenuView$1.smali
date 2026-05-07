.class Lcom/coui/appcompat/menu/COUISupportMenuView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/menu/COUISupportMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/menu/COUISupportMenuView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/menu/COUISupportMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Rect;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/menu/COUISupportMenuView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget v2, v1, Lcom/coui/appcompat/menu/COUISupportMenuView;->n:I

    div-int/lit8 v3, v2, 0x2

    iget v4, v1, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    add-int/2addr v2, v4

    iget v4, v1, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    rem-int v4, p1, v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {v1}, Lcom/coui/appcompat/menu/COUISupportMenuView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget v3, v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    iget v4, v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->n:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    add-int/2addr v4, v3

    iget v2, v2, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    rem-int v2, p1, v2

    mul-int/2addr v2, v4

    add-int/2addr v2, v5

    sub-int v4, v1, v2

    :cond_35
    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget v1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->e:I

    add-int/2addr v1, v4

    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->j:I

    iget v3, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->a:I

    div-int v5, p1, v3

    if-ge p1, v3, :cond_43

    goto :goto_45

    :cond_43
    iget v2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->p:I

    :goto_45
    iget p1, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->d:I

    add-int/2addr p1, v2

    iget p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->l:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p1, p0

    invoke-virtual {p2, v4, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 1

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public e()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->m:I

    return p0
.end method

.method public f(IIZ)V
    .registers 4

    iget-object p2, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget-object p2, p2, Lcom/coui/appcompat/menu/COUISupportMenuView;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/menu/COUISupportMenuItem;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->s:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method public g(FF)I
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    sget-object v0, Lcom/coui/appcompat/menu/COUISupportMenuView;->u:[I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/menu/COUISupportMenuView;->b(FF)I

    move-result p0

    return p0
.end method

.method public h()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView$1;->a:Lcom/coui/appcompat/menu/COUISupportMenuView;

    iget p0, p0, Lcom/coui/appcompat/menu/COUISupportMenuView;->f:I

    return p0
.end method
