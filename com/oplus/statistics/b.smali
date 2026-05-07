.class public final synthetic Lcom/oplus/statistics/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/statistics/b;->a:I

    packed-switch p2, :pswitch_data_36

    goto :goto_30

    :pswitch_6  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_c  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_12  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_18  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_1e  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_24  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_2a  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :goto_30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
        :pswitch_18  #00000004
        :pswitch_12  #00000005
        :pswitch_c  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/b;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_37

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/agent/PageVisitAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x5
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/agent/PageVisitAgent;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x4
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x3
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x2
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x1
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x0
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_37
    iget-object p0, p0, Lcom/oplus/statistics/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_29  #00000001
        :pswitch_22  #00000002
        :pswitch_1b  #00000003
        :pswitch_14  #00000004
        :pswitch_d  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
