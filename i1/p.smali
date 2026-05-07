.class public Li1/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li1/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li1/o;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Li1/p;->a:I

    iput-object p1, p0, Li1/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li1/t;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Li1/p;->a:I

    iput-object p1, p0, Li1/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lj1/a;)V
    .registers 4

    iget v0, p0, Li1/p;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/o;

    invoke-static {p0, p1, p2}, Li1/o;->h(Li1/o;Ljava/lang/String;Lj1/a;)V

    return-void

    :goto_e
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/t;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Li1/t;->e(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Lj1/a;)V
    .registers 4

    iget v0, p0, Li1/p;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/o;

    invoke-static {p0, p1, p2}, Li1/o;->h(Li1/o;Ljava/lang/String;Lj1/a;)V

    return-void

    :goto_e
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/t;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Li1/t;->e(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public c(Ljava/util/Map;)V
    .registers 3

    iget v0, p0, Li1/p;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/o;

    invoke-static {p0, p1}, Li1/o;->i(Li1/o;Ljava/util/Map;)V

    return-void

    :goto_e
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/t;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Li1/t;->f(Ljava/util/Map;I)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public d(Ljava/util/Map;)V
    .registers 3

    iget v0, p0, Li1/p;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/o;

    invoke-static {p0, p1}, Li1/o;->i(Li1/o;Ljava/util/Map;)V

    return-void

    :goto_e
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/t;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Li1/t;->f(Ljava/util/Map;I)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public e(Ljava/lang/String;Lj1/a;)V
    .registers 4

    iget v0, p0, Li1/p;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/o;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Li1/o;->h(Li1/o;Ljava/lang/String;Lj1/a;)V

    return-void

    :goto_f
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/t;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Li1/t;->e(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public f(Ljava/util/Map;)V
    .registers 5

    iget v0, p0, Li1/p;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_34

    :pswitch_6  #0x0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_2c
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/o;

    invoke-static {p0, v0}, Li1/o;->i(Li1/o;Ljava/util/Map;)V

    return-void

    :goto_34
    iget-object p0, p0, Li1/p;->b:Ljava/lang/Object;

    check-cast p0, Li1/t;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Li1/t;->f(Ljava/util/Map;I)V

    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
