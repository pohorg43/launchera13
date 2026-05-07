.class final Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final synthetic b:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_21

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_21

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_21

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_21

    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    const/4 p0, -0x1

    :goto_22
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

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget v2, v2, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v2, v2

    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_32

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_32
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p0

    if-ge p1, p0, :cond_3f

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_3f
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    const-class p1, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget p1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    const-string p1, ""

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    return v0

    :cond_12
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_31

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1b

    return v0

    :cond_1b
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget v1, v1, Lcom/coui/appcompat/seekbar/COUISeekBar;->L:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->r(IZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return p3

    :cond_31
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget v1, v1, Lcom/coui/appcompat/seekbar/COUISeekBar;->L:I

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->r(IZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return p3
.end method
