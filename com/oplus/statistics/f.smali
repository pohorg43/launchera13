.class public final synthetic Lcom/oplus/statistics/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/statistics/data/CommonBean;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/statistics/data/CommonBean;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->b:Lcom/oplus/statistics/data/CommonBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/f;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/statistics/f;->b:Lcom/oplus/statistics/data/CommonBean;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->a(Lcom/oplus/statistics/data/CommonBean;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/oplus/statistics/f;->b:Lcom/oplus/statistics/data/CommonBean;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->v(Lcom/oplus/statistics/data/CommonBean;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
