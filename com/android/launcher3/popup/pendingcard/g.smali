.class public final synthetic Lcom/android/launcher3/popup/pendingcard/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/g;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

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
        :pswitch_5  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/g;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_3c

    :pswitch_6  #0x8
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->j(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_c  #0x7
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->d(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_12  #0x6
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->c(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_18  #0x5
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->j(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_1e  #0x4
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->d(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_24  #0x3
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->k(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_2a  #0x2
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->c(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_30  #0x1
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->j(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_36  #0x0
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->d(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :goto_3c
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/g;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->c(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_30  #00000001
        :pswitch_2a  #00000002
        :pswitch_24  #00000003
        :pswitch_1e  #00000004
        :pswitch_18  #00000005
        :pswitch_12  #00000006
        :pswitch_c  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
