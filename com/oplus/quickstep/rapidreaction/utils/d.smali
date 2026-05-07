.class public final synthetic Lcom/oplus/quickstep/rapidreaction/utils/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

.field public final synthetic c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)V
    .registers 4

    iput p3, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->f(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/d;->c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->b(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
