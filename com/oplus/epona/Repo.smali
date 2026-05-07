.class public interface abstract Lcom/oplus/epona/Repo;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract findProvider(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;
.end method

.method public abstract findProviderProviderInfo(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;
.end method

.method public abstract findRouteInfo(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;
.end method

.method public abstract registerProvider(Lcom/oplus/epona/DynamicProvider;)V
.end method

.method public abstract registerProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V
.end method

.method public abstract registerRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V
.end method

.method public abstract unRegisterProvider(Lcom/oplus/epona/DynamicProvider;)V
.end method

.method public abstract unRegisterProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V
.end method

.method public abstract unRegisterRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V
.end method
