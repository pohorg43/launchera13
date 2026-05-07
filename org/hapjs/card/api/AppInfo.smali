.class public Lorg/hapjs/card/api/AppInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/hapjs/card/api/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMinPlatformVersion:I

.field private mName:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/hapjs/card/api/AppInfo$1;

    invoke-direct {v0}, Lorg/hapjs/card/api/AppInfo$1;-><init>()V

    sput-object v0, Lorg/hapjs/card/api/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hapjs/card/api/AppInfo;->mPackage:Ljava/lang/String;

    iput-object p2, p0, Lorg/hapjs/card/api/AppInfo;->mName:Ljava/lang/String;

    iput-object p3, p0, Lorg/hapjs/card/api/AppInfo;->mVersionName:Ljava/lang/String;

    iput p4, p0, Lorg/hapjs/card/api/AppInfo;->mVersionCode:I

    iput p5, p0, Lorg/hapjs/card/api/AppInfo;->mMinPlatformVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMinPlatformVersion()I
    .registers 1

    iget p0, p0, Lorg/hapjs/card/api/AppInfo;->mMinPlatformVersion:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/hapjs/card/api/AppInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/hapjs/card/api/AppInfo;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()I
    .registers 1

    iget p0, p0, Lorg/hapjs/card/api/AppInfo;->mVersionCode:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/hapjs/card/api/AppInfo;->mVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lorg/hapjs/card/api/AppInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/hapjs/card/api/AppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/hapjs/card/api/AppInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lorg/hapjs/card/api/AppInfo;->mVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lorg/hapjs/card/api/AppInfo;->mMinPlatformVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
