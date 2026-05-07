.class public Lcom/oplus/compat/net/ConnectivityManagerNative;
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
        Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.net.ConnectivityManager"

.field private static final CONSTANT_TETHERING_WIFI:Ljava/lang/String; = "TETHERING_WIFI"

.field private static final TAG:Ljava/lang/String; = "ConnectivityManagerNative"

.field public static TETHERING_WIFI:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const-string v1, "ConnectivityManagerNative"

    if-eqz v0, :cond_29

    const-string v0, "android.net.ConnectivityManager"

    const-string v2, "getConstant"

    invoke-static {v0, v2}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TETHERING_WIFI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/net/ConnectivityManagerNative;->TETHERING_WIFI:I

    goto :goto_2e

    :cond_23
    const-string v0, "Epona Communication failed, static initializer failed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_29
    const-string v0, "Not supported before R"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readArpFile(Landroid/net/ConnectivityManager;)Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/oplus/inner/net/ConnectivityManagerWrapper;->readArpFile(Landroid/net/ConnectivityManager;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/oplus/compat/net/ConnectivityManagerNative;->readArpFileCompat(Landroid/net/ConnectivityManager;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_24
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readArpFileCompat(Landroid/net/ConnectivityManager;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setAirplaneMode(Landroid/content/Context;Z)V
    .registers 3
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

    move-result p0

    if-eqz p0, :cond_37

    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.net.ConnectivityManager"

    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "setAirplaneMode"

    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "enable"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p0

    if-nez p0, :cond_36

    const-string p0, "ConnectivityManagerNative"

    const-string p1, "setAirplaneMode: call failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    :cond_37
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not Supported Before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static startTethering(IZLcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
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

    if-eqz v0, :cond_29

    const-string v0, "android.net.ConnectivityManager"

    const-string v1, "startTethering"

    const-string v2, "type"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "showProvisioningUi"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    if-eqz p2, :cond_46

    new-instance p1, Lcom/oplus/compat/net/ConnectivityManagerNative$1;

    invoke-direct {p1, p2}, Lcom/oplus/compat/net/ConnectivityManagerNative$1;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/epona/internal/RealCall;->asyncExecute(Lcom/oplus/epona/Call$Callback;)V

    goto :goto_46

    :cond_29
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    if-eqz p2, :cond_37

    new-instance v0, Lcom/oplus/compat/net/ConnectivityManagerNative$2;

    invoke-direct {v0, p2}, Lcom/oplus/compat/net/ConnectivityManagerNative$2;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    :cond_37
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "connectivity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p0, p1, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not Supported Before O"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;Landroid/os/Handler;)V
    .registers 13
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/oplus/compat/net/ConnectivityManagerNative$3;

    invoke-direct {v0, p3}, Lcom/oplus/compat/net/ConnectivityManagerNative$3;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_4d

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    if-eqz p3, :cond_1d

    new-instance v1, Lcom/oplus/compat/net/ConnectivityManagerNative$4;

    invoke-direct {v1, p3}, Lcom/oplus/compat/net/ConnectivityManagerNative$4;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    :cond_1d
    invoke-static {p0, p1, p2, v1, p4}, Lcom/oplus/inner/net/ConnectivityManagerWrapper;->startTethering(Landroid/net/ConnectivityManager;IZLcom/oplus/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;Landroid/os/Handler;)V

    goto :goto_4d

    :cond_21
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p3, :cond_4d

    new-instance v3, Lcom/oplus/compat/net/a;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/oplus/compat/net/a;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;I)V

    new-instance v4, Lcom/oplus/compat/net/a;

    const/4 v0, 0x1

    invoke-direct {v4, p3, v0}, Lcom/oplus/compat/net/a;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;I)V

    move-object v2, p0

    move-object v5, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lcom/oplus/compat/net/ConnectivityManagerNative;->startTetheringCompat(Landroid/net/ConnectivityManager;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;IZ)V

    goto :goto_4d

    :cond_3d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz p3, :cond_4a

    new-instance v1, Lcom/oplus/compat/net/ConnectivityManagerNative$5;

    invoke-direct {v1, p3}, Lcom/oplus/compat/net/ConnectivityManagerNative$5;-><init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    :cond_4a
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static startTetheringCompat(Landroid/net/ConnectivityManager;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;IZ)V
    .registers 6
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static stopTethering(I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
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

    if-eqz v0, :cond_37

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.net.ConnectivityManager"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "stopTethering"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p0

    if-nez p0, :cond_60

    const-string p0, "ConnectivityManagerNative"

    const-string v0, "stopTethering is not connected with Epona"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_37
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    const-string v1, "connectivity"

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0, p0}, Lcom/oplus/compat/net/ConnectivityManagerNative;->stopTetheringQCompat(Landroid/net/ConnectivityManager;I)V

    goto :goto_60

    :cond_4d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "Not Supported Before N"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static stopTetheringQCompat(Landroid/net/ConnectivityManager;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
