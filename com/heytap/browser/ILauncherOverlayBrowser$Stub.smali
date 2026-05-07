.class public abstract Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/browser/ILauncherOverlayBrowser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/browser/ILauncherOverlayBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_closeOverlay:I = 0x5

.field public static final TRANSACTION_endScrollWithVelocity:I = 0xd

.field public static final TRANSACTION_onDestory:I = 0xa

.field public static final TRANSACTION_onPause:I = 0x7

.field public static final TRANSACTION_onProfileChanged:I = 0xb

.field public static final TRANSACTION_onResume:I = 0x8

.field public static final TRANSACTION_onScroll:I = 0x2

.field public static final TRANSACTION_onStart:I = 0x6

.field public static final TRANSACTION_onStop:I = 0x9

.field public static final TRANSACTION_openAlphaOverlay:I = 0xc

.field public static final TRANSACTION_startScroll:I = 0x1

.field public static final TRANSACTION_terminal:I = 0xe

.field public static final TRANSACTION_windowAttached:I = 0x3

.field public static final TRANSACTION_windowDetached:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/browser/ILauncherOverlayBrowser;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/browser/ILauncherOverlayBrowser;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;
    .registers 1

    sget-object v0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->b:Lcom/heytap/browser/ILauncherOverlayBrowser;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/browser/ILauncherOverlayBrowser;)Z
    .registers 2

    sget-object v0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->b:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->b:Lcom/heytap/browser/ILauncherOverlayBrowser;

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

    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_bd

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_c2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_11  #0xe
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->terminal()V

    return v0

    :pswitch_18  #0xd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->endScrollWithVelocity(F)V

    return v0

    :pswitch_23  #0xc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->openAlphaOverlay(I)V

    return v0

    :pswitch_2e  #0xb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_39

    move p1, v0

    goto :goto_3a

    :cond_39
    move p1, v2

    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_41

    move v2, v0

    :cond_41
    invoke-interface {p0, p1, v2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onProfileChanged(ZZ)V

    return v0

    :pswitch_45  #0xa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onDestory()V

    return v0

    :pswitch_4c  #0x9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onStop()V

    return v0

    :pswitch_53  #0x8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onResume()V

    return v0

    :pswitch_5a  #0x7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onPause()V

    return v0

    :pswitch_61  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onStart()V

    return v0

    :pswitch_68  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_76

    move v2, v0

    :cond_76
    invoke-interface {p0, p1, v2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->closeOverlay(IZ)V

    return v0

    :pswitch_7a  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_84

    move v2, v0

    :cond_84
    invoke-interface {p0, v2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->windowDetached(Z)V

    return v0

    :pswitch_88  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9a

    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_9b

    :cond_9a
    const/4 p1, 0x0

    :goto_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/browser/ILauncherOverlayBrowserCallback;I)V

    return v0

    :pswitch_ab  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onScroll(F)V

    return v0

    :pswitch_b6  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->startScroll()V

    return v0

    :cond_bd
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_b6  #00000001
        :pswitch_ab  #00000002
        :pswitch_88  #00000003
        :pswitch_7a  #00000004
        :pswitch_68  #00000005
        :pswitch_61  #00000006
        :pswitch_5a  #00000007
        :pswitch_53  #00000008
        :pswitch_4c  #00000009
        :pswitch_45  #0000000a
        :pswitch_2e  #0000000b
        :pswitch_23  #0000000c
        :pswitch_18  #0000000d
        :pswitch_11  #0000000e
    .end packed-switch
.end method
