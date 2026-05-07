.class public interface abstract Lcom/oplus/epona/Interceptor$Chain;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract callback()Lcom/oplus/epona/Call$Callback;
.end method

.method public abstract isAsync()Z
.end method

.method public abstract proceed()V
.end method

.method public abstract request()Lcom/oplus/epona/Request;
.end method
