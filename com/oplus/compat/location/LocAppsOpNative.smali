.class public Lcom/oplus/compat/location/LocAppsOpNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mLocAppsOp:Landroid/location/LocAppsOp;

.field private mLocAppsOpWrapperCompat:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/location/LocAppsOp;

    invoke-direct {v0}, Landroid/location/LocAppsOp;-><init>()V

    iput-object v0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    goto :goto_1d

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/oplus/compat/location/LocAppsOpNative;->initCompat()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOpWrapperCompat:Ljava/lang/Object;

    :goto_1d
    return-void

    :cond_1e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getAppsOpCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOpLevelCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static initCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static setAppOpCompat(Ljava/lang/String;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setAppsOpCompat(Ljava/util/HashMap;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static setOpLevelCompat(I)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method


# virtual methods
.method public getAppsOp()Ljava/util/HashMap;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    invoke-virtual {p0}, Landroid/location/LocAppsOp;->getAppsOp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/oplus/compat/location/LocAppsOpNative;->getAppsOpCompat()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0

    :cond_1a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getLocAppsOpWrapper()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    return-object p0

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOpWrapperCompat:Ljava/lang/Object;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpLevel()I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    invoke-virtual {p0}, Landroid/location/LocAppsOp;->getOpLevel()I

    move-result p0

    return p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/oplus/compat/location/LocAppsOpNative;->getOpLevelCompat()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public setAppOp(Ljava/lang/String;I)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    invoke-virtual {p0, p1, p2}, Landroid/location/LocAppsOp;->setAppOp(Ljava/lang/String;I)V

    goto :goto_15

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p1, p2}, Lcom/oplus/compat/location/LocAppsOpNative;->setAppOpCompat(Ljava/lang/String;I)V

    :goto_15
    return-void

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public setAppsOp(Ljava/util/HashMap;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    invoke-virtual {p0, p1}, Landroid/location/LocAppsOp;->setAppsOp(Ljava/util/HashMap;)V

    goto :goto_15

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p1}, Lcom/oplus/compat/location/LocAppsOpNative;->setAppsOpCompat(Ljava/util/HashMap;)V

    :goto_15
    return-void

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public setOpLevel(I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/oplus/compat/location/LocAppsOpNative;->mLocAppsOp:Landroid/location/LocAppsOp;

    invoke-virtual {p0, p1}, Landroid/location/LocAppsOp;->setOpLevel(I)V

    goto :goto_15

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p1}, Lcom/oplus/compat/location/LocAppsOpNative;->setOpLevelCompat(I)V

    :goto_15
    return-void

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
