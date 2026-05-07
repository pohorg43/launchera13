.class public final synthetic Lcom/oplus/epona/interceptor/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/oplus/epona/Call$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;I)V
    .registers 7

    iput p5, p0, Lcom/oplus/epona/interceptor/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/interceptor/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/epona/interceptor/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/epona/interceptor/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/epona/interceptor/a;->e:Lcom/oplus/epona/Call$Callback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/oplus/epona/Response;)V
    .registers 5

    iget v0, p0, Lcom/oplus/epona/interceptor/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/epona/interceptor/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/epona/interceptor/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/epona/interceptor/a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/epona/interceptor/a;->e:Lcom/oplus/epona/Call$Callback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/epona/interceptor/CallComponentInterceptor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/oplus/epona/interceptor/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/epona/interceptor/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/epona/interceptor/a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/epona/interceptor/a;->e:Lcom/oplus/epona/Call$Callback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/epona/interceptor/CallProviderInterceptor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
