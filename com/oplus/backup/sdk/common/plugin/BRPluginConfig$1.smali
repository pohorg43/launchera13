.class final Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .registers 3

    new-instance p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;-><init>(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->access$102(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->access$202(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .registers 2

    new-array p0, p1, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;->newArray(I)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method
