.class public Landroid/window/StartingWindowInfo$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/StartingWindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/StartingWindowInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance p0, Landroid/window/StartingWindowInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/StartingWindowInfo;-><init>(Landroid/os/Parcel;Landroid/window/StartingWindowInfo$a;)V

    return-object p0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Landroid/window/StartingWindowInfo;

    return-object p0
.end method
