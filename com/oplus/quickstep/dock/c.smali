.class public final synthetic Lcom/oplus/quickstep/dock/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/dock/DockIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockIconView;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/dock/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/c;->b:Lcom/oplus/quickstep/dock/DockIconView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/dock/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/oplus/quickstep/dock/c;->b:Lcom/oplus/quickstep/dock/DockIconView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->c(Lcom/oplus/quickstep/dock/DockIconView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/dock/c;->b:Lcom/oplus/quickstep/dock/DockIconView;

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->a(Lcom/oplus/quickstep/dock/DockIconView;Lcom/android/quickstep/util/GroupTask;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/oplus/quickstep/dock/c;->b:Lcom/oplus/quickstep/dock/DockIconView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->e(Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
