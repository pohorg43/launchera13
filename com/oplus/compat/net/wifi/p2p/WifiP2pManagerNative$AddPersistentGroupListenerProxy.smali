.class Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddPersistentGroupListenerProxy"
.end annotation


# instance fields
.field private final mListener:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;->mListener:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAddPersistentGroupAdded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;->mListener:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;->onAddPersistentGroupAdded(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    const/4 p0, 0x0

    return-object p0

    :cond_18
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;->mListener:Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
