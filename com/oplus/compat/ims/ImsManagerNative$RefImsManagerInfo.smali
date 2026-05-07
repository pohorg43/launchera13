.class Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/ims/ImsManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefImsManagerInfo"
.end annotation


# static fields
.field private static isEnhanced4gLteModeSettingEnabledByUser:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "isEnhanced4gLteModeSettingEnabledByUser"
        params = {}
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isVolteEnabledByPlatform:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "isVolteEnabledByPlatform"
        params = {}
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isVtEnabledByPlatform:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "isVtEnabledByPlatform"
        params = {}
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isVtEnabledByUser:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "isVtEnabledByUser"
        params = {}
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isWfcEnabledByPlatform:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "isWfcEnabledByPlatform"
        params = {}
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isWfcEnabledByUser:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "isWfcEnabledByUser"
        params = {}
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;

    const-class v1, Lcom/android/ims/ImsManager;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;->isVtEnabledByPlatform:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;->isWfcEnabledByPlatform:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;->isVolteEnabledByPlatform:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;->isVtEnabledByUser:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;->isWfcEnabledByUser:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$700()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$RefImsManagerInfo;->isEnhanced4gLteModeSettingEnabledByUser:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
