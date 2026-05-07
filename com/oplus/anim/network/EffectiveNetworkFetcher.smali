.class public interface abstract Lcom/oplus/anim/network/EffectiveNetworkFetcher;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract fetchSync(Ljava/lang/String;)Lcom/oplus/anim/network/EffectiveFetchResult;
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
