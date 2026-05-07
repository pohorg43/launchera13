.class public abstract Lcom/oplus/ovoicemanager/service/ISkillListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/ovoicemanager/service/ISkillListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ovoicemanager/service/ISkillListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ovoicemanager/service/ISkillListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.ovoicemanager.service.ISkillListener"

.field public static final TRANSACTION_onActionExecution:I = 0x2

.field public static final TRANSACTION_onCancel:I = 0x1

.field public static final TRANSACTION_onValueChanged:I = 0x3

.field public static final TRANSACTION_startAction:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.ovoicemanager.service.ISkillListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/ovoicemanager/service/ISkillListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplus.ovoicemanager.service.ISkillListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/ovoicemanager/service/ISkillListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/ovoicemanager/service/ISkillListener;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/ovoicemanager/service/ISkillListener;
    .registers 1

    sget-object v0, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub$Proxy;->sDefaultImpl:Lcom/oplus/ovoicemanager/service/ISkillListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oplus/ovoicemanager/service/ISkillListener;)Z
    .registers 2

    sget-object v0, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub$Proxy;->sDefaultImpl:Lcom/oplus/ovoicemanager/service/ISkillListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    sput-object p0, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub$Proxy;->sDefaultImpl:Lcom/oplus/ovoicemanager/service/ISkillListener;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.oplus.ovoicemanager.service.ISkillListener"

    if-eq p1, v0, :cond_66

    const/4 v2, 0x2

    if-eq p1, v2, :cond_50

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_18
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2e

    sget-object p1, Lcom/oplus/ovoicemanager/service/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/ovoicemanager/service/ActionRequest;

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/ISkillListener;->startAction(Lcom/oplus/ovoicemanager/service/ActionRequest;Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/ISkillListener;->onValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplus/ovoicemanager/service/ISkillListener;->onActionExecution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_66
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/ovoicemanager/service/ISkillListener;->onCancel(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
