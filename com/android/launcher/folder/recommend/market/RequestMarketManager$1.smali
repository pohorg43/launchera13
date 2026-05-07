.class Lcom/android/launcher/folder/recommend/market/RequestMarketManager$1;
.super Lcom/oplus/market/aidl/IApiResponse$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/recommend/market/RequestMarketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$1;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-direct {p0}, Lcom/oplus/market/aidl/IApiResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$1;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$000(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/market/CallMarket;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/market/CallMarket;->onRemoteResponse(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-void
.end method
