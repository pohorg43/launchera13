.class public abstract Lcom/heytap/assist/ILauncherDragCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/assist/ILauncherDragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/assist/ILauncherDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/assist/ILauncherDragCallback$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addCardToLauncher:I = 0x8

.field public static final TRANSACTION_getSingleCardNum:I = 0x4

.field public static final TRANSACTION_onEditStateChanged:I = 0x2

.field public static final TRANSACTION_onSyncEvent:I = 0x7

.field public static final TRANSACTION_onWidgetDragEnd:I = 0x3

.field public static final TRANSACTION_requestBindAppWidgetPermission:I = 0x6

.field public static final TRANSACTION_sendCardInfoList:I = 0x5

.field public static final TRANSACTION_startWidgetDrag:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherDragCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.assist.ILauncherDragCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/assist/ILauncherDragCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/assist/ILauncherDragCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;
    .registers 1

    sget-object v0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->b:Lcom/heytap/assist/ILauncherDragCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/assist/ILauncherDragCallback;)Z
    .registers 2

    sget-object v0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->b:Lcom/heytap/assist/ILauncherDragCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->b:Lcom/heytap/assist/ILauncherDragCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7b

    packed-switch p1, :pswitch_data_80

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_10  #0x8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->addCardToLauncher(I)V

    return v0

    :pswitch_1b  #0x7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->onSyncEvent(I)V

    return v0

    :pswitch_26  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->requestBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_38  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->sendCardInfoList(Ljava/lang/String;)V

    return v0

    :pswitch_43  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->getSingleCardNum(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_55  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->onWidgetDragEnd(Ljava/lang/String;)V

    return v0

    :pswitch_60  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6b

    move p1, v0

    goto :goto_6c

    :cond_6b
    const/4 p1, 0x0

    :goto_6c
    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->onEditStateChanged(Z)V

    return v0

    :pswitch_70  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->startWidgetDrag(Ljava/lang/String;)V

    return v0

    :cond_7b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_70  #00000001
        :pswitch_60  #00000002
        :pswitch_55  #00000003
        :pswitch_43  #00000004
        :pswitch_38  #00000005
        :pswitch_26  #00000006
        :pswitch_1b  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method
