.class public final synthetic Lcom/android/wm/shell/stagesplit/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

.field public final synthetic c:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/stagesplit/v;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/v;->b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/v;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/stagesplit/v;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/v;->b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/v;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->g(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/v;->b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/v;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->a(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/v;->b:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/v;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->e(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
