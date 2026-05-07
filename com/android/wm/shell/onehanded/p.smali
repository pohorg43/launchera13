.class public final synthetic Lcom/android/wm/shell/onehanded/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

.field public final synthetic c:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;I)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/onehanded/p;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/p;->b:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/p;->c:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/onehanded/p;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/p;->b:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/p;->c:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->b(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/p;->b:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/p;->c:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->a(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/p;->b:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/p;->c:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->c(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
