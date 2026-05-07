.class Lcom/coui/appcompat/seekbar/COUISeekBar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_c

    iget v1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_c
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_c

    iget v1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_c
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_e

    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_e
    return-void
.end method
