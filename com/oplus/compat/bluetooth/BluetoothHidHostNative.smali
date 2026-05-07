.class public Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;,
        Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoS;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothHidHostNative"


# instance fields
.field private mBluetoothHidHost:Ljava/lang/Object;

.field private mBluetoothHidHostWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p1, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHost:Ljava/lang/Object;

    goto :goto_22

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion12_0()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->access$000()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Ljava/lang/Object;

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoS;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHost:Ljava/lang/Object;

    check-cast p0, Landroid/bluetooth/BluetoothHidHost;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion12_0()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before os12.0"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoS;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHost:Ljava/lang/Object;

    check-cast p0, Landroid/bluetooth/BluetoothHidHost;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion12_0()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->access$400()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before os12.0"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoS;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHost:Ljava/lang/Object;

    check-cast p0, Landroid/bluetooth/BluetoothHidHost;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion12_0()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->access$600()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before os12.0"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
