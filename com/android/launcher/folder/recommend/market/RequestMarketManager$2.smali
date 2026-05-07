.class Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied. name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestMarketManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$102(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Lcom/oplus/market/aidl/IApiEngine;)Lcom/oplus/market/aidl/IApiEngine;

    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$200()Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$402(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Z)Z

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p0

    const/16 p1, 0x6be

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_41
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "RequestMarketManager"

    const-string/jumbo v0, "onServiceConnected: "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p2}, Lcom/oplus/market/aidl/IApiEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/market/aidl/IApiEngine;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$102(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Lcom/oplus/market/aidl/IApiEngine;)Lcom/oplus/market/aidl/IApiEngine;

    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$200()Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/folder/download/MarketServiceManager;->addServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p1

    const/16 p2, 0x6ba

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2f
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$402(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected. name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestMarketManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$102(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Lcom/oplus/market/aidl/IApiEngine;)Lcom/oplus/market/aidl/IApiEngine;

    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$200()Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p0

    const/16 p1, 0x6c2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3b
    return-void
.end method
