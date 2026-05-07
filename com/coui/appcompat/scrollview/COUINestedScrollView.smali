.class public Lcom/coui/appcompat/scrollview/COUINestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;,
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$AccessibilityDelegate;,
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;,
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;
    }
.end annotation


# instance fields
.field public final E:[I

.field public final F:[I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

.field public L:F

.field public M:Z

.field public N:Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;

.field public a:I

.field public b:J

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:F

.field public i:Z

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:J

.field public final m:Landroid/graphics/Rect;

.field public n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field public o:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Landroid/view/View;

.field public t:Z

.field public u:Landroid/view/VelocityTracker;

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->f:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->g:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->i:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->j:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->k:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->q:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->r:Z

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->s:Landroid/view/View;

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->v:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    new-instance v2, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v3, 0x4009999a  # 2.15f

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->d(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->setEnableFlingSpeedIncrease(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->w:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->x:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->y:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->I:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->J:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a:I

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->k:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->L:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->L:F

    goto :goto_35

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    :goto_35
    iget p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->L:F

    return p0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
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

    invoke-static {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

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

.method public arrowScroll(I)Z
    .registers 9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_7e

    :cond_37
    const/16 v1, 0x21

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    goto :goto_74

    :cond_48
    if-ne p1, v4, :cond_74

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_74

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_74
    :goto_74
    if-nez v2, :cond_77

    return v3

    :cond_77
    if-ne p1, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    neg-int v2, v2

    :goto_7b
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    :goto_7e
    const/4 p1, 0x1

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_a1
    return p1
.end method

.method public final b()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->k:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_9
    return-void
.end method

.method public c(IIZ)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_85

    :cond_11
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_65

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p2, v4

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v6, p1, v4

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/16 v7, 0xfa

    invoke-interface/range {v2 .. v7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIIII)V

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_7f

    :cond_65
    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p3

    if-nez p3, :cond_7c

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-eqz p3, :cond_7c

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    :cond_7c
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :goto_7f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->l:J

    :goto_85
    return-void
.end method

.method public final canScroll()Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v0, v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method public computeScroll()V
    .registers 15

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->canScroll()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_32

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_32

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v2

    if-le v0, v2, :cond_32

    :cond_24
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    return-void

    :cond_32
    iget v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->H:I

    sub-int v2, v0, v2

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->H:I

    iget-object v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    aput v1, v7, v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    aget v0, v0, v3

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v10

    if-eqz v2, :cond_7c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->J:I

    const/4 v13, 0x0

    move-object v4, p0

    move v6, v2

    move v8, v0

    invoke-virtual/range {v4 .. v13}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    sub-int v7, v4, v0

    sub-int v9, v2, v7

    iget-object v12, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    aput v1, v12, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    const/4 v11, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    aget v0, v0, v3

    :cond_7c
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_92

    :cond_88
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    goto :goto_92

    :cond_8c
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-eqz v0, :cond_92

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    :cond_92
    :goto_92
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public final doScrollY(I)V
    .registers 4

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1  # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_22

    const/4 p1, 0x0

    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_35

    if-eq p1, p0, :cond_35

    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1

    :cond_36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6a

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5a

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_4f

    goto :goto_79

    :cond_4f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_56

    move v2, v4

    :cond_56
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->pageScroll(I)Z

    goto :goto_79

    :cond_5a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_79

    :cond_65
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_79

    :cond_6a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_75

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_79

    :cond_75
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fullScroll(I)Z

    move-result v1

    :cond_79
    :goto_79
    return v1
.end method

.method public fling(I)V
    .registers 14

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-interface/range {v1 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->runAnimatedScroll(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-nez v0, :cond_2b

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    :cond_2b
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
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3d

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_3d
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public getCOUIScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2e
    return v1
.end method

.method public getScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2e
    return v1
.end method

.method public getScrollableRange()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public invalidateParentIfNeeded()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->v:Z

    return p0
.end method

.method public final isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

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

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->r:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    goto :goto_44

    :cond_12
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-nez v0, :cond_44

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_35

    move v0, v1

    goto :goto_39

    :cond_35
    if-le p1, v0, :cond_38

    goto :goto_39

    :cond_38
    move v0, p1

    :goto_39
    if-eq v0, v2, :cond_44

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-eqz v3, :cond_d

    return v2

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const-string v3, "COUINestedScrollView"

    const/4 v4, 0x0

    if-eqz v0, :cond_b0

    const/4 v5, -0x1

    if-eq v0, v2, :cond_8a

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_29

    const/4 v1, 0x6

    if-eq v0, v1, :cond_24

    goto/16 :goto_1bd

    :cond_24
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1bd

    :cond_29
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->c:I

    goto/16 :goto_1bd

    :cond_32
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    if-ne v0, v5, :cond_38

    goto/16 :goto_1bd

    :cond_38
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-ne v6, v5, :cond_59

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1bd

    :cond_59
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->w:I

    if-le v3, v5, :cond_1bd

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_1bd

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1bd

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1bd

    :cond_8a
    iput-boolean v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    iput v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v11

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_ab

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_ab
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    goto/16 :goto_1bd

    :cond_b0
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v5, 0x0

    if-eqz v0, :cond_ba

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    goto :goto_bb

    :cond_ba
    move v0, v5

    :goto_bb
    iget v6, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->h:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000  # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_ca

    move v6, v2

    goto :goto_cb

    :cond_ca
    move v6, v4

    :goto_cb
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v5

    const/high16 v8, 0x437a0000  # 250.0f

    if-lez v7, :cond_e1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e1

    if-eqz v6, :cond_e1

    move v7, v2

    goto :goto_e2

    :cond_e1
    move v7, v4

    :goto_e2
    iput-boolean v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->d:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a()Z

    move-result v7

    iput-boolean v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->b:J

    const-string v7, "onInterceptTouchEvent: ACTION_DOWN, isFastFlingY = "

    const-string v9, ", isSlowScrolling = "

    invoke-static {v7, v6, v9}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->d:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", \nMath.abs(scrollVelocityY) > 0 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v7, v5

    if-lez v5, :cond_10c

    move v5, v2

    goto :goto_10d

    :cond_10c
    move v5, v4

    :goto_10d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", \nscrollVelocityY = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", \nMath.abs(scrollVelocityY) < SLOW_SCROLL_THRESHOLD = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_127

    move v5, v2

    goto :goto_128

    :cond_127
    move v5, v4

    :goto_128
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", \nisOverScrolling = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->e:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", scrollVelocityY = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mFlingVelocityY = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->h:F

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_186

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    if-lt v0, v7, :cond_186

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v0, v7, :cond_186

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v3, v5, :cond_186

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v3, v5, :cond_186

    move v3, v2

    goto :goto_187

    :cond_186
    move v3, v4

    :goto_187
    if-nez v3, :cond_18f

    iput-boolean v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    goto :goto_1bd

    :cond_18f
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->c:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1a4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    goto :goto_1a7

    :cond_1a4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_1a7
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    invoke-virtual {p0, v1, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    :cond_1bd
    :goto_1bd
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->q:Z

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->s:Landroid/view/View;

    if-eqz p2, :cond_19

    invoke-static {p2, p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->s:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_19
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->s:Landroid/view/View;

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->r:Z

    if-nez p3, :cond_34

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->K:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    if-eqz p3, :cond_31

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->K:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    iget p4, p4, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;->a:I

    invoke-virtual {p0, p3, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->K:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    :cond_31
    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    :cond_34
    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p2}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p4

    if-lez p4, :cond_9b

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge p5, v0, :cond_6c

    if-gez p2, :cond_65

    goto :goto_6c

    :cond_65
    add-int v1, p5, p2

    if-le v1, v0, :cond_6d

    sub-int p2, v0, p5

    goto :goto_6d

    :cond_6c
    :goto_6c
    move p2, p1

    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    if-ge p5, p4, :cond_8c

    if-gez p3, :cond_84

    goto :goto_8c

    :cond_84
    add-int p1, p5, p3

    if-le p1, p4, :cond_8b

    sub-int p1, p4, p5

    goto :goto_8c

    :cond_8b
    move p1, p3

    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p3

    if-ne p2, p3, :cond_98

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-eq p1, p3, :cond_9b

    :cond_98
    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    :cond_9b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->r:Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p5, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onNestedScrollInternal(II[I)V

    iget p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->H:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->H:I

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p5, p6, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p5, p6, p7}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public final onNestedScrollInternal(II[I)V
    .registers 16
    .param p3  # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_21

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v1

    if-ne v1, v3, :cond_42

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    if-gt v1, v4, :cond_42

    :cond_21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v1, p1

    if-gez v1, :cond_2e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    neg-int p1, p1

    goto :goto_42

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v4

    if-le v1, v4, :cond_42

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int/2addr p1, v1

    :cond_42
    :goto_42
    invoke-virtual {p0, v2, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int v6, v1, v0

    if-eqz p3, :cond_52

    aget v0, p3, v3

    add-int/2addr v0, v6

    aput v0, p3, v3

    :cond_52
    sub-int v8, p1, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v10, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_95

    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-eqz p3, :cond_2a

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p3

    if-lt p2, p3, :cond_22

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p3

    goto :goto_23

    :cond_22
    move p3, p4

    :goto_23
    sub-int/2addr p2, p3

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a:I

    invoke-static {p3, p2, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->a(III)I

    move-result p2

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_52

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollableRange()I

    move-result v0

    if-gt p3, v0, :cond_52

    :cond_46
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-ltz p3, :cond_68

    if-gez p2, :cond_68

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-eqz p3, :cond_68

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->b()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->J:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_8a

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p3

    if-le p2, p3, :cond_8a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-eqz p3, :cond_8a

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->b()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->J:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_8a
    iput p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->H:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    :cond_95
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
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->K:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;->a:I

    return-object v1
.end method

.method public onScrollChanged(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->N:Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;->a(Lcom/coui/appcompat/scrollview/COUINestedScrollView;IIII)V

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;->a(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    return-void
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    if-ne v1, v2, :cond_27

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_27
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p2

    if-le p1, p2, :cond_2f

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    :cond_2f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_52

    if-ne p0, p1, :cond_38

    goto :goto_52

    :cond_38
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_52

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    :cond_52
    :goto_52
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initVelocityTrackerIfNotExists()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_10

    iput v11, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v13, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_329

    const-string v4, "COUINestedScrollView"

    const/4 v5, -0x1

    if-eq v1, v13, :cond_17c

    if-eq v1, v2, :cond_8b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_58

    const/4 v2, 0x5

    if-eq v1, v2, :cond_43

    const/4 v2, 0x6

    if-eq v1, v2, :cond_31

    goto/16 :goto_36d

    :cond_31
    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    goto/16 :goto_36d

    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->c:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    goto/16 :goto_36d

    :cond_58
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-eqz v0, :cond_7f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7f

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_7f
    iput v5, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    iput-boolean v11, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    invoke-virtual {v10, v11}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    goto/16 :goto_36d

    :cond_8b
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v2, :cond_9a

    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->i:Z

    if-eqz v2, :cond_9a

    check-cast v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->f()V

    :cond_9a
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v5, :cond_b1

    const-string v0, "Invalid pointerId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    const-string v2, " in onTouchEvent"

    invoke-static {v0, v1, v2, v4}, Landroidx/core/widget/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36d

    :cond_b1
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    sub-int/2addr v0, v6

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-nez v1, :cond_d9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->w:I

    if-le v1, v2, :cond_d9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_ce

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_ce
    iput-boolean v13, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-lez v0, :cond_d6

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->w:I

    sub-int/2addr v0, v1

    goto :goto_d9

    :cond_d6
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->w:I

    add-int/2addr v0, v1

    :cond_d9
    :goto_d9
    move v7, v0

    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-eqz v0, :cond_36d

    const/4 v1, 0x0

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    iget-object v4, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    aget v0, v0, v13

    sub-int/2addr v7, v0

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    :cond_fb
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    aget v0, v0, v13

    sub-int/2addr v6, v0

    iput v6, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-gez v0, :cond_11b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->I:I

    invoke-static {v7, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v7

    goto :goto_134

    :cond_11b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_134

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->I:I

    invoke-static {v7, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v7

    :cond_134
    :goto_134
    move v15, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->J:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v2, v15

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_154

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_154

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_154
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int v2, v0, v14

    sub-int v4, v15, v2

    iget-object v7, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->F:[I

    aput v11, v7, v13

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->E:[I

    aget v2, v1, v13

    sub-int/2addr v0, v2

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->G:I

    goto/16 :goto_36d

    :cond_17c
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a()Z

    move-result v1

    iget-boolean v6, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->f:Z

    if-eqz v6, :cond_18a

    iget-boolean v6, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->d:Z

    if-eqz v6, :cond_18a

    move v6, v13

    goto :goto_18b

    :cond_18a
    move v6, v11

    :goto_18b
    iget-boolean v7, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->g:Z

    if-eqz v7, :cond_197

    iget-boolean v7, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->e:Z

    if-eqz v7, :cond_197

    if-eqz v1, :cond_197

    move v1, v13

    goto :goto_198

    :cond_197
    move v1, v11

    :goto_198
    if-nez v6, :cond_19c

    if-eqz v1, :cond_24a

    :cond_19c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v6, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->c:I

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

    iget-wide v8, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->b:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_1be

    const/16 v6, 0xa

    if-ge v1, v6, :cond_1be

    move v11, v13

    :cond_1be
    const/4 v1, 0x0

    if-nez v11, :cond_1c3

    goto/16 :goto_24a

    :cond_1c3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v13

    :goto_1cd
    if-ltz v7, :cond_236

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1df

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_232

    :cond_1df
    invoke-virtual {v8, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v6, v11, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v15

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v11, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v9, :cond_232

    new-array v9, v2, [I

    fill-array-data v9, :array_378

    const/4 v14, 0x0

    move v15, v13

    :goto_21f
    if-ge v14, v2, :cond_22f

    aget v2, v9, v14

    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v8, v11}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    and-int/2addr v15, v2

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x2

    goto :goto_21f

    :cond_22f
    if-eqz v15, :cond_232

    move-object v1, v8

    :cond_232
    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x2

    goto :goto_1cd

    :cond_236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findViewToDispatchClickEvent: target: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24a
    :goto_24a
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-eqz v0, :cond_36d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->x:I

    if-le v1, v2, :cond_2ed

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    neg-int v2, v0

    int-to-float v4, v2

    invoke-interface {v1, v4}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-gez v1, :cond_2a7

    const/16 v1, -0x5dc

    if-le v0, v1, :cond_29a

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_30a

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_30a

    :cond_29a
    invoke-virtual {v10, v3, v4}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_30a

    invoke-virtual {v10, v3, v4, v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fling(I)V

    goto :goto_30a

    :cond_2a7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v6

    if-le v1, v6, :cond_2e0

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_2d3

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_30a

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_30a

    :cond_2d3
    invoke-virtual {v10, v3, v4}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_30a

    invoke-virtual {v10, v3, v4, v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fling(I)V

    goto :goto_30a

    :cond_2e0
    invoke-virtual {v10, v3, v4}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_30a

    invoke-virtual {v10, v3, v4, v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fling(I)V

    goto :goto_30a

    :cond_2ed
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_30a

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_30a
    :goto_30a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_31a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_31d

    :cond_31a
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->b()V

    :cond_31d
    iput v5, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    goto :goto_36d

    :cond_329
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_330

    return v11

    :cond_330
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    xor-int/2addr v1, v13

    iput-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->t:Z

    if-eqz v1, :cond_344

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_344

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_344
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_359

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    if-eqz v1, :cond_359

    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->M:Z

    goto :goto_35a

    :cond_359
    const/4 v1, 0x0

    :goto_35a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->p:I

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->c:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->z:I

    const/4 v0, 0x2

    invoke-virtual {v10, v0, v1}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    :cond_36d
    :goto_36d
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_374

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_374
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v13

    :array_378
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

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    :cond_f
    return-void
.end method

.method public overScrollByCompat(IIIIIIIIZ)Z
    .registers 22

    move-object v0, p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_13

    move v2, v5

    goto :goto_14

    :cond_13
    move v2, v4

    :goto_14
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    if-eqz v1, :cond_2a

    if-ne v1, v5, :cond_28

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v4

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v5

    :goto_2b
    if-eqz v1, :cond_34

    if-ne v1, v5, :cond_32

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    move v1, v4

    goto :goto_35

    :cond_34
    :goto_34
    move v1, v5

    :goto_35
    add-int v3, p3, p1

    if-nez v2, :cond_3b

    move v2, v4

    goto :goto_3d

    :cond_3b
    move/from16 v2, p7

    :goto_3d
    add-int v6, p4, p2

    if-nez v1, :cond_43

    move v1, v4

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    neg-int v7, v2

    add-int v2, v2, p5

    neg-int v8, v1

    add-int v1, v1, p6

    if-le v3, v2, :cond_50

    move v3, v2

    move v2, v5

    goto :goto_56

    :cond_50
    if-ge v3, v7, :cond_55

    move v2, v5

    move v3, v7

    goto :goto_56

    :cond_55
    move v2, v4

    :goto_56
    if-le v6, v1, :cond_5b

    move v6, v1

    move v1, v5

    goto :goto_61

    :cond_5b
    if-ge v6, v8, :cond_60

    move v1, v5

    move v6, v8

    goto :goto_61

    :cond_60
    move v1, v4

    :goto_61
    if-eqz v1, :cond_80

    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v7

    if-nez v7, :cond_80

    iget-object v7, v0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v11

    move-object p1, v7

    move p2, v3

    move p3, v6

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-interface/range {p1 .. p7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    :cond_80
    invoke-virtual {p0, v3, v6, v2, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_87

    if-eqz v1, :cond_88

    :cond_87
    move v4, v5

    :cond_88
    return v4
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
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-eqz v2, :cond_40

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_51

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    if-le v2, v1, :cond_51

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_51

    :cond_40
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_51

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v1, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public final recycleVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->u:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->q:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_a

    :cond_8
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->s:Landroid/view/View;

    :goto_a
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    :cond_5
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->q:Z

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public final runAnimatedScroll(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_b

    :cond_8
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    :goto_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->H:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final scrollAndFocus(III)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

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

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getFocusables(I)Ljava/util/ArrayList;

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
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    const/4 v6, 0x1

    :goto_7f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v11, v0, :cond_88

    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_88
    return v6
.end method

.method public scrollTo(II)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_2c

    :cond_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->b(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2c
    return-void
.end method

.method public final scrollToChild(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->c(Z)V

    :cond_7
    return-void
.end method

.method public setEnableVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->k:Z

    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->i:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->g:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->f:Z

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->N:Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->v:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->o:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 9

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->a()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_23
    return-void
.end method
