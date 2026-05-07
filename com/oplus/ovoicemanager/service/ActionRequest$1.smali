.class final Lcom/oplus/ovoicemanager/service/ActionRequest$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ovoicemanager/service/ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/ovoicemanager/service/ActionRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/ovoicemanager/service/ActionRequest;
    .registers 2

    new-instance p0, Lcom/oplus/ovoicemanager/service/ActionRequest;

    invoke-direct {p0, p1}, Lcom/oplus/ovoicemanager/service/ActionRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/ovoicemanager/service/ActionRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/ovoicemanager/service/ActionRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/ovoicemanager/service/ActionRequest;
    .registers 2

    new-array p0, p1, [Lcom/oplus/ovoicemanager/service/ActionRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/ovoicemanager/service/ActionRequest$1;->newArray(I)[Lcom/oplus/ovoicemanager/service/ActionRequest;

    move-result-object p0

    return-object p0
.end method
