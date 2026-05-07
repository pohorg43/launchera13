.class public final Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    invoke-direct {p0, p1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;
    .registers 2

    new-array p0, p1, [Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;->newArray(I)[Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    move-result-object p0

    return-object p0
.end method
