.class public final synthetic Lcom/android/quickstep/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/quickstep/t0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t0;->b:Lcom/android/quickstep/RecentsAnimationController;

    iput-boolean p2, p0, Lcom/android/quickstep/t0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/t0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/t0;->b:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean p0, p0, Lcom/android/quickstep/t0;->c:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->e(Lcom/android/quickstep/RecentsAnimationController;Z)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/quickstep/t0;->b:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean p0, p0, Lcom/android/quickstep/t0;->c:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->k(Lcom/android/quickstep/RecentsAnimationController;Z)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/t0;->b:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean p0, p0, Lcom/android/quickstep/t0;->c:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->c(Lcom/android/quickstep/RecentsAnimationController;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
