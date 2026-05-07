.class public final synthetic Lcom/android/wm/shell/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/TaskView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;II)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/e;->b:Lcom/android/wm/shell/TaskView;

    iput p2, p0, Lcom/android/wm/shell/e;->c:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/e;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/e;->b:Lcom/android/wm/shell/TaskView;

    iget p0, p0, Lcom/android/wm/shell/e;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/TaskView;->i(Lcom/android/wm/shell/TaskView;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/e;->b:Lcom/android/wm/shell/TaskView;

    iget p0, p0, Lcom/android/wm/shell/e;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/TaskView;->b(Lcom/android/wm/shell/TaskView;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
