.class public Lcom/coui/appcompat/progressbar/COUILoadingView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/animation/ValueAnimator;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Landroid/graphics/Paint;

.field public o:F

.field public p:F

.field public q:F

.field public r:Landroid/graphics/RectF;

.field public s:F

.field public t:F

.field public u:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/progressbar/COUILoadingView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiLoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    sget p3, Lcom/support/appcompat/R$attr;->couiLoadingViewStyle:I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->c:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->k:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    new-instance v2, Lcom/coui/appcompat/progressbar/COUILoadingView$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/COUILoadingView$1;-><init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->u:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    if-eqz p2, :cond_26

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_26
    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUILoadingView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/support/appcompat/R$dimen;->coui_loading_view_default_length:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v2, Lcom/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewWidth:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->c:I

    sget v2, Lcom/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewHeight:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->d:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewType:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewBgCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->b:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circle_loading_large_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->f:I

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->h:F

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->e:I

    if-ne v1, p3, :cond_95

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->g:I

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->h:F

    goto :goto_9b

    :cond_95
    const/4 v0, 0x2

    if-ne v0, p3, :cond_9b

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->h:F

    :cond_9b
    :goto_9b
    new-instance p2, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->u:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    iput-object p3, p2, Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper;->c:Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    sget p2, Lcom/support/appcompat/R$string;->coui_loading_view_access_string:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->d()V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUILoadingView$LoadingAnimUpdateListener;-><init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final b()V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->h:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->o:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->p:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->q:F

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->p:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->o:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->s:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->p:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->s:F

    sub-float v3, v1, v2

    sub-float v4, v1, v2

    add-float v5, v1, v2

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public final c()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->n:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->h:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final d()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->i:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_14
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->a()V

    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->l:Z

    :cond_d
    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->e()V

    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    :cond_16
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    rem-float/2addr v0, v1

    const/high16 v2, 0x43b40000  # 360.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->t:F

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->p:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->s:F

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000  # -90.0f

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->p:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->q:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->r:Landroid/graphics/RectF;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->b()V

    :cond_2a
    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->r:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->t:F

    const/high16 v1, 0x41f00000  # 30.0f

    sub-float v3, v0, v1

    const/high16 v1, 0x42700000  # 60.0f

    const/high16 v4, 0x40000000  # 2.0f

    const/high16 v5, 0x43340000  # 180.0f

    sub-float v0, v5, v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v4, v0

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->i:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->r:Landroid/graphics/RectF;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->b()V

    :cond_a
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->c:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->d:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->b()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->l:Z

    const/4 p2, 0x1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->a()V

    iput-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->l:Z

    :cond_13
    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    if-nez p1, :cond_27

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->e()V

    iput-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    goto :goto_27

    :cond_1d
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->m:Z

    :cond_27
    :goto_27
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->e()V

    goto :goto_10

    :cond_9
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->j:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    :goto_10
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->d:I

    return-void
.end method

.method public setLoadingType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->e:I

    return-void
.end method

.method public setLoadingViewBgCircleColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->b:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->c()V

    return-void
.end method

.method public setLoadingViewColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->d()V

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView;->c:I

    return-void
.end method
