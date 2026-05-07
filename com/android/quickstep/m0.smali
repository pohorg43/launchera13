.class public final synthetic Lcom/android/quickstep/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/OverviewComponentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;I)V
    .registers 3

    iput p2, p0, Lcom/android/quickstep/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/m0;->b:Lcom/android/quickstep/OverviewComponentObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/m0;->a:I

    packed-switch v0, :pswitch_data_e

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/quickstep/m0;->b:Lcom/android/quickstep/OverviewComponentObserver;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->a(Lcom/android/quickstep/OverviewComponentObserver;Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
