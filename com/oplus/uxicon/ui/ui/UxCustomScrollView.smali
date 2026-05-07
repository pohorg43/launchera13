.class public Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;
.super Landroid/widget/HorizontalScrollView;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:F

.field public c:Landroid/graphics/Rect;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->e:Z

    sget-object v1, Lcom/oplus/uxicon/ui/R$styleable;->UxCustomScrollView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$styleable;->UxCustomScrollView_should_scroll:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->e:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    :cond_d
    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p0

    if-eqz p0, :cond_16

    if-ne p0, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public c()V
    .registers 5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a()V

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto :goto_7d

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->b:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->b()Z

    move-result v4

    if-eqz v4, :cond_68

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->b:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4a
    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    div-int/2addr v3, v1

    sub-int/2addr v4, v3

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/view/View;->layout(IIII)V

    :cond_68
    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->b:F

    goto :goto_7d

    :cond_6b
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomScrollView;->b:F

    :cond_7d
    :goto_7d
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
