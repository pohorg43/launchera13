.class public final synthetic Lcom/android/wm/shell/stagesplit/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator$1;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/stagesplit/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/stagesplit/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/w;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/stagesplit/w;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->h(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->f(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;->a(Lcom/android/wm/shell/stagesplit/StageCoordinator$1;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
