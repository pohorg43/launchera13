.class public final synthetic Lcom/oplus/quickstep/taskviewremoteanim/common/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;II)V
    .registers 5

    iput p3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->b:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->b:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->c:I

    invoke-static {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->g(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->b:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->c:I

    invoke-static {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->h(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->b:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->c:I

    invoke-static {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->a(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->b:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/d;->c:I

    invoke-static {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->e(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
