.class public Lcom/oplus/compat/os/storage/VolumeInfoNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mVolumeInfo:Landroid/os/storage/VolumeInfo;

.field private mVolumeInfoObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_e

    check-cast p1, Landroid/os/storage/VolumeInfo;

    iput-object p1, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    goto :goto_10

    :cond_e
    iput-object p1, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    :goto_10
    return-void
.end method

.method private static getFsUuidCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIdCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPathCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringPathCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isSdCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFsUuid()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getFsUuidCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getIdCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getPath()Ljava/io/File;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getPath()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getPathCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    :cond_2b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getStringPath()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    return-object p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->getStringPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->getStringPathCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getVolumeInfo()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-object p0

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    return-object p0

    :cond_12
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public isSd()Z
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0

    :cond_18
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/storage/VolumeInfoWrapper;->isSd()Z

    move-result p0

    return p0

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object p0, p0, Lcom/oplus/compat/os/storage/VolumeInfoNative;->mVolumeInfoObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->isSdCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
