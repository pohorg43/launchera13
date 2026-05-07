.class public Lcom/oplus/compat/fingerprint/FingerprintManagerNative;
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
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$EngineeringInfoCallbackProxy;,
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;,
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;,
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;,
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$RefOplusFingerprintManagerInfo;,
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ReflectFingerprintNativeInfo;,
        Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.hardware.fingerprint"

.field private static final KEY_FINGER_PRINT:Ljava/lang/String; = "fingerprint"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "FingerprintManagerNative"

.field private static sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

.field private static final sOplusFingerprintManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/fingerprint/OplusFingerprintManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManagerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelGetEngineeringInfo(I)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "android.hardware.fingerprint"

    const-string v1, "cancelGetEngineeringInfo"

    const-string v2, "type"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "cancelGetEngineeringInfo: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FingerprintManagerNative"

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4b

    :cond_28
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ReflectInfo;->access$700()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_52
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "need not cancel GetEngineeringInfo"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createEngineeringInfoCallbackProxy()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$EngineeringInfoCallbackProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$EngineeringInfoCallbackProxy;-><init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;)V

    :try_start_6
    const-string v2, "android.hardware.fingerprint.FingerprintManager$EngineeringInfoCallback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_24

    :catch_d
    move-exception v2

    const-string v3, "FingerprintManager$EngineeringInfoCallback class not found: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintManagerNative"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getEngineeringInfo(II)I
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getEngineeringInfo"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "sensorId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_46
    const-string p1, "FingerprintManagerNative"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEngineeringInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_62
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->createEngineeringInfoCallbackProxy()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ReflectInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/oplus/utils/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_94
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in T, use getFingerprintExtraInfo(LFingerprintExtraInfoCallbackNative;II) api in T"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a4
    .catchall {:try_start_0 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getEnrolledFingerprints(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "I)",
            "Ljava/util/List<",
            "Lcom/oplus/compat/fingerprint/FingerprintNative;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_46

    :try_start_b
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ReflectFingerprintNativeInfo;->access$000()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/compat/fingerprint/FingerprintNative;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_b .. :try_end_3a} :catch_3c

    goto :goto_1b

    :cond_3b
    return-object v0

    :catch_3c
    move-exception p0

    const-string p1, "FingerprintManagerNative"

    const-string v0, "no permission to access the blocked method"

    invoke-static {p0, p1, v0, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_46
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFailedAttempts(Landroid/content/Context;)I
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_6
    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getOplusFingerprintManager()Landroid/hardware/fingerprint/OplusFingerprintManager;

    move-result-object p0

    sput-object p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getFailedAttempts()I

    move-result p0
    :try_end_10
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    const-string v0, "FingerprintManagerNative"

    const-string v1, "no permission to access the blocked method"

    invoke-static {p0, v0, v1, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_1b
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getFailedAttempts(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result p0

    return p0
.end method

.method public static getFailedAttempts(Landroid/hardware/fingerprint/FingerprintManager;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper;->getFailedAttempts(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result p0

    return p0

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getFailedAttemptsCompat(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_22
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getFailedAttemptsCompat(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFingerprintExtraInfo(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;Landroid/os/CancellationSignal;II)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x20
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.FINGERPRINT"
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_61

    :try_start_6
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/OplusFingerprintManager;-><init>(Landroid/content/Context;)V

    const-string v1, "android.hardware.fingerprint.OplusFingerprintManager$FingerprintExtraInfoCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;-><init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p0, v4, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getFingerprintExtraInfo"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v5

    const-class v1, Landroid/os/CancellationSignal;

    aput-object v1, v7, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v9, 0x3

    aput-object v1, v7, v9

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v9

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_61
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public static getLockoutAttemptDeadline(Landroid/content/Context;I)J
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_6
    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getOplusFingerprintManager()Landroid/hardware/fingerprint/OplusFingerprintManager;

    move-result-object p0

    sput-object p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getLockoutAttemptDeadline(I)J

    move-result-wide p0
    :try_end_10
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_10} :catch_11

    return-wide p0

    :catch_11
    move-exception p0

    const-string p1, "FingerprintManagerNative"

    const-string v0, "no permission to access the blocked method"

    invoke-static {p0, p1, v0, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_1b
    const-string p1, "fingerprint"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getLockoutAttemptDeadline(Landroid/hardware/fingerprint/FingerprintManager;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLockoutAttemptDeadline(Landroid/hardware/fingerprint/FingerprintManager;)J
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_16

    if-nez p0, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper;->getLockoutAttemptDeadline(Landroid/hardware/fingerprint/FingerprintManager;)J

    move-result-wide v1

    :goto_15
    return-wide v1

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-nez p0, :cond_1f

    goto :goto_29

    :cond_1f
    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getLockoutAttemptDeadlineCompat(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_29
    return-wide v1

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getLockoutAttemptDeadlineCompat(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOplusFingerprintManager()Landroid/hardware/fingerprint/OplusFingerprintManager;
    .registers 3

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    if-eqz v0, :cond_1d

    sget-object v1, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManagerMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/OplusFingerprintManager;

    sput-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    goto :goto_37

    :cond_1d
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/OplusFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    sget-object v1, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManagerMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    sget-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    return-object v0

    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasEnrolledTemplates(I)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "android.hardware.fingerprint"

    const-string v1, "hasEnrolledTemplates"

    const-string v2, "userId"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    const-string p0, "FingerprintManagerNative"

    const-string v0, "Failed to connect with AppPlatForm"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hideFingerprintIcon(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getOplusFingerprintManager()Landroid/hardware/fingerprint/OplusFingerprintManager;

    move-result-object p0

    sput-object p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$RefOplusFingerprintManagerInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p0

    sget-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_19
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->hideFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V

    :goto_24
    return-void
.end method

.method public static hideFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper;->hideFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V

    goto :goto_19

    :cond_10
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->hideFingerprintIconCompat(Landroid/hardware/fingerprint/FingerprintManager;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static hideFingerprintIconCompat(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static registerOpticalFingerprintListener(Landroid/hardware/fingerprint/FingerprintManager;Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_35

    :try_start_2
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;

    invoke-direct {v0, p1}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;-><init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V

    invoke-static {p0, v0}, Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper;->regsiterOpticalFingerprintListener(Landroid/hardware/fingerprint/FingerprintManager;Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper$OpticalFingerprintListenerCallbackWrapper;)V

    goto :goto_35

    :cond_17
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcom/android/launcher3/model/g0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/g0;-><init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V

    invoke-static {p0, v0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->regsiterOpticalFingerprintListenerCompat(Landroid/hardware/fingerprint/FingerprintManager;Ljava/util/function/IntConsumer;)V

    goto :goto_35

    :cond_26
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in S"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_35
    :goto_35
    return-void
.end method

.method private static regsiterOpticalFingerprintListenerCompat(Landroid/hardware/fingerprint/FingerprintManager;Ljava/util/function/IntConsumer;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static remove(Lcom/oplus/compat/fingerprint/FingerprintNative;I)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ReflectFingerprintNativeInfo;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_4b

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void

    :cond_4c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFingerprintIcon(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_23

    :try_start_6
    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->getOplusFingerprintManager()Landroid/hardware/fingerprint/OplusFingerprintManager;

    move-result-object p0

    sput-object p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$RefOplusFingerprintManagerInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p0

    sget-object v0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->sOplusFingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_2e

    :catch_19
    move-exception p0

    const-string v0, "FingerprintManagerNative"

    const-string v1, "no permission to access the blocked method"

    invoke-static {p0, v0, v1, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_23
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->showFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V

    :goto_2e
    return-void
.end method

.method private static showFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper;->showFingerprintIcon(Landroid/hardware/fingerprint/FingerprintManager;)V

    goto :goto_19

    :cond_10
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->showFingerprintIconCompat(Landroid/hardware/fingerprint/FingerprintManager;)V

    :goto_19
    return-void

    :cond_1a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static showFingerprintIconCompat(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
