.class public final synthetic Lcom/oplus/quickstep/taskviewremoteanim/common/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/b;->a:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/b;->b:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/b;->a:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/b;->b:I

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->f(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
