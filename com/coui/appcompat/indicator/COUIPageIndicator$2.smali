.class Lcom/coui/appcompat/indicator/COUIPageIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    sget v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:Z

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->F:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_23
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:Z

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:F

    return-void
.end method
