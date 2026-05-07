.class public final synthetic Lcom/oplus/statistics/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput p3, p0, Lcom/oplus/statistics/c;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_e

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/statistics/c;->c:Ljava/lang/String;

    return-void

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/statistics/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/c;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/oplus/statistics/c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/statistics/c;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x0
    iget-object v0, p0, Lcom/oplus/statistics/c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/statistics/c;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_18
    iget-object v0, p0, Lcom/oplus/statistics/c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/statistics/c;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
