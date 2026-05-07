.class public Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;


# instance fields
.field private final mOplusConfineModeManager:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->mOplusConfineModeManager:Ljava/lang/Object;

    return-void
.end method

.method private static getConfineModeForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    invoke-static {}, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    :cond_1d
    sget-object v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    return-object v0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    if-nez v0, :cond_35

    new-instance v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    invoke-static {}, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->getInstanceForQ()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    :cond_35
    sget-object v0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;

    return-object v0

    :cond_38
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInstanceForQ()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getConfineMode()I
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/confinemode/OplusConfineModeManager;->getInstance()Lcom/oplus/confinemode/OplusConfineModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/confinemode/OplusConfineModeManager;->getConfineMode()I

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->mOplusConfineModeManager:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/app/confinemode/OplusConfineModeManagerNative;->getConfineModeForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_22
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not support before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
