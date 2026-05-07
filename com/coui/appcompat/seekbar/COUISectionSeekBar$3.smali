.class Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->B(FFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->G0:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget v0, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->z0:F

    iget v1, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->G0:F

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->C0:F

    const v3, 0x3f19999a  # 0.6f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    add-float/2addr v2, v0

    iput v2, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->B0:F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v1, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->y0:F

    iget v2, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->z0:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x1

    if-lez v3, :cond_4a

    iget v0, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->B0:F

    iget-boolean v1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    if-eqz v1, :cond_3f

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->v(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result p1

    goto :goto_43

    :cond_3f
    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->w(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result p1

    :goto_43
    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_48
    move v0, p1

    goto :goto_67

    :cond_4a
    cmpg-float v1, v1, v2

    if-gez v1, :cond_69

    iget v0, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->B0:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget-boolean v1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    if-eqz v1, :cond_5b

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->v(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result p1

    goto :goto_5f

    :cond_5b
    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->w(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result p1

    :goto_5f
    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_48

    :goto_67
    move p1, v4

    goto :goto_6a

    :cond_69
    const/4 p1, 0x0

    :goto_6a
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7a

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget p1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    sub-int v0, p1, v0

    :cond_7a
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->d(IZ)V

    return-void
.end method
