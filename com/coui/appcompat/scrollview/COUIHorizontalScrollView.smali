.class public Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView$COUISavedState;
    }
.end annotation


# instance fields
.field public E:Z

.field public F:Z

.field public G:Z

.field public a:I

.field public b:J

.field public final c:Landroid/graphics/Rect;

.field public d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field public e:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field public f:I

.field public g:Z

.field public h:Landroid/view/View;

.field public i:Z

.field public j:Landroid/view/VelocityTracker;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:J

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->g:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->l:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->x:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->y:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->F:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->G:Z

    new-instance v2, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v3, 0x404ccccd  # 3.2f

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->d(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->setEnableFlingSpeedIncrease(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->m:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->n:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->o:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->p:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->q:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a:I

    invoke-static {v3, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->r:F

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->G:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_22
    return v1
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j(II)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_33

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_6b

    :cond_33
    const/16 v1, 0x11

    const/16 v4, 0x42

    if-ne p1, v1, :cond_44

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v2, :cond_44

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    goto :goto_61

    :cond_44
    if-ne p1, v4, :cond_61

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_61

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v1, v6

    if-ge v1, v2, :cond_61

    move v2, v1

    :cond_61
    :goto_61
    if-nez v2, :cond_64

    return v3

    :cond_64
    if-ne p1, v4, :cond_67

    goto :goto_68

    :cond_67
    neg-int v2, v2

    :goto_68
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a(I)V

    :goto_6b
    const/4 p1, 0x1

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e(Landroid/view/View;I)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    :cond_8a
    return p1
.end method

.method public final b(ZII)Landroid/view/View;
    .registers 15

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_d
    if-ge v3, v0, :cond_53

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    const/4 v8, 0x1

    if-ge p2, v7, :cond_50

    if-ge v6, p3, :cond_50

    if-ge p2, v6, :cond_28

    if-ge v7, p3, :cond_28

    move v9, v8

    goto :goto_29

    :cond_28
    move v9, v1

    :goto_29
    if-nez v2, :cond_2e

    move-object v2, v5

    move v4, v9

    goto :goto_50

    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v6, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v7, v6, :cond_40

    :cond_3e
    move v6, v8

    goto :goto_41

    :cond_40
    move v6, v1

    :goto_41
    if-eqz v4, :cond_48

    if-eqz v9, :cond_50

    if-eqz v6, :cond_50

    goto :goto_4f

    :cond_48
    if-eqz v9, :cond_4d

    move-object v2, v5

    move v4, v8

    goto :goto_50

    :cond_4d
    if-eqz v6, :cond_50

    :goto_4f
    move-object v2, v5

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_53
    return-object v2
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public computeScroll()V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v11

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v2}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v2

    if-ne v0, v1, :cond_20

    if-eq v11, v2, :cond_40

    :cond_20
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v6

    sub-int v3, v1, v0

    sub-int v4, v2, v11

    const/4 v7, 0x0

    iget v8, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->q:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v10}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v11}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    :cond_40
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_51

    :cond_4a
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    :cond_51
    :goto_51
    return-void
.end method

.method public final d()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p0

    if-le v0, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final e(Landroid/view/View;I)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-lt p1, v0, :cond_27

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    add-int/2addr p0, p2

    if-gt p1, p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v4

    if-ge v3, v1, :cond_23

    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    const/16 v3, 0x42

    if-nez v1, :cond_49

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_35

    const/4 p1, 0x0

    :cond_35
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_48

    if-eq p1, p0, :cond_48

    invoke-virtual {p1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_48

    move v0, v2

    :cond_48
    return v0

    :cond_49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v4, 0x11

    if-eq v1, v2, :cond_7d

    const/16 v2, 0x16

    if-eq v1, v2, :cond_6d

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_62

    goto :goto_8c

    :cond_62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_69

    move v3, v4

    :cond_69
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->pageScroll(I)Z

    goto :goto_8c

    :cond_6d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_78

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_8c

    :cond_78
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_8c

    :cond_7d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_88

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_8c

    :cond_88
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fullScroll(I)Z

    move-result v0

    :cond_8c
    :goto_8c
    return v0
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    if-ne v1, v2, :cond_2d

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->u:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2d
    return-void
.end method

.method public fling(I)V
    .registers 16

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->z:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_87

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v12, v0, 0x2

    const/4 v13, 0x0

    move v6, p1

    invoke-interface/range {v3 .. v13}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    const/4 v2, 0x1

    if-nez v0, :cond_46

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    :cond_46
    if-lez p1, :cond_49

    move v1, v2

    :cond_49
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    if-eqz p1, :cond_71

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v4, :cond_71

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, v3, :cond_71

    move-object v0, p1

    goto :goto_75

    :cond_71
    invoke-virtual {p0, v1, v3, v4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->b(ZII)Landroid/view/View;

    move-result-object v0

    :goto_75
    if-nez v0, :cond_78

    move-object v0, p0

    :cond_78
    if-eq v0, p1, :cond_84

    if-eqz v1, :cond_7f

    const/16 p1, 0x42

    goto :goto_81

    :cond_7f
    const/16 p1, 0x11

    :goto_81
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_84
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_87
    return-void
.end method

.method public fullScroll(I)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p1, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    move v1, v0

    :goto_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iput v2, v3, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_2d
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i(III)Z

    move-result p0

    return p0
.end method

.method public final g()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->G:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->performHapticFeedback(I)Z

    :cond_9
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getScrollableRange()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public final i(III)Z
    .registers 10

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-ne p1, v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v2

    :goto_12
    invoke-virtual {p0, v4, p2, p3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->b(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_19

    move-object v5, p0

    :cond_19
    if-lt p2, v1, :cond_1e

    if-gt p3, v0, :cond_1e

    goto :goto_28

    :cond_1e
    if-eqz v4, :cond_22

    sub-int/2addr p2, v1

    goto :goto_24

    :cond_22
    sub-int p2, p3, v0

    :goto_24
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a(I)V

    move v2, v3

    :goto_28
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_31

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_31
    return v2
.end method

.method public invalidateParentIfNeeded()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public isFillViewport()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->k:Z

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->l:Z

    return p0
.end method

.method public final j(II)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_61

    :cond_4b
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz v0, :cond_5e

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    :cond_5e
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :goto_61
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->b:J

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    goto :goto_5f

    :cond_9
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-nez v0, :cond_5f

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_3b

    :cond_24
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_3b

    :cond_2b
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->r:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    if-gez v0, :cond_51

    const/4 v2, 0x0

    goto :goto_55

    :cond_51
    if-le v0, v2, :cond_54

    goto :goto_55

    :cond_54
    move v2, v0

    :goto_55
    if-eq v2, v3, :cond_5f

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result p1

    invoke-super {p0, v2, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return v1

    :cond_5f
    :goto_5f
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-eqz v3, :cond_d

    return v2

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v2

    :cond_14
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_c3

    const/4 v4, -0x1

    if-eq v0, v2, :cond_a3

    if-eq v0, v1, :cond_52

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    goto/16 :goto_166

    :cond_29
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->u:I

    goto/16 :goto_166

    :cond_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->u:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    goto/16 :goto_166

    :cond_52
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    if-ne v0, v4, :cond_58

    goto/16 :goto_166

    :cond_58
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_7b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIHorizontalScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    :cond_7b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->m:I

    if-le v1, v3, :cond_166

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_166

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_166

    :cond_a3
    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_166

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_166

    :cond_c3
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v1, 0x0

    if-eqz v0, :cond_cd

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v0

    goto :goto_ce

    :cond_cd
    move v0, v1

    :goto_ce
    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->z:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x44bb8000  # 1500.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_dd

    move v4, v2

    goto :goto_de

    :cond_dd
    move v4, v3

    :goto_de
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_f4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a0000  # 250.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f4

    if-eqz v4, :cond_f4

    move v0, v2

    goto :goto_f5

    :cond_f4
    move v0, v3

    :goto_f5
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->v:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->w:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->t:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_137

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v1, v6, :cond_137

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v1, v6, :cond_137

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v4

    if-lt v0, v1, :cond_137

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_137

    move v1, v2

    goto :goto_138

    :cond_137
    move v1, v3

    :goto_138
    if-nez v1, :cond_140

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->h()V

    goto :goto_166

    :cond_140
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->u:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_155

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    goto :goto_158

    :cond_155
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_158
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    :cond_166
    :goto_166
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    return p0
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->k:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_78

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4c

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5d

    :cond_4c
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v3

    :goto_5d
    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v1, p0, :cond_78

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v3, v0}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_78
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_c

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_96

    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz p3, :cond_2a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p3

    if-lt p1, p3, :cond_22

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p3

    goto :goto_23

    :cond_22
    move p3, p4

    :goto_23
    sub-int/2addr p1, p3

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a:I

    invoke-static {p3, p1, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->a(III)I

    move-result p1

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_52

    invoke-virtual {p0, p4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollableRange()I

    move-result v0

    if-gt p3, v0, :cond_52

    :cond_46
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_52
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p3

    if-ltz p3, :cond_68

    if-gez p1, :cond_68

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz p3, :cond_68

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->g()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->q:I

    invoke-virtual {p3, p1, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_68
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_8a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p3

    if-le p1, p3, :cond_8a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz p3, :cond_8a

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->g()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->q:I

    invoke-virtual {p3, p1, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_8a
    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->b(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    :cond_96
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    const/16 p1, 0x42

    goto :goto_b

    :cond_7
    if-ne p1, v0, :cond_b

    const/16 p1, 0x11

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1f

    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    :goto_1f
    const/4 v2, 0x0

    if-nez v1, :cond_23

    return v2

    :cond_23
    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e(Landroid/view/View;I)Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_2b

    return v2

    :cond_2b
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->p:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->q:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_42

    if-ne p0, p1, :cond_20

    goto :goto_42

    :cond_20
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->a(I)V

    :cond_42
    :goto_42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_278

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v0, v2, :cond_f6

    if-eq v0, v3, :cond_52

    const/4 v3, 0x3

    if-eq v0, v3, :cond_25

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    goto/16 :goto_2b2

    :cond_20
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f(Landroid/view/MotionEvent;)V

    goto/16 :goto_2b2

    :cond_25
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-eqz p1, :cond_2b2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2b2

    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_49
    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->h()V

    goto/16 :goto_2b2

    :cond_52
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v1, :cond_61

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->F:Z

    if-eqz v1, :cond_61

    check-cast v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->f()V

    :cond_61
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_7a

    const-string p1, "Invalid pointerId="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    const-string v0, " in onTouchEvent"

    const-string v1, "COUIHorizontalScrollView"

    invoke-static {p1, p0, v0, v1}, Landroidx/core/widget/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b2

    :cond_7a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    sub-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-nez v1, :cond_a2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->m:I

    if-le v1, v3, :cond_a2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_97
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-lez v0, :cond_9f

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->m:I

    sub-int/2addr v0, v1

    goto :goto_a2

    :cond_9f
    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->m:I

    add-int/2addr v0, v1

    :cond_a2
    :goto_a2
    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-eqz v1, :cond_2b2

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    if-gez p1, :cond_bd

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->p:I

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    goto :goto_d6

    :cond_bd
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v1

    if-le p1, v1, :cond_d6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->p:I

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    :cond_d6
    :goto_d6
    move v4, v0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->p:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    if-eqz p1, :cond_2b2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->hasNestedScrollingParent()Z

    move-result p1

    if-nez p1, :cond_2b2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2b2

    :cond_f6
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d()Z

    move-result v0

    iget-boolean v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->x:Z

    if-eqz v5, :cond_104

    iget-boolean v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->v:Z

    if-eqz v5, :cond_104

    move v5, v2

    goto :goto_105

    :cond_104
    move v5, v1

    :goto_105
    iget-boolean v6, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->y:Z

    if-eqz v6, :cond_111

    iget-boolean v6, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->w:Z

    if-eqz v6, :cond_111

    if-eqz v0, :cond_111

    move v0, v2

    goto :goto_112

    :cond_111
    move v0, v1

    :goto_112
    if-nez v5, :cond_116

    if-eqz v0, :cond_1a7

    :cond_116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->u:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    float-to-int v0, v0

    mul-int/2addr v0, v0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->t:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x64

    cmp-long v5, v5, v7

    if-gez v5, :cond_139

    const/16 v5, 0xa

    if-ge v0, v5, :cond_139

    move v0, v2

    goto :goto_13a

    :cond_139
    move v0, v1

    :goto_13a
    if-nez v0, :cond_13d

    goto :goto_1a7

    :cond_13d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_147
    if-ltz v5, :cond_1a7

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_159

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1a4

    :cond_159
    invoke-virtual {v6, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v7, :cond_1a4

    new-array v7, v3, [I

    fill-array-data v7, :array_2b4

    move v9, v1

    :goto_197
    if-ge v9, v3, :cond_1a4

    aget v10, v7, v9

    invoke-virtual {v8, v10}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_197

    :cond_1a4
    add-int/lit8 v5, v5, -0x1

    goto :goto_147

    :cond_1a7
    :goto_1a7
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    if-eqz p1, :cond_25d

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c()V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->o:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->n:I

    if-le v0, v3, :cond_228

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    neg-int v3, p1

    int-to-float v5, v3

    invoke-interface {v0, v5}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityX(F)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_1f7

    const/16 v0, -0x5dc

    if-le p1, v0, :cond_1f3

    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_242

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_242

    :cond_1f3
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fling(I)V

    goto :goto_242

    :cond_1f7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v5

    if-le v0, v5, :cond_224

    const/16 v0, 0x5dc

    if-ge p1, v0, :cond_220

    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_242

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_242

    :cond_220
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fling(I)V

    goto :goto_242

    :cond_224
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fling(I)V

    goto :goto_242

    :cond_228
    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_242

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_242
    :goto_242
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    if-ltz p1, :cond_252

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-le p1, v0, :cond_255

    :cond_252
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->g()V

    :cond_255
    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->h()V

    goto :goto_2b2

    :cond_25d
    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_2b2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_2b2

    :cond_278
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_27f

    return v1

    :cond_27f
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_290

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_290

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_290
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_2a3

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    if-eqz v0, :cond_2a3

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->E:Z

    :cond_2a3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->f:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->u:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->s:I

    :cond_2b2
    :goto_2b2
    return v2

    nop

    :array_2b4
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_f

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    :cond_f
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 10

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onOverScrolled(IIZZ)V

    return p1
.end method

.method public pageScroll(I)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne p1, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    move v1, v0

    :goto_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_47

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v1, v3, :cond_47

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_47

    :cond_36
    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_47

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->i(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->g:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_25

    :cond_23
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->h:Landroid/view/View;

    :cond_25
    :goto_25
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    move v0, p2

    :goto_1f
    if-eqz v0, :cond_2a

    if-eqz p3, :cond_27

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->j(II)V

    :cond_2a
    :goto_2a
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->h()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->g:Z

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->c(Z)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->k:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->k:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->F:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->y:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->x:Z

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->l:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    return-void
.end method
