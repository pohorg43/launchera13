.class public final synthetic Lcom/android/wm/shell/onehanded/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;II)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/onehanded/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/h;->b:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iput p2, p0, Lcom/android/wm/shell/onehanded/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/onehanded/h;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/h;->b:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget p0, p0, Lcom/android/wm/shell/onehanded/h;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->f(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/h;->b:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget p0, p0, Lcom/android/wm/shell/onehanded/h;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->i(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
