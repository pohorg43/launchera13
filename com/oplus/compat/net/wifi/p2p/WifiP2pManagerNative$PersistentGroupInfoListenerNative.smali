.class public interface abstract Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PersistentGroupInfoListenerNative"
.end annotation


# virtual methods
.method public abstract onPersistentGroupInfoAvailable(Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public onPersistentGroupInfoAvailableCompat(Ljava/lang/Object;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;

    invoke-direct {v0, p1}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;->onPersistentGroupInfoAvailable(Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;)V

    return-void
.end method
