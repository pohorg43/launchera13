.class public final synthetic Lcom/oplus/quickstep/appswitch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/appswitch/AppSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/appswitch/a;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/appswitch/a;->b:Lcom/oplus/quickstep/appswitch/AppSwitchController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/appswitch/a;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_2e

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/a;->b:Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->b(Lcom/oplus/quickstep/appswitch/AppSwitchController;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/a;->b:Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->e(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V

    return-void

    :pswitch_1a  #0x1
    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/a;->b:Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->f(Lcom/oplus/quickstep/appswitch/AppSwitchController;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_22  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/a;->b:Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->e(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/a;->b:Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->e(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V

    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1a  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
