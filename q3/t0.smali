.class public final Lq3/t0;
.super Lq3/m1;
.source ""


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lq3/t0;->e:I

    invoke-direct {p0}, Lq3/m1;-><init>()V

    iput-object p1, p0, Lq3/t0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lq3/t0;->e:I

    invoke-direct {p0}, Lq3/m1;-><init>()V

    iput-object p1, p0, Lq3/t0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq3/s0;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lq3/t0;->e:I

    invoke-direct {p0}, Lq3/m1;-><init>()V

    iput-object p1, p0, Lq3/t0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lq3/t0;->e:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/t0;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :pswitch_e  #0x0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/t0;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :goto_16
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/t0;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public s(Ljava/lang/Throwable;)V
    .registers 3

    iget v0, p0, Lq3/t0;->e:I

    packed-switch v0, :pswitch_data_20

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lq3/t0;->f:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lq3/t0;->f:Ljava/lang/Object;

    check-cast p0, Lq3/s0;

    invoke-interface {p0}, Lq3/s0;->dispose()V

    return-void

    :goto_16
    iget-object p0, p0, Lq3/t0;->f:Ljava/lang/Object;

    check-cast p0, Lb3/d;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
