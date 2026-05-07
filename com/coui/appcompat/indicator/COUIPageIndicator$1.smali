.class Lcom/coui/appcompat/indicator/COUIPageIndicator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/indicator/COUIPageIndicator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-boolean v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:Z

    if-nez v0, :cond_77

    iget v0, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:F

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:F

    sub-float v1, v0, v1

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:F

    iget v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    sub-float v3, v2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget-object v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v7, v0, v4

    if-lez v7, :cond_2b

    move v0, v4

    :cond_2b
    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iget p1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v5

    cmpg-float v3, v2, p1

    if-gez v3, :cond_35

    move v2, p1

    :cond_35
    iget-boolean p1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->F:Z

    if-nez p1, :cond_43

    iget-boolean p1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:Z

    if-eqz p1, :cond_40

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_47

    :cond_40
    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto :goto_47

    :cond_43
    iput v0, v1, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    :goto_47
    iget-boolean p1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:Z

    const/high16 v0, 0x3f000000  # 0.5f

    if-eqz p1, :cond_55

    iget p1, v1, Landroid/graphics/RectF;->right:F

    mul-float v1, v5, v0

    sub-float/2addr p1, v1

    iput p1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    goto :goto_5c

    :cond_55
    iget p1, v1, Landroid/graphics/RectF;->left:F

    mul-float v1, v5, v0

    add-float/2addr v1, p1

    iput v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    :goto_5c
    iget-object p1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    mul-float v4, v5, v0

    add-float v3, v4, p1

    iput v3, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iget v1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    iget v2, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a(IFFFZ)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, v6, Lcom/coui/appcompat/indicator/COUIPageIndicator;->L:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_77
    return-void
.end method
