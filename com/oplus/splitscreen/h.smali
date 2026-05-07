.class public final synthetic Lcom/oplus/splitscreen/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/splitscreen/SplitToggleHelper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/splitscreen/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/splitscreen/h;->c:I

    iput-object p2, p0, Lcom/oplus/splitscreen/h;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitToggleHelper;II)V
    .registers 4

    iput p3, p0, Lcom/oplus/splitscreen/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/h;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    iput p2, p0, Lcom/oplus/splitscreen/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/splitscreen/h;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/oplus/splitscreen/h;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    iget p0, p0, Lcom/oplus/splitscreen/h;->c:I

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->l(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/oplus/splitscreen/h;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    iget p0, p0, Lcom/oplus/splitscreen/h;->c:I

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->p(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    return-void

    :goto_16
    iget v0, p0, Lcom/oplus/splitscreen/h;->c:I

    iget-object p0, p0, Lcom/oplus/splitscreen/h;->b:Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/StackDividerService;->h(ILcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
