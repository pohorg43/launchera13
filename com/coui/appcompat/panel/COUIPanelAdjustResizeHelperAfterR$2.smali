.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;IILandroid/view/View;Landroid/view/View;)V
    .registers 7

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->a:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->b:I

    iput p4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->c:I

    iput-object p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->b:I

    const/4 v2, 0x0

    if-lez v1, :cond_2e

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->c:I

    if-lt p1, v1, :cond_2e

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->d:Landroid/view/View;

    if-eqz v3, :cond_2e

    sub-int/2addr p1, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v3, v2, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    move p1, v1

    :cond_2e
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->a:Landroid/view/View;

    instance-of v3, v1, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    if-eqz v3, :cond_41

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_41

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4d

    :cond_41
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4d

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->a:Landroid/view/View;

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v0, 0x3

    if-eqz p1, :cond_60

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->e:Landroid/view/View;

    sget p1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    goto :goto_65

    :cond_60
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;->e:Landroid/view/View;

    invoke-static {p0, v0, v2}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    :cond_65
    :goto_65
    return-void
.end method
