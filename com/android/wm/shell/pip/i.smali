.class public final synthetic Lcom/android/wm/shell/pip/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/pip/i;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/i;->b:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/pip/i;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0, 0x1, 0x2, 0x3
    iget-object p0, p0, Lcom/android/wm/shell/pip/i;->b:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->clearContentOverlay()V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method
