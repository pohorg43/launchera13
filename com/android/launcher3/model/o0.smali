.class public final synthetic Lcom/android/launcher3/model/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/OplusModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/model/o0;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/model/o0;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2a

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->r(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :pswitch_c  #0x4
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->x(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :pswitch_12  #0x3
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->z(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :pswitch_18  #0x2
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->y(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->w(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :pswitch_24  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->o(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :goto_2a
    iget-object p0, p0, Lcom/android/launcher3/model/o0;->b:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->v(Lcom/android/launcher3/model/OplusModelWriter;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_1e  #00000001
        :pswitch_18  #00000002
        :pswitch_12  #00000003
        :pswitch_c  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
