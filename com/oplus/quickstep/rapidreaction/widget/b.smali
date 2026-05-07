.class public final synthetic Lcom/oplus/quickstep/rapidreaction/widget/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->b:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->b:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->a(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
