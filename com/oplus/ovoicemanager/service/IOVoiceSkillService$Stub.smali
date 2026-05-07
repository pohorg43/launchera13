.class public abstract Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.ovoicemanager.service.IOVoiceSkillService"

.field public static final TRANSACTION_onResult:I = 0x3

.field public static final TRANSACTION_registerActionExecutionListener:I = 0x4

.field public static final TRANSACTION_registerListener:I = 0x1

.field public static final TRANSACTION_registerPendingIntent:I = 0x2

.field public static final TRANSACTION_unregisterActionExecutionListener:I = 0x5

.field public static final TRANSACTION_unregisterActionExecutionListenerByAppID:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;
    .registers 1

    sget-object v0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;)Z
    .registers 2

    sget-object v0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    sput-object p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    if-eq p1, v0, :cond_ac

    packed-switch p1, :pswitch_data_b0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_10  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListenerByAppID(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_22  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_38  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ovoicemanager/service/ISkillListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerActionExecutionListener(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_56  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->onResult(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_70  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_86

    sget-object p4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    goto :goto_87

    :cond_86
    const/4 p2, 0x0

    :goto_87
    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_92  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ovoicemanager/service/ISkillListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerListener(Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_ac
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_92  #00000001
        :pswitch_70  #00000002
        :pswitch_56  #00000003
        :pswitch_38  #00000004
        :pswitch_22  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method
