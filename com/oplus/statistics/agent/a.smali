.class public final synthetic Lcom/oplus/statistics/agent/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/statistics/agent/a;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

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
        :pswitch_5  #0000000a
        :pswitch_5  #0000000b
        :pswitch_5  #0000000c
        :pswitch_5  #0000000d
        :pswitch_5  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/agent/a;->a:I

    packed-switch v0, :pswitch_data_76

    goto :goto_6f

    :pswitch_6  #0xe
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/util/IntentUtils;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0xd
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/util/IntentUtils;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14  #0xc
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/util/IntentUtils;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0xb
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/util/IntentUtils;->e(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_22  #0xa
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x9
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x8
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x7
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3e  #0x6
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_45  #0x5
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4c  #0x4
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_53  #0x3
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/record/ServiceRecorder;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5a  #0x2
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/record/ContentProviderRecorder;->d(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_61  #0x1
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_68  #0x0
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_6f
    iget-object p0, p0, Lcom/oplus/statistics/agent/a;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/util/IntentUtils;->d(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_68  #00000000
        :pswitch_61  #00000001
        :pswitch_5a  #00000002
        :pswitch_53  #00000003
        :pswitch_4c  #00000004
        :pswitch_45  #00000005
        :pswitch_3e  #00000006
        :pswitch_37  #00000007
        :pswitch_30  #00000008
        :pswitch_29  #00000009
        :pswitch_22  #0000000a
        :pswitch_1b  #0000000b
        :pswitch_14  #0000000c
        :pswitch_d  #0000000d
        :pswitch_6  #0000000e
    .end packed-switch
.end method
