.class public final synthetic Lcom/android/wm/shell/splitscreen/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;II)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/k1;->c:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/k1;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->c(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/k1;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->f(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
