.class public Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;
    }
.end annotation


# instance fields
.field private mWifiP2pGroupList:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mWifiP2pGroupListWrapper:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupList:Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupListWrapper:Ljava/lang/Object;

    return-void
.end method

.method private static getGroupListOCopmat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getGroupList()Ljava/util/Collection;
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupList:Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupListWrapper:Ljava/lang/Object;

    if-nez p0, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    invoke-static {p0}, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;->getGroupListOCopmat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
