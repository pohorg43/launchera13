.class public final synthetic Lcom/android/quickstep/views/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/views/b0;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/b0;->b:Ljava/util/function/Consumer;

    return-void

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/b0;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/b0;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/b0;->b:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView;->a(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/b0;->b:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView$14;->a(Ljava/util/function/Consumer;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/quickstep/views/b0;->b:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView;->k(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
