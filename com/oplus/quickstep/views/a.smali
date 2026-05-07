.class public final synthetic Lcom/oplus/quickstep/views/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/views/OplusClearAllPanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/quickstep/views/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/views/a;->b:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/views/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/views/a;->b:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->f(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/oplus/quickstep/views/a;->b:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->g(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
