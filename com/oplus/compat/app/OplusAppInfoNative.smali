.class public Lcom/oplus/compat/app/OplusAppInfoNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation


# instance fields
.field public displayId:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public extension:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public isRootActivity:Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public launchedFromPackage:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public orientation:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public userId:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/app/OplusAppInfo;)V
    .registers 3
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p1, Lcom/oplus/app/OplusAppInfo;->displayId:I

    iput v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->displayId:I

    iget v0, p1, Lcom/oplus/app/OplusAppInfo;->orientation:I

    iput v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->orientation:I

    iget v0, p1, Lcom/oplus/app/OplusAppInfo;->userId:I

    iput v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->userId:I

    iget-object v0, p1, Lcom/oplus/app/OplusAppInfo;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/oplus/app/OplusAppInfo;->isRootActivity:Z

    iput-boolean v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->isRootActivity:Z

    iget-object p1, p1, Lcom/oplus/app/OplusAppInfo;->extension:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->extension:Landroid/os/Bundle;

    return-void

    :cond_22
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p1}, Lcom/oplus/compat/app/OplusAppInfoNative;->initDisplayIdForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->displayId:I

    invoke-static {p1}, Lcom/oplus/compat/app/OplusAppInfoNative;->initOrientationForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->orientation:I

    invoke-static {p1}, Lcom/oplus/compat/app/OplusAppInfoNative;->initUserIdForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->userId:I

    invoke-static {p1}, Lcom/oplus/compat/app/OplusAppInfoNative;->initLaunchedFromPackageForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->launchedFromPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/compat/app/OplusAppInfoNative;->initRootActivityForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->isRootActivity:Z

    invoke-static {p1}, Lcom/oplus/compat/app/OplusAppInfoNative;->initExtensionForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/oplus/compat/app/OplusAppInfoNative;->extension:Landroid/os/Bundle;

    return-void

    :cond_50
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initDisplayIdForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initExtensionForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initLaunchedFromPackageForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initOrientationForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initRootActivityForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initUserIdForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
