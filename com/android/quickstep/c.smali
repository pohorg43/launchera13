.class public final synthetic Lcom/android/quickstep/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V
    .registers 3

    iput p2, p0, Lcom/android/quickstep/c;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

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
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/c;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_30

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->v(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_c  #0x5
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->N(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_12  #0x4
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->J(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_18  #0x3
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->u(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V

    return-void

    :pswitch_24  #0x1
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->z(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_2a  #0x0
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->n(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :goto_30
    iget-object p0, p0, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->O(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
        :pswitch_18  #00000003
        :pswitch_12  #00000004
        :pswitch_c  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
