.class Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiP2pGroupListNativeReflectInfo"
.end annotation


# static fields
.field private static WifiP2pGroupListNative:Lcom/oplus/utils/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        params = {
            Landroid/net/wifi/p2p/WifiP2pGroupList;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;

    const-class v1, Lcom/oplus/compat/net/wifi/p2p/WifiP2pGroupListNative;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefConstructor;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;->WifiP2pGroupListNative:Lcom/oplus/utils/reflect/RefConstructor;

    return-object v0
.end method
