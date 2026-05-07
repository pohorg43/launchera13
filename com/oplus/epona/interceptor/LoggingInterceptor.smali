.class public Lcom/oplus/epona/interceptor/LoggingInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->LoggingInterceptor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .registers 4

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/Epona;->findProviderComponent(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/oplus/epona/provider/ProviderInfo;->needLog()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/oplus/epona/Request;->toFullString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Lcom/oplus/epona/Request;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Epona->LoggingInterceptor"

    invoke-static {v1, p0, v0}, Lcom/oplus/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void
.end method
