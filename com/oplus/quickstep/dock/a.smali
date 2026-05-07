.class public final synthetic Lcom/oplus/quickstep/dock/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockFeedbackEffect;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/dock/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/quickstep/dock/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/dock/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/oplus/quickstep/dock/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect$mUpAnim$2;->a(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/dock/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect$mPressedAnim$2;->a(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/oplus/quickstep/dock/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->k(Lcom/oplus/quickstep/dock/DockView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
