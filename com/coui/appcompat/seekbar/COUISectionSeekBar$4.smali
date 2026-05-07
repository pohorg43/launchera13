.class Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget-boolean v0, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A0:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A0:Z

    :cond_e
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget-boolean v0, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iput-boolean v1, p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A0:Z

    :cond_e
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->D0:Z

    if-eqz p1, :cond_1c

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->D0:Z

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->A(FZ)V

    :cond_1c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
