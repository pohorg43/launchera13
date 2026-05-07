.class public Lcom/oplus/compat/content/ContextNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/content/ContextNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static BIND_FOREGROUND_SERVICE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static BIND_FOREGROUND_SERVICE_WHILE_AWAKE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.content.Context"

.field private static final PACKAGE_MANAGER:Ljava/lang/String; = "package"

.field public static STATUS_BAR_SERVICE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_35

    const/high16 v1, 0x4000000

    const/high16 v2, 0x2000000

    const-string v3, "statusbar"

    if-eqz v0, :cond_13

    :try_start_c
    sput-object v3, Lcom/oplus/compat/content/ContextNative;->STATUS_BAR_SERVICE:Ljava/lang/String;

    sput v2, Lcom/oplus/compat/content/ContextNative;->BIND_FOREGROUND_SERVICE_WHILE_AWAKE:I

    sput v1, Lcom/oplus/compat/content/ContextNative;->BIND_FOREGROUND_SERVICE:I

    goto :goto_3f

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/oplus/compat/content/ContextNative;->initStatusBarService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/content/ContextNative;->STATUS_BAR_SERVICE:Ljava/lang/String;

    sput v2, Lcom/oplus/compat/content/ContextNative;->BIND_FOREGROUND_SERVICE_WHILE_AWAKE:I

    sput v1, Lcom/oplus/compat/content/ContextNative;->BIND_FOREGROUND_SERVICE:I

    goto :goto_3f

    :cond_26
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_2f

    sput-object v3, Lcom/oplus/compat/content/ContextNative;->STATUS_BAR_SERVICE:Ljava/lang/String;

    goto :goto_3f

    :cond_2f
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/HookApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "activity"

    invoke-static {p0, v0}, Lcom/oplus/tingle/ipc/Slave;->cleanSystemService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_10
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public static createCredentialProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/oplus/inner/content/ContextWrapper;->createCredentialProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p0}, Lcom/oplus/compat/content/ContextNative;->createCredentialProtectedStorageContextForCompat(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0

    :cond_23
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_2e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static createCredentialProtectedStorageContextForCompat(Landroid/content/Context;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/HookApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "package"

    invoke-static {p0, v0}, Lcom/oplus/tingle/ipc/Slave;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const-string v0, "ContextNative"

    const-string v1, "no permission to access the blocked method"

    invoke-static {p0, v0, v1, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/oplus/inner/content/ContextWrapper;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p0}, Lcom/oplus/compat/content/ContextNative;->getDisplayForCompat(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display;

    return-object p0

    :cond_2d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_38
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getDisplayForCompat(Landroid/content/Context;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSharedPreferencesPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1}, Lcom/oplus/inner/content/ContextWrapper;->getSharedPreferencesPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p0, p1}, Lcom/oplus/compat/content/ContextNative;->getSharedPreferencesPathForCompat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    :cond_23
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_2e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getSharedPreferencesPathForCompat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/oplus/compat/content/ContextNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    :cond_17
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public static getThemeResId(Landroid/content/Context;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    return p0

    :cond_b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static initStatusBarService()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static resetCreatePackageContextAsUser(Landroid/content/Context;)V
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "package"

    invoke-static {p0, v0}, Lcom/oplus/tingle/ipc/Slave;->resetBinderOrigin(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)V
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

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.Context"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "startActivity"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    :cond_39
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p1, p0, p2}, Lcom/oplus/compat/content/ContextNative;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
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

    if-eqz v0, :cond_35

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.Context"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "startActivityAsUser"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "Intent"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "Bundle"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "UserHandle"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    goto :goto_50

    :cond_35
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/compat/content/ContextNative;->startActivityAsUserForCompat(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_50

    :cond_43
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_50
    return-void

    :cond_51
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static startActivityAsUserForCompat(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 4
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static startActivityAsUserForCompat(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
