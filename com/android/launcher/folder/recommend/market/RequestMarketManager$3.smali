.class Lcom/android/launcher/folder/recommend/market/RequestMarketManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$3;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "RequestMarketManager"

    const-string v1, "mAutoUnbindService Runnable is running."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$3;->this$0:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->setCallbackRegisterFailed()V

    return-void
.end method
