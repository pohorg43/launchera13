.class public Lcom/oplus/compat/content/pm/OplusArtManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/content/pm/OplusArtManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/compat/content/pm/OplusArtManagerNative;->getComponentName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/content/pm/OplusArtManagerNative;->COMPONENT_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/compat/content/pm/OplusArtManagerNative;->COMPONENT_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private static getComponentName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.content.pm.dex.OplusArtManager"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/compat/content/pm/OplusArtManagerNative;->getComponentNameForCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getComponentNameForCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static runSnapshotApplicationProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/content/pm/dex/OplusArtManager;->runSnapshotApplicationProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    sget-object v2, Lcom/oplus/compat/content/pm/OplusArtManagerNative;->COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v2, "runSnapshotApplicationProfile"

    invoke-virtual {v0, v2}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v2, "packageName"

    invoke-virtual {v0, v2, p0}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "outputProfilePath"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_54
    return v1

    :cond_55
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oplus/compat/content/pm/OplusArtManagerNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const/4 p0, 0x1

    aput-object v0, v4, p0

    const/4 p0, 0x2

    aput-object p1, v4, p0

    invoke-virtual {v2, v3, v4}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_7e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
