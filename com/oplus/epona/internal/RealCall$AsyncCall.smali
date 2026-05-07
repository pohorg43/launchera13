.class public Lcom/oplus/epona/internal/RealCall$AsyncCall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/internal/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncCall"
.end annotation


# instance fields
.field private final mCallback:Lcom/oplus/epona/Call$Callback;

.field public final synthetic this$0:Lcom/oplus/epona/internal/RealCall;


# direct methods
.method public constructor <init>(Lcom/oplus/epona/internal/RealCall;Lcom/oplus/epona/Call$Callback;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->this$0:Lcom/oplus/epona/internal/RealCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->mCallback:Lcom/oplus/epona/Call$Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->this$0:Lcom/oplus/epona/internal/RealCall;

    iget-object v3, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->mCallback:Lcom/oplus/epona/Call$Callback;

    invoke-static {v2, v3, v1}, Lcom/oplus/epona/internal/RealCall;->access$100(Lcom/oplus/epona/internal/RealCall;Lcom/oplus/epona/Call$Callback;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_15
    .catchall {:try_start_2 .. :try_end_9} :catchall_13

    iget-object v0, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->this$0:Lcom/oplus/epona/internal/RealCall;

    invoke-static {v0}, Lcom/oplus/epona/internal/RealCall;->access$200(Lcom/oplus/epona/internal/RealCall;)Lcom/oplus/epona/Route;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/epona/Route;->finished(Lcom/oplus/epona/internal/RealCall$AsyncCall;Z)V

    goto :goto_37

    :catchall_13
    move-exception v1

    goto :goto_38

    :catch_15
    move-exception v2

    :try_start_16
    const-string v3, "Epona->RealCall"

    const-string v4, "AsyncCall run failed and exception is %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->mCallback:Lcom/oplus/epona/Call$Callback;

    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_13

    iget-object v1, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->this$0:Lcom/oplus/epona/internal/RealCall;

    invoke-static {v1}, Lcom/oplus/epona/internal/RealCall;->access$200(Lcom/oplus/epona/internal/RealCall;)Lcom/oplus/epona/Route;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/oplus/epona/Route;->finished(Lcom/oplus/epona/internal/RealCall$AsyncCall;Z)V

    :goto_37
    return-void

    :goto_38
    iget-object v2, p0, Lcom/oplus/epona/internal/RealCall$AsyncCall;->this$0:Lcom/oplus/epona/internal/RealCall;

    invoke-static {v2}, Lcom/oplus/epona/internal/RealCall;->access$200(Lcom/oplus/epona/internal/RealCall;)Lcom/oplus/epona/Route;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/oplus/epona/Route;->finished(Lcom/oplus/epona/internal/RealCall$AsyncCall;Z)V

    throw v1
.end method
