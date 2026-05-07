.class public Lcom/coui/appcompat/progressbar/COUICircleProgressBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;,
        Lcom/coui/appcompat/progressbar/COUICircleProgressBar$SavedState;,
        Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;
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

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/content/Context;

.field public m:Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;

.field public n:Landroid/view/accessibility/AccessibilityManager;

.field public o:Landroid/graphics/Paint;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/graphics/Paint;

.field public r:I

.field public s:I

.field public t:Landroid/graphics/RectF;

.field public u:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiCircleProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->c:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->d:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->e:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->i:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->l:Landroid/content/Context;

    if-eqz p2, :cond_2b

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_2b
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->l:Landroid/content/Context;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_loading_view_default_length:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v1, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarWidth:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->c:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarHeight:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->d:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarBgCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgress:I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleMax:I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_circle_loading_large_strokewidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->j:I

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->e:I

    const/4 p3, 0x1

    if-ne p3, p2, :cond_ac

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->k:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    goto :goto_b1

    :cond_ac
    const/4 v1, 0x2

    if-ne v1, p2, :cond_b1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_ba

    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_ba
    :goto_ba
    const/16 p1, 0x168

    if-ge v0, p1, :cond_cb

    new-instance p1, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;-><init>(Lcom/coui/appcompat/progressbar/COUICircleProgressBar;)V

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_cb
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->q:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->b:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->q:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->a()V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->setProgress(I)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->l:Landroid/content/Context;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->n:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->o:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public final b()V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    if-lez v0, :cond_19

    int-to-float v0, v0

    const/high16 v1, 0x43b40000  # 360.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->i:I

    const/16 v1, 0x168

    rsub-int v0, v0, 0x168

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1c

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->i:I

    goto :goto_1c

    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->i:I

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMax()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    return p0
.end method

.method public getProgress()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->m:Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->s:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->u:F

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000  # -90.0f

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->s:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->t:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->i:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->o:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->c:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->d:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$SavedState;->a:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    iput p0, v1, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$SavedState;->a:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->f:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->s:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->r:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->u:F

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->s:I

    int-to-float p3, p2

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->u:F

    sub-float/2addr p3, p4

    int-to-float v0, p2

    sub-float/2addr v0, p4

    int-to-float v1, p2

    add-float/2addr v1, p4

    int-to-float p2, p2

    add-float/2addr p2, p4

    invoke-direct {p1, p3, v0, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->t:Landroid/graphics/RectF;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->d:I

    return-void
.end method

.method public setMax(I)V
    .registers 3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    if-eq p1, v0, :cond_f

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    if-le v0, p1, :cond_f

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    :cond_f
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->b()V

    return-void
.end method

.method public setProgress(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUICircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_19

    const/4 p1, 0x0

    :cond_19
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->g:I

    if-le p1, v0, :cond_1e

    move p1, v0

    :cond_1e
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    if-eq p1, v0, :cond_24

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->h:I

    :cond_24
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->b()V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->n:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->n:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->m:Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;

    if-nez p1, :cond_46

    new-instance p1, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/progressbar/COUICircleProgressBar;Lcom/coui/appcompat/progressbar/COUICircleProgressBar$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->m:Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;

    goto :goto_49

    :cond_46
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_49
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->m:Lcom/coui/appcompat/progressbar/COUICircleProgressBar$AccessibilityEventSender;

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    return-void
.end method

.method public setProgressBarBgCircleColor(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->b:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->q:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->q:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setProgressBarColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->a()V

    return-void
.end method

.method public setProgressBarType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->e:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar;->c:I

    return-void
.end method
