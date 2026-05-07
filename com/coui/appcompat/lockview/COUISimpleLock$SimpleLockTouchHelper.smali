.class final Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUISimpleLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SimpleLockTouchHelper"
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final synthetic b:Lcom/coui/appcompat/lockview/COUISimpleLock;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUISimpleLock;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget-object v1, v0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    if-eqz v1, :cond_38

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    if-eqz v2, :cond_38

    const/16 v2, 0x79

    iget v3, v0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget-object v0, v0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const-class p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualViewAt(FF)I
    .registers 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1b

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->k:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1b

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_1b

    iget p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    const/4 p0, -0x2

    return p0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x1

    if-ge p0, v0, :cond_e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_6

    return p3

    :cond_6
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p3
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->a()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 6
    .param p2  # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->a:Landroid/graphics/Rect;

    if-ltz p1, :cond_1d

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1d

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->k:I

    iget p1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1d
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
