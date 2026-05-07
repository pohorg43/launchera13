.class public Lcom/oplus/compat/media/MediaRouterInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/compat/media/MediaRouterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_AVAILABLE:I = 0x3

.field public static final STATUS_CONNECTED:I = 0x6

.field public static final STATUS_CONNECTING:I = 0x2

.field public static final STATUS_IN_USE:I = 0x5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NOT_AVAILABLE:I = 0x4

.field public static final STATUS_SCANNING:I = 0x1


# instance fields
.field public mDescription:Ljava/lang/String;

.field public mDeviceAddress:Ljava/lang/String;

.field public mDeviceType:I

.field public mGlobalRouteId:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNameResId:I

.field public mPresentationDisplayId:I

.field public mResolvedStatusCode:I

.field public mSupportedTypes:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/compat/media/MediaRouterInfo$1;

    invoke-direct {v0}, Lcom/oplus/compat/media/MediaRouterInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/compat/media/MediaRouterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    iput v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    iput v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    iput v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    :cond_12
    check-cast p1, Lcom/oplus/compat/media/MediaRouterInfo;

    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    :cond_21
    iget-object v2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v3, p1, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    :cond_2e
    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz p0, :cond_3c

    iget-object p1, p1, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v1

    :cond_3c
    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    return p0
.end method

.method public getGlobalRouteId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNameResId()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    return p0
.end method

.method public getPresentationDisplayId()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    return p0
.end method

.method public getResolvedStatusCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return p0
.end method

.method public getSupportedTypes()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDeviceAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    return-void
.end method

.method public setGlobalRouteId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNameResId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    return-void
.end method

.method public setPresentationDisplayId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    return-void
.end method

.method public setResolvedStatusCode(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    return-void
.end method

.method public setSupportedTypes(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "MediaRouterInfo{mName=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mNameResId="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    const-string v3, ", mSupportedTypes="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPresentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    const-string v3, ", mGlobalRouteId=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    const-string v3, ", mResolvedStatusCode="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mNameResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mSupportedTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mPresentationDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/compat/media/MediaRouterInfo;->mResolvedStatusCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
