.class public Lcom/oplus/anim/network/DefaultEffectiveNetworkFetcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/network/EffectiveNetworkFetcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchSync(Ljava/lang/String;)Lcom/oplus/anim/network/EffectiveFetchResult;
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance p1, Lcom/oplus/anim/network/DefaultEffectiveFetchResult;

    invoke-direct {p1, p0}, Lcom/oplus/anim/network/DefaultEffectiveFetchResult;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
