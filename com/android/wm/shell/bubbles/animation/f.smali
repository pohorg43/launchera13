.class public final synthetic Lcom/android/wm/shell/bubbles/animation/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/bubbles/animation/f;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/f;->b:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/f;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/f;->b:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->h(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/f;->b:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->f(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/f;->b:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->e(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
