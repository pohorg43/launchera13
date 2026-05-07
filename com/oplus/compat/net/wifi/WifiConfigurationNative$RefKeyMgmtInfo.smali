.class Lcom/oplus/compat/net/wifi/WifiConfigurationNative$RefKeyMgmtInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/WifiConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefKeyMgmtInfo"
.end annotation


# static fields
.field private static DPP:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$RefKeyMgmtInfo;

    const-class v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$RefKeyMgmtInfo;->DPP:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method
