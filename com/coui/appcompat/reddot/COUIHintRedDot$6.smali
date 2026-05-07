.class Lcom/coui/appcompat/reddot/COUIHintRedDot$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/reddot/COUIHintRedDot;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-boolean p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->a:Z

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->a:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->a:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_f
    return-void
.end method
