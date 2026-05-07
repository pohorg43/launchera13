.class public interface abstract Lcom/oplus/epona/DynamicProvider;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public needIPC()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;
.end method

.method public onCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;)V
    .registers 3

    invoke-interface {p0, p1}, Lcom/oplus/epona/DynamicProvider;->onCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method
