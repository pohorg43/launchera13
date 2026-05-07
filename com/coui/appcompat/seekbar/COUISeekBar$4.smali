.class Lcom/coui/appcompat/seekbar/COUISeekBar$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:I

.field public final synthetic c:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;FI)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->c:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->a:F

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->c:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->a:F

    div-float v1, p1, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->b:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    iput p1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
