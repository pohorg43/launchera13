.class Lcom/coui/appcompat/reddot/COUIHintRedDot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/reddot/COUIHintRedDot;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->j:Z

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:I

    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->j:Z

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:I

    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c:I

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->d:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->j:Z

    return-void
.end method
