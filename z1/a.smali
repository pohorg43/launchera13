.class public final synthetic Lz1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;I)V
    .registers 5

    iput p3, p0, Lz1/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz1/a;->b:I

    iput-object p2, p0, Lz1/a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lz1/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget v0, p0, Lz1/a;->b:I

    iget-object p0, p0, Lz1/a;->c:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;->i(ILandroid/os/Bundle;)V

    return-void

    :goto_e
    iget v0, p0, Lz1/a;->b:I

    iget-object p0, p0, Lz1/a;->c:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;->h(ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
