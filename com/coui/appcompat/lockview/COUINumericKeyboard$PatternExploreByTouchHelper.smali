.class final Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final synthetic b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/CharSequence;
    .registers 4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object v1, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->e:Ljava/lang/String;

    return-object p0

    :cond_15
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object v1, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->e:Ljava/lang/String;

    return-object p0

    :cond_2a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_34

    const-class p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->q:[I

    aget p0, p0, p1

    const-string p1, ""

    invoke-static {v0, p0, p1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemCounts()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method public getVirtualViewAt(FF)I
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    sget v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f0:I

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b(FF)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_c

    goto :goto_36

    :cond_c
    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->getColumn()I

    move-result p1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    const/16 p1, 0x9

    if-ne v0, p1, :cond_26

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object v1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result p1

    if-eqz p1, :cond_26

    move v0, p2

    :cond_26
    const/16 p1, 0xb

    if-ne v0, p1, :cond_35

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_36

    :cond_35
    move p2, v0

    :goto_36
    return p2
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->getItemCounts()I

    move-result v1

    if-ge v0, v1, :cond_3e

    const/16 v1, 0x9

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object v3, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_1e
    const/16 v1, 0xb

    if-ne v0, v1, :cond_34

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object v3, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3e
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    const/16 p3, 0x10

    if-eq p2, p3, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    sget p3, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f0:I

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->a(I)V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->a(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_21
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->a(I)Ljava/lang/CharSequence;

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

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->a:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_33

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    div-int/lit8 v2, p1, 0x3

    rem-int/lit8 p1, p1, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t(II)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget v2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget p1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g(I)F

    move-result p1

    float-to-int p1, p1

    goto :goto_34

    :cond_33
    move p1, v1

    :goto_34
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;->b:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->j:I

    sub-int v2, v1, p0

    iput v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
