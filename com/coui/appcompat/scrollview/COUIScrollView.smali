.class public Lcom/coui/appcompat/scrollview/COUIScrollView;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;
    }
.end annotation


# instance fields
.field public E:I

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:F

.field public K:Z

.field public L:Z

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

.field public final t:[I

.field public final u:[I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

.field public z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->a:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->g:Z

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->l:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->u:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->H:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->I:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->K:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->L:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->a:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->g:Z

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->l:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->u:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->H:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->I:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->K:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->L:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->c(Landroid/content/Context;)V

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->L:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static f(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->f(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private getScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

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

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->l(II)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->g(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->a(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_74

    :cond_37
    const/16 v1, 0x21

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    goto :goto_6a

    :cond_48
    if-ne p1, v4, :cond_6a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    if-ge v1, v2, :cond_6a

    move v2, v1

    :cond_6a
    :goto_6a
    if-nez v2, :cond_6d

    return v3

    :cond_6d
    if-ne p1, v4, :cond_70

    goto :goto_71

    :cond_70
    neg-int v2, v2

    :goto_71
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->a(I)V

    :goto_74
    const/4 p1, 0x1

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->g(Landroid/view/View;II)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_97

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    :cond_97
    return p1
.end method

.method public final b(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_8

    if-lez p1, :cond_15

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_17

    if-gez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fling(I)V

    :cond_28
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v1, 0x4009999a  # 2.15f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->d(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->setEnableFlingSpeedIncrease(Z)V

    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->m:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->n:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->o:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->p:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->q:I

    invoke-static {v1, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->r:F

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->a:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method public computeScroll()V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v1

    if-ne v4, v0, :cond_20

    if-eq v5, v1, :cond_31

    :cond_20
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v7

    sub-int v2, v0, v4

    sub-int v3, v1, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->q:I

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/coui/appcompat/scrollview/COUIScrollView;->overScrollBy(IIIIIIIIZ)Z

    :cond_31
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_42

    :cond_3b
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    :cond_42
    :goto_42
    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public final e()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

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

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v4

    if-ge v3, v1, :cond_23

    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    const/16 v3, 0x82

    if-nez v1, :cond_58

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_57

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_57

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_44

    const/4 p1, 0x0

    :cond_44
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_57

    if-eq p1, p0, :cond_57

    invoke-virtual {p1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_57

    move v0, v2

    :cond_57
    return v0

    :cond_58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    const/16 v4, 0x21

    if-eq v1, v2, :cond_8c

    const/16 v2, 0x14

    if-eq v1, v2, :cond_7c

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_71

    goto :goto_9b

    :cond_71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_78

    move v3, v4

    :cond_78
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->pageScroll(I)Z

    goto :goto_9b

    :cond_7c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_87

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_9b

    :cond_87
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_9b

    :cond_8c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_97

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_9b

    :cond_97
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fullScroll(I)Z

    move-result v0

    :cond_9b
    :goto_9b
    return v0
.end method

.method public fling(I)V
    .registers 16

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->J:F

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    move v7, p1

    invoke-interface/range {v3 .. v13}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-nez p1, :cond_41

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    :cond_41
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_44
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_34

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_34
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->k(III)Z

    move-result p0

    return p0
.end method

.method public final g(Landroid/view/View;II)Z
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public getScrollableRange()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final h(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    if-ne v1, v2, :cond_2d

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->E:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2d
    return-void
.end method

.method public final i()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->L:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->performHapticFeedback(I)Z

    :cond_9
    return-void
.end method

.method public invalidateParentIfNeeded()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public isFillViewport()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->k:Z

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->l:Z

    return p0
.end method

.method public final j()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public final k(III)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v8, 0x21

    if-ne v1, v8, :cond_17

    const/4 v8, 0x1

    goto :goto_18

    :cond_17
    const/4 v8, 0x0

    :goto_18
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_24
    if-ge v12, v10, :cond_6c

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v2, v6, :cond_69

    if-ge v15, v3, :cond_69

    if-ge v2, v15, :cond_3f

    if-ge v6, v3, :cond_3f

    const/16 v16, 0x1

    goto :goto_41

    :cond_3f
    const/16 v16, 0x0

    :goto_41
    if-nez v11, :cond_47

    move-object v11, v14

    move/from16 v13, v16

    goto :goto_69

    :cond_47
    if-eqz v8, :cond_4f

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v15, v7, :cond_57

    :cond_4f
    if-nez v8, :cond_59

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v6, v7, :cond_59

    :cond_57
    const/4 v6, 0x1

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    :goto_5a
    if-eqz v13, :cond_61

    if-eqz v16, :cond_69

    if-eqz v6, :cond_69

    goto :goto_68

    :cond_61
    if-eqz v16, :cond_66

    move-object v11, v14

    const/4 v13, 0x1

    goto :goto_69

    :cond_66
    if-eqz v6, :cond_69

    :goto_68
    move-object v11, v14

    :cond_69
    :goto_69
    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    :cond_6c
    if-nez v11, :cond_6f

    move-object v11, v0

    :cond_6f
    if-lt v2, v5, :cond_75

    if-gt v3, v4, :cond_75

    const/4 v6, 0x0

    goto :goto_7f

    :cond_75
    if-eqz v8, :cond_79

    sub-int/2addr v2, v5

    goto :goto_7b

    :cond_79
    sub-int v2, v3, v4

    :goto_7b
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->a(I)V

    const/4 v6, 0x1

    :goto_7f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v11, v0, :cond_88

    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_88
    return v6
.end method

.method public final l(II)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-interface {p2, v2, v0, v1, p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_61

    :cond_4b
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz v0, :cond_5e

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    :cond_5e
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    :goto_61
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->b:J

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    :cond_a
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    goto :goto_4d

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_27

    :cond_17
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->r:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int v0, v2, v0

    if-gez v0, :cond_3e

    const/4 v1, 0x0

    goto :goto_42

    :cond_3e
    if-le v0, v1, :cond_41

    goto :goto_42

    :cond_41
    move v1, v0

    :goto_42
    if-eq v1, v2, :cond_4d

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_4d
    :goto_4d
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-eqz v3, :cond_d

    return v2

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v2

    :cond_14
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_bd

    const/4 v4, -0x1

    if-eq v0, v2, :cond_97

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_97

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    goto/16 :goto_170

    :cond_29
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->h(Landroid/view/MotionEvent;)V

    goto/16 :goto_170

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->E:I

    goto/16 :goto_170

    :cond_37
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    if-ne v0, v4, :cond_3d

    goto/16 :goto_170

    :cond_3d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_60

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_170

    :cond_60
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->m:I

    if-le v4, v5, :cond_170

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v1, v4

    if-nez v1, :cond_170

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->d()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    if-nez p1, :cond_8c

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    :cond_8c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_170

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_170

    :cond_97
    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->j()V

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_b8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_170

    :cond_bd
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v4, 0x0

    if-eqz v0, :cond_c7

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    goto :goto_c8

    :cond_c7
    move v0, v4

    :goto_c8
    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->J:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x44bb8000  # 1500.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d7

    move v5, v2

    goto :goto_d8

    :cond_d7
    move v5, v3

    :goto_d8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v6, v4

    if-lez v4, :cond_ee

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x437a0000  # 250.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_ee

    if-eqz v5, :cond_ee

    move v0, v2

    goto :goto_ef

    :cond_ee
    move v0, v3

    :goto_ef
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->F:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->G:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->z:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_131

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    if-lt v0, v7, :cond_131

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v0, v7, :cond_131

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v4, v5, :cond_131

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_131

    move v4, v2

    goto :goto_132

    :cond_131
    move v4, v3

    :goto_132
    if-nez v4, :cond_13a

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->j()V

    goto :goto_170

    :cond_13a
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->E:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_14f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    goto :goto_152

    :cond_14f
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_152
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-eqz p1, :cond_16d

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    if-nez p1, :cond_16d

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    :cond_16d
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    :cond_170
    :goto_170
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->g:Z

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    if-eqz p2, :cond_15

    invoke-static {p2, p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->f(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToDescendant(Landroid/view/View;)V

    :cond_15
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result p4

    if-nez p4, :cond_5c

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->y:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    if-eqz p4, :cond_29

    iget p4, p4, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;->a:I

    invoke-static {p0, p4}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->y:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    :cond_29
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_38

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_39

    :cond_38
    move p2, p1

    :goto_39
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_53

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    goto :goto_5c

    :cond_53
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p2

    if-gez p2, :cond_5c

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    :cond_5c
    :goto_5c
    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p2}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p4

    if-lez p4, :cond_c0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge p5, v0, :cond_91

    if-gez p2, :cond_8a

    goto :goto_91

    :cond_8a
    add-int v1, p5, p2

    if-le v1, v0, :cond_92

    sub-int p2, v0, p5

    goto :goto_92

    :cond_91
    :goto_91
    move p2, p1

    :cond_92
    :goto_92
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    if-ge p5, p4, :cond_b1

    if-gez p3, :cond_a9

    goto :goto_b1

    :cond_a9
    add-int p1, p5, p3

    if-le p1, p4, :cond_b0

    sub-int p1, p4, p5

    goto :goto_b1

    :cond_b0
    move p1, p3

    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p3

    if-ne p2, p3, :cond_bd

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-eq p1, p3, :cond_c0

    :cond_bd
    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollTo(II)V

    :cond_c0
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->k:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_78

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5d

    :cond_4c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    :goto_5d
    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, p0, :cond_78

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v2, v0}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->measure(II)V

    :cond_78
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_8

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->b(I)V

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onOverScrolled(IIZZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_93

    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->e()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz p3, :cond_2a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    if-lt p2, p3, :cond_22

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    goto :goto_23

    :cond_22
    move p3, p4

    :goto_23
    sub-int/2addr p2, p3

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->a:I

    invoke-static {p3, p2, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->a(III)I

    move-result p2

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_52

    invoke-virtual {p0, p4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollableRange()I

    move-result v0

    if-gt p3, v0, :cond_52

    :cond_46
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_52
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-ltz p3, :cond_68

    if-gez p2, :cond_68

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz p3, :cond_68

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->i()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->q:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_68
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_8a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    if-le p2, p3, :cond_8a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz p3, :cond_8a

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->i()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->q:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_8a
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    :cond_93
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    const/16 p1, 0x82

    goto :goto_b

    :cond_7
    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

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
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->g(Landroid/view/View;II)Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_2f

    return v2

    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_12

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_12
    check-cast p1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->y:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_13

    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;->a:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->a:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    if-ne p0, p1, :cond_1c

    goto :goto_36

    :cond_1c
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->g(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->a(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->d()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    :cond_14
    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    int-to-float v3, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v13, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_33c

    const-string v4, "COUIScrollView"

    const/4 v5, -0x1

    if-eq v1, v13, :cond_18c

    if-eq v1, v3, :cond_8e

    const/4 v3, 0x3

    if-eq v1, v3, :cond_58

    const/4 v2, 0x5

    if-eq v1, v2, :cond_43

    const/4 v2, 0x6

    if-eq v1, v2, :cond_31

    goto/16 :goto_37a

    :cond_31
    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->h(Landroid/view/MotionEvent;)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    goto/16 :goto_37a

    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->E:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    goto/16 :goto_37a

    :cond_58
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-eqz v0, :cond_37a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_37a

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_7f
    iput v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->j()V

    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    if-eqz v0, :cond_37a

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    goto/16 :goto_37a

    :cond_8e
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v3, :cond_9d

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->K:Z

    if-eqz v3, :cond_9d

    check-cast v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->f()V

    :cond_9d
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v5, :cond_b4

    const-string v0, "Invalid pointerId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    const-string v2, " in onTouchEvent"

    invoke-static {v0, v1, v2, v4}, Landroidx/core/widget/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37a

    :cond_b4
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    sub-int/2addr v1, v0

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->u:[I

    iget-object v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    invoke-virtual {v10, v2, v1, v3, v4}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_dc

    iget-object v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->u:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    iget-object v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    aget v2, v2, v13

    int-to-float v2, v2

    invoke-virtual {v11, v12, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    aget v3, v3, v13

    add-int/2addr v2, v3

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    :cond_dc
    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-nez v2, :cond_fc

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->m:I

    if-le v2, v3, :cond_fc

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_f1

    invoke-interface {v2, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f1
    iput-boolean v13, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-lez v1, :cond_f9

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->m:I

    sub-int/2addr v1, v2

    goto :goto_fc

    :cond_f9
    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->m:I

    add-int/2addr v1, v2

    :cond_fc
    :goto_fc
    move v14, v1

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-eqz v1, :cond_37a

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_124

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->p:I

    invoke-static {v14, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    goto :goto_13d

    :cond_124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_13f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->p:I

    invoke-static {v14, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    :goto_13d
    move v2, v0

    goto :goto_140

    :cond_13f
    move v2, v14

    :goto_140
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->p:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/scrollview/COUIScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_15e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_15e

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_15e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v15

    sub-int v4, v14, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_37a

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    aget v2, v1, v13

    sub-int/2addr v0, v2

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    aget v0, v1, v13

    int-to-float v0, v0

    invoke-virtual {v11, v12, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->t:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->v:I

    goto/16 :goto_37a

    :cond_18c
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->e()Z

    move-result v1

    iget-boolean v6, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->H:Z

    if-eqz v6, :cond_19a

    iget-boolean v6, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->F:Z

    if-eqz v6, :cond_19a

    move v6, v13

    goto :goto_19b

    :cond_19a
    move v6, v2

    :goto_19b
    iget-boolean v7, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->I:Z

    if-eqz v7, :cond_1a7

    iget-boolean v7, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->G:Z

    if-eqz v7, :cond_1a7

    if-eqz v1, :cond_1a7

    move v1, v13

    goto :goto_1a8

    :cond_1a7
    move v1, v2

    :goto_1a8
    if-nez v6, :cond_1ac

    if-eqz v1, :cond_25c

    :cond_1ac
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v6, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->E:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    float-to-int v1, v1

    mul-int/2addr v1, v1

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->z:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_1cf

    const/16 v6, 0xa

    if-ge v1, v6, :cond_1cf

    move v1, v13

    goto :goto_1d0

    :cond_1cf
    move v1, v2

    :goto_1d0
    const/4 v6, 0x0

    if-nez v1, :cond_1d5

    goto/16 :goto_25c

    :cond_1d5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v13

    :goto_1df
    if-ltz v7, :cond_248

    invoke-virtual {v10, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1f1

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_244

    :cond_1f1
    invoke-virtual {v8, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v1, v12, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v15

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v12, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v9, :cond_244

    new-array v9, v3, [I

    fill-array-data v9, :array_386

    move v14, v2

    move v15, v13

    :goto_231
    if-ge v14, v3, :cond_241

    aget v3, v9, v14

    invoke-virtual {v12, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v8, v12}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    and-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x2

    goto :goto_231

    :cond_241
    if-eqz v15, :cond_244

    move-object v6, v8

    :cond_244
    add-int/lit8 v7, v7, -0x1

    const/4 v3, 0x2

    goto :goto_1df

    :cond_248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findViewToDispatchClickEvent: target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25c
    :goto_25c
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    if-eqz v0, :cond_321

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->d()V

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->o:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->n:I

    if-le v1, v3, :cond_2e3

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    neg-int v3, v0

    int-to-float v4, v3

    invoke-interface {v1, v4}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-gez v1, :cond_2af

    const/16 v1, -0x5dc

    if-le v0, v1, :cond_2ab

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_300

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_300

    :cond_2ab
    invoke-virtual {v10, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->b(I)V

    goto :goto_300

    :cond_2af
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v4

    if-le v1, v4, :cond_2df

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_2db

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_300

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_300

    :cond_2db
    invoke-virtual {v10, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->b(I)V

    goto :goto_300

    :cond_2df
    invoke-virtual {v10, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->b(I)V

    goto :goto_300

    :cond_2e3
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_300

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_300
    :goto_300
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_310

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_313

    :cond_310
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->i()V

    :cond_313
    iput v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->i:Z

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->j()V

    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    if-eqz v0, :cond_37a

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->w:Z

    goto :goto_37a

    :cond_321
    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_37a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_37a

    :cond_33c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_343

    return v2

    :cond_343
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_354

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_354

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_354
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_367

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->d:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    if-eqz v1, :cond_367

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->x:Z

    :cond_367
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->f:I

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->E:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->s:I

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    :cond_37a
    :goto_37a
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_381

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_381
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    return v13

    nop

    :array_386
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

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

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

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onOverScrolled(IIZZ)V

    return p1
.end method

.method public pageScroll(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_38

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_49

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_49

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_49

    :cond_38
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_49

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->k(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->g:Z

    if-nez v0, :cond_10

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_12

    :cond_10
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

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

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

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

    invoke-virtual {p0, p2, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->l(II)V

    :cond_2a
    :goto_2a
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->j()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->g:Z

    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_2c

    :cond_12
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->b(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2c
    return-void
.end method

.method public scrollToDescendant(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->g:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1d

    :cond_1b
    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->h:Landroid/view/View;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->c(Z)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->k:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->k:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->K:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->I:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->H:Z

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->l:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->e:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    return-void
.end method
