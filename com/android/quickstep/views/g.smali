.class public final synthetic Lcom/android/quickstep/views/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/OplusGroupedTaskView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusGroupedTaskView;II)V
    .registers 4

    iput p3, p0, Lcom/android/quickstep/views/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/g;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    iput p2, p0, Lcom/android/quickstep/views/g;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/g;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/views/g;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    iget p0, p0, Lcom/android/quickstep/views/g;->c:I

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->y(Lcom/android/quickstep/views/OplusGroupedTaskView;ILcom/android/quickstep/util/GroupTask;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/quickstep/views/g;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    iget p0, p0, Lcom/android/quickstep/views/g;->c:I

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->x(Lcom/android/quickstep/views/OplusGroupedTaskView;ILcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
