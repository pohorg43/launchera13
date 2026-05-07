.class Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/sidepane/COUISidePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragHelperCallback"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p3}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result p3

    if-eqz p3, :cond_3a

    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v0

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p3, p1

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    sub-int p0, p3, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_50

    :cond_3a
    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p3

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, p1

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    add-int/2addr p0, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_50
    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    return p0
.end method

.method public onEdgeDragStarted(II)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p1, p0, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->i()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v1, 0x20

    if-nez v0, :cond_27

    iget-object v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    goto :goto_31

    :cond_27
    iget-object v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    :cond_31
    :goto_31
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p3, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    if-nez p3, :cond_a

    const/4 p0, 0x0

    iput p0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int p2, p1, p2

    :cond_21
    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e(I)V

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v0

    iget p3, p3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    cmpg-float p3, p2, v2

    if-ltz p3, :cond_2a

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2f

    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2f

    :cond_2a
    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    add-int/2addr v0, p2

    :cond_2f
    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    goto :goto_5c

    :cond_40
    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    iget p3, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v0

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_57

    if-nez p2, :cond_5c

    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5c

    :cond_57
    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    add-int/2addr p3, p2

    :cond_5c
    :goto_5c
    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p2, p2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->b:Z

    return p0
.end method
