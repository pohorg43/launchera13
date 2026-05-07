.class public Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityTouchHelper"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/graphics/Rect;

.field public final synthetic c:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIEditText;->getDeleteButtonLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getVirtualViewAt(FF)I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->a()V

    :cond_7
    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_30

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_30

    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_30

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_30

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->d()Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 v0, 0x0

    :cond_30
    return v0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->d()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1e

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIEditText;->d()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, p3, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    return p3
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->c:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIEditText;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_17
    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    if-nez p1, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->a()V

    :cond_20
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->b:Landroid/graphics/Rect;

    goto :goto_28

    :cond_23
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_28
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
