.class public Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkIccSmsStorageStatusNative"


# instance fields
.field private mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

.field private mMtkIccSmsStorageStatusWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    goto :goto_25

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Ljava/lang/Object;

    goto :goto_25

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    goto :goto_25

    :cond_1e
    const-string p0, "MtkIccSmsStorageStatusNative"

    const-string p1, "Not supported before O: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method private static getTotalCountCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUsedCountCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTotalCount()I
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;->getTotalCount()I

    move-result p0

    return p0

    :cond_29
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->getTotalCountCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_55
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getUsedCount()I
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;->getUsedCount()I

    move-result p0

    return p0

    :cond_29
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->getUsedCountCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_55
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
