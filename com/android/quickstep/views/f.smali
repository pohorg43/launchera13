.class public final synthetic Lcom/android/quickstep/views/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/OplusGroupedTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusGroupedTaskView;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/views/f;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/f;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/f;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/f;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->A(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/f;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->w(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/quickstep/views/f;->b:Lcom/android/quickstep/views/OplusGroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->B(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
