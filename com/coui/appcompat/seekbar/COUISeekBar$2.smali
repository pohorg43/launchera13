.class Lcom/coui/appcompat/seekbar/COUISeekBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->m(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
