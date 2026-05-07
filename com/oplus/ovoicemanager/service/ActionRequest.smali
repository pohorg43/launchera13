.class public Lcom/oplus/ovoicemanager/service/ActionRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/ovoicemanager/service/ActionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionId:Ljava/lang/String;

.field private callArgs:Ljava/lang/String;

.field private callerType:Ljava/lang/String;

.field private sessionCode:Ljava/lang/String;

.field private uriPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/ovoicemanager/service/ActionRequest$1;

    invoke-direct {v0}, Lcom/oplus/ovoicemanager/service/ActionRequest$1;-><init>()V

    sput-object v0, Lcom/oplus/ovoicemanager/service/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/oplus/ovoicemanager/service/ActionRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->sessionCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->uriPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callArgs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->actionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getActionId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->actionId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallArgs()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callArgs:Ljava/lang/String;

    return-object p0
.end method

.method public getCallerType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callerType:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionCode()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->sessionCode:Ljava/lang/String;

    return-object p0
.end method

.method public getUriPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->uriPath:Ljava/lang/String;

    return-object p0
.end method

.method public setActionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->actionId:Ljava/lang/String;

    return-void
.end method

.method public setCallArgs(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callArgs:Ljava/lang/String;

    return-void
.end method

.method public setCallerType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callerType:Ljava/lang/String;

    return-void
.end method

.method public setSessionCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->sessionCode:Ljava/lang/String;

    return-void
.end method

.method public setUriPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->uriPath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->sessionCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->uriPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->callArgs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/ActionRequest;->actionId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
