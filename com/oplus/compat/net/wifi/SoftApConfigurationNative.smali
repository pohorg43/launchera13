.class public Lcom/oplus/compat/net/wifi/SoftApConfigurationNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static BAND_DUAL:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field

.field public static SECURITY_TYPE_OWE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field

.field public static SECURITY_TYPE_SAE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SoftApConfigurationNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative;->SECURITY_TYPE_OWE:I

    invoke-static {}, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative;->SECURITY_TYPE_SAE:I

    invoke-static {}, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative;->BAND_DUAL:I

    goto :goto_2d

    :cond_26
    const-string v0, "SoftApConfigurationNative"

    const-string v1, "not support before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
