.class Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/animation/ArgbEvaluator;

.field public final synthetic c:I

.field public final synthetic d:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/tablayout/COUITabLayout$TabView;IIIIIII)V
    .registers 13

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->l:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->b:Landroid/animation/ArgbEvaluator;

    iput p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->c:I

    iput-object p5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->d:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iput p6, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->e:I

    iput p7, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->f:I

    iput p8, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->g:I

    iput p9, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->h:I

    iput p10, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->i:I

    iput p11, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->j:I

    iput p12, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->b:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->l:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget-object v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->N:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->d:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->b:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->l:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget-object v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->M:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->l:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget v1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->g:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_53

    iput p1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->g:F

    :cond_53
    iget v1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->g:F

    sub-float v1, p1, v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6f

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->f:I

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->h:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v2, v2

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->i:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v2

    float-to-int p0, p0

    goto :goto_85

    :cond_6f
    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->j:I

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->k:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->h:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float p1, v2

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;->i:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr p1, p0

    float-to-int p0, p1

    :goto_85
    add-int/2addr v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f(II)V

    return-void
.end method
