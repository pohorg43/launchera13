.class public interface abstract Lcom/oplus/epona/Call;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/epona/Call$Callback;
    }
.end annotation


# virtual methods
.method public abstract asyncExecute(Lcom/oplus/epona/Call$Callback;)V
.end method

.method public abstract execute()Lcom/oplus/epona/Response;
.end method

.method public abstract request()Lcom/oplus/epona/Request;
.end method
