.class public Lcom/oplus/compat/app/KeyguardManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/KeyguardManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.KeyguardManager"

.field private static final CONSTANT_ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "ACTION_CONFIRM_DEVICE_CREDENTIAL"

.field private static final TAG:Ljava/lang/String; = "KeyguardManagerNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/oplus/compat/app/KeyguardManagerNative;->initConstant()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initConstant()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "KeyguardManagerNative"

    :try_start_2
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    sput-object v1, Lcom/oplus/compat/app/KeyguardManagerNative;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;

    goto :goto_6b

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v1}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v2, "android.app.KeyguardManager"

    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    const-string v2, "const"

    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ACTION_CONFIRM_DEVICE_CREDENTIAL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/app/KeyguardManagerNative;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;

    goto :goto_6b

    :cond_43
    const-string v1, "Epona Communication failed, static initializer failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_49
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/oplus/compat/app/KeyguardManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/app/KeyguardManagerNative;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;

    goto :goto_6b

    :cond_5d
    const-string v1, "not supported before Q"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_63

    goto :goto_6b

    :catchall_63
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    return-void
.end method
