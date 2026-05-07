.class public final synthetic Lcom/android/quickstep/r1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;FI)V
    .registers 5

    iput p3, p0, Lcom/android/quickstep/r1;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/r1;->b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput p2, p0, Lcom/android/quickstep/r1;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/r1;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/r1;->b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget p0, p0, Lcom/android/quickstep/r1;->c:F

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->m(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/quickstep/r1;->b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget p0, p0, Lcom/android/quickstep/r1;->c:F

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->f(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/r1;->b:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget p0, p0, Lcom/android/quickstep/r1;->c:F

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->p(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
