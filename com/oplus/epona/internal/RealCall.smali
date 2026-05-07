.class public Lcom/oplus/epona/internal/RealCall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/epona/internal/RealCall$AsyncCall;,
        Lcom/oplus/epona/internal/RealCall$SyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->RealCall"


# instance fields
.field private final mRequest:Lcom/oplus/epona/Request;

.field private final mRoute:Lcom/oplus/epona/Route;

.field private sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/oplus/epona/Route;Lcom/oplus/epona/Request;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/epona/internal/RealCall;->sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/oplus/epona/internal/RealCall;->mRoute:Lcom/oplus/epona/Route;

    iput-object p2, p0, Lcom/oplus/epona/internal/RealCall;->mRequest:Lcom/oplus/epona/Request;

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/epona/internal/RealCall;Lcom/oplus/epona/Call$Callback;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/epona/internal/RealCall;->proceedChain(Lcom/oplus/epona/Call$Callback;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/epona/internal/RealCall;)Lcom/oplus/epona/Route;
    .registers 1

    iget-object p0, p0, Lcom/oplus/epona/internal/RealCall;->mRoute:Lcom/oplus/epona/Route;

    return-object p0
.end method

.method public static newCall(Lcom/oplus/epona/Route;Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;
    .registers 3

    new-instance v0, Lcom/oplus/epona/internal/RealCall;

    invoke-direct {v0, p0, p1}, Lcom/oplus/epona/internal/RealCall;-><init>(Lcom/oplus/epona/Route;Lcom/oplus/epona/Request;)V

    return-object v0
.end method

.method private proceedChain(Lcom/oplus/epona/Call$Callback;Z)V
    .registers 10

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/oplus/epona/Epona;->getInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/oplus/epona/interceptor/CallComponentInterceptor;

    invoke-direct {v0}, Lcom/oplus/epona/interceptor/CallComponentInterceptor;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oplus/epona/interceptor/CallProviderInterceptor;

    invoke-direct {v0}, Lcom/oplus/epona/interceptor/CallProviderInterceptor;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;

    invoke-direct {v0}, Lcom/oplus/epona/interceptor/LaunchComponentInterceptor;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oplus/epona/Epona;->getIPCInterceptor()Lcom/oplus/epona/Interceptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/oplus/epona/internal/RealInterceptorChain;

    iget-object v3, p0, Lcom/oplus/epona/internal/RealCall;->mRequest:Lcom/oplus/epona/Request;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/epona/internal/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Z)V

    invoke-virtual {v6}, Lcom/oplus/epona/internal/RealInterceptorChain;->proceed()V

    return-void
.end method


# virtual methods
.method public asyncExecute(Lcom/oplus/epona/Call$Callback;)V
    .registers 6

    new-instance v0, Lcom/oplus/epona/internal/RealCall$AsyncCall;

    invoke-direct {v0, p0, p1}, Lcom/oplus/epona/internal/RealCall$AsyncCall;-><init>(Lcom/oplus/epona/internal/RealCall;Lcom/oplus/epona/Call$Callback;)V

    iget-object v1, p0, Lcom/oplus/epona/internal/RealCall;->sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Epona->RealCall"

    const-string v3, "asyncExecute has been executed"

    invoke-static {v2, v3, v1}, Lcom/oplus/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :cond_1f
    iget-object p0, p0, Lcom/oplus/epona/internal/RealCall;->mRoute:Lcom/oplus/epona/Route;

    invoke-virtual {p0, v0}, Lcom/oplus/epona/Route;->asyncExecute(Lcom/oplus/epona/internal/RealCall$AsyncCall;)V

    return-void
.end method

.method public execute()Lcom/oplus/epona/Response;
    .registers 6

    iget-object v0, p0, Lcom/oplus/epona/internal/RealCall;->sExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, "Epona->RealCall"

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "execute has been executed"

    invoke-static {v1, v0, p0}, Lcom/oplus/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->defaultErrorResponse()Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/oplus/epona/internal/RealCall;->mRoute:Lcom/oplus/epona/Route;

    invoke-virtual {v0, p0}, Lcom/oplus/epona/Route;->executed(Lcom/oplus/epona/internal/RealCall;)V

    new-instance v0, Lcom/oplus/epona/internal/RealCall$SyncCallback;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/oplus/epona/internal/RealCall$SyncCallback;-><init>(Lcom/oplus/epona/internal/RealCall$1;)V

    invoke-direct {p0, v0, v2}, Lcom/oplus/epona/internal/RealCall;->proceedChain(Lcom/oplus/epona/Call$Callback;Z)V

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall$SyncCallback;->getResponse()Lcom/oplus/epona/Response;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2a} :catch_32
    .catchall {:try_start_18 .. :try_end_2a} :catchall_30

    :goto_2a
    iget-object v1, p0, Lcom/oplus/epona/internal/RealCall;->mRoute:Lcom/oplus/epona/Route;

    invoke-virtual {v1, p0}, Lcom/oplus/epona/Route;->finished(Lcom/oplus/epona/internal/RealCall;)V

    return-object v0

    :catchall_30
    move-exception v0

    goto :goto_62

    :catch_32
    move-exception v0

    :try_start_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call has exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0
    :try_end_61
    .catchall {:try_start_33 .. :try_end_61} :catchall_30

    goto :goto_2a

    :goto_62
    iget-object v1, p0, Lcom/oplus/epona/internal/RealCall;->mRoute:Lcom/oplus/epona/Route;

    invoke-virtual {v1, p0}, Lcom/oplus/epona/Route;->finished(Lcom/oplus/epona/internal/RealCall;)V

    throw v0
.end method

.method public request()Lcom/oplus/epona/Request;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
