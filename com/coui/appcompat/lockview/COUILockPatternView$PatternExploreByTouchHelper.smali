.class final Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/coui/appcompat/lockview/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->a:Landroid/graphics/Rect;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->b:Landroid/util/SparseArray;

    const/4 p1, 0x1

    :goto_14
    const/16 p2, 0xa

    if-ge p1, p2, :cond_29

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->b:Landroid/util/SparseArray;

    new-instance v0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_29
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/CharSequence;
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_cell_added_verbose:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Z
    .registers 3

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1a

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1a

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 v0, p1, 0x3

    rem-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    aget-object p0, p0, v0

    aget-boolean p0, p0, p1

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public getVirtualViewAt(FF)I
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    sget v1, Lcom/coui/appcompat/lockview/COUILockPatternView;->R:I

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/lockview/COUILockPatternView;->h(F)I

    move-result p2

    const/high16 v0, -0x80000000

    if-gez p2, :cond_d

    goto :goto_26

    :cond_d
    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->f(F)I

    move-result p1

    if-gez p1, :cond_16

    goto :goto_26

    :cond_16
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    if-eqz p0, :cond_26

    move v0, p2

    :cond_26
    :goto_26
    return v0
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

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-boolean p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x1

    :goto_8
    const/16 v0, 0xa

    if-ge p0, v0, :cond_16

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_16
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

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_area:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_16
    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    if-eqz p0, :cond_13

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->a:Ljava/lang/CharSequence;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 8
    .param p2  # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-boolean v0, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->b(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    :cond_2a
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->a:Landroid/graphics/Rect;

    div-int/lit8 v1, p1, 0x3

    rem-int/lit8 p1, p1, 0x3

    iget-object v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    sget v3, Lcom/coui/appcompat/lockview/COUILockPatternView;->R:I

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;->c:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->s:F

    iget v3, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->q:F

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000  # 0.5f

    mul-float/2addr v2, v4

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->r:F

    mul-float/2addr p0, v3

    mul-float/2addr p0, v4

    sub-float v3, p1, p0

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    sub-float p0, v1, v2

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v2

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
