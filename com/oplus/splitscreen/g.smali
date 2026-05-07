.class public final synthetic Lcom/oplus/splitscreen/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/splitscreen/SplitToggleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/splitscreen/g;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 v0, 0x4

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/splitscreen/g;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->c(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :pswitch_c  #0x3
    iget-object p0, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->b(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :pswitch_12  #0x2
    iget-object p0, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->o(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :pswitch_18  #0x1
    iget-object p0, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->f(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->k(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :goto_24
    iget-object p0, p0, Lcom/oplus/splitscreen/g;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->i(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
