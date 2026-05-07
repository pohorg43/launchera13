.class Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative;->requestPersistentGroupInfo(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$persistentGroupInfoListenerNative:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$1;->val$persistentGroupInfoListenerNative:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$1;->val$persistentGroupInfoListenerNative:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;

    invoke-static {}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;->onPersistentGroupInfoAvailable(Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;)V

    return-void
.end method
