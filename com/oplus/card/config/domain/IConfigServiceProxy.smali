.class public interface abstract Lcom/oplus/card/config/domain/IConfigServiceProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;
    }
.end annotation


# virtual methods
.method public abstract registerCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
.end method

.method public abstract requestInitConfig()V
.end method

.method public abstract unregisterCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
.end method
