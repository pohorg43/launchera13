.class public Lcom/oplus/epona/interceptor/CallComponentInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->CallComponentInterceptor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/epona/interceptor/CallComponentInterceptor;->lambda$intercept$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V

    return-void
.end method

.method private static synthetic lambda$intercept$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p4, v0, p0

    const-string p0, "Epona->CallComponentInterceptor"

    const-string p1, "Caller(%s) call component(%s) action(%s) response:(%s)"

    invoke-static {p0, p1, v0}, Lcom/oplus/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .registers 9

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/oplus/epona/Epona;->findComponent(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;

    move-result-object v6

    if-eqz v6, :cond_49

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getCallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v4

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->isAsync()Z

    move-result p1

    if-eqz p1, :cond_2b

    new-instance p1, Lcom/oplus/epona/interceptor/a;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/oplus/epona/interceptor/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;I)V

    invoke-interface {v6, p0, p1}, Lcom/oplus/epona/DynamicProvider;->onCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;)V

    goto :goto_48

    :cond_2b
    invoke-interface {v6, p0}, Lcom/oplus/epona/DynamicProvider;->onCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const/4 v0, 0x2

    aput-object v3, p1, v0

    const/4 v0, 0x3

    aput-object p0, p1, v0

    const-string v0, "Epona->CallComponentInterceptor"

    const-string v1, "Caller(%s) call component(%s) action(%s) response:(%s)"

    invoke-static {v0, v1, p1}, Lcom/oplus/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_48
    return-void

    :cond_49
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void
.end method
