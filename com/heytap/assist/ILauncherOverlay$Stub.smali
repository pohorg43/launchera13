.class public abstract Lcom/heytap/assist/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/assist/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/assist/ILauncherOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/assist/ILauncherOverlay$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_checkoutAssistantAllowDrag:I = 0x16

.field public static final TRANSACTION_closeOverlay:I = 0x6

.field public static final TRANSACTION_endScroll:I = 0x3

.field public static final TRANSACTION_getVoiceSearchLanguage:I = 0xe

.field public static final TRANSACTION_hasOverlayContent:I = 0x10

.field public static final TRANSACTION_isVoiceDetectionRunning:I = 0xf

.field public static final TRANSACTION_onDestory:I = 0xb

.field public static final TRANSACTION_onPause:I = 0x8

.field public static final TRANSACTION_onProfileChanged:I = 0x15

.field public static final TRANSACTION_onRecentsAnimationFinished:I = 0x18

.field public static final TRANSACTION_onRecentsAnimationStart:I = 0x17

.field public static final TRANSACTION_onRecentsAnimationSurfaceSave:I = 0x1a

.field public static final TRANSACTION_onResume:I = 0x9

.field public static final TRANSACTION_onScroll:I = 0x2

.field public static final TRANSACTION_onStart:I = 0x7

.field public static final TRANSACTION_onStop:I = 0xa

.field public static final TRANSACTION_onViewAlphaChanged:I = 0x19

.field public static final TRANSACTION_openOverlay:I = 0xc

.field public static final TRANSACTION_requestVoiceDetection:I = 0xd

.field public static final TRANSACTION_setActivityState:I = 0x13

.field public static final TRANSACTION_startScroll:I = 0x1

.field public static final TRANSACTION_startSearch:I = 0x14

.field public static final TRANSACTION_unusedMethod:I = 0x12

.field public static final TRANSACTION_windowAttached:I = 0x4

.field public static final TRANSACTION_windowAttached2:I = 0x11

.field public static final TRANSACTION_windowDetached:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.assist.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlay;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.assist.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/assist/ILauncherOverlay;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/assist/ILauncherOverlay;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/assist/ILauncherOverlay$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/assist/ILauncherOverlay$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/heytap/assist/ILauncherOverlay;
    .registers 1

    sget-object v0, Lcom/heytap/assist/ILauncherOverlay$Stub$a;->b:Lcom/heytap/assist/ILauncherOverlay;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/assist/ILauncherOverlay;)Z
    .registers 2

    sget-object v0, Lcom/heytap/assist/ILauncherOverlay$Stub$a;->b:Lcom/heytap/assist/ILauncherOverlay;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/heytap/assist/ILauncherOverlay$Stub$a;->b:Lcom/heytap/assist/ILauncherOverlay;

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.assist.ILauncherOverlay"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_184

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_188

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_12  #0x1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_24
    invoke-interface {p0, v3}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    return v0

    :pswitch_28  #0x19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onViewAlphaChanged(F)V

    return v0

    :pswitch_33  #0x18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_45
    invoke-interface {p0, v3}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationFinished(Landroid/os/Bundle;)V

    return v0

    :pswitch_49  #0x17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationStart()V

    return v0

    :pswitch_50  #0x16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_62  #0x15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6d

    move p1, v0

    goto :goto_6e

    :cond_6d
    move p1, v2

    :goto_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_75

    move v2, v0

    :cond_75
    invoke-interface {p0, p1, v2}, Lcom/heytap/assist/ILauncherOverlay;->onProfileChanged(ZZ)V

    return v0

    :pswitch_79  #0x14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8f

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    :cond_8f
    invoke-interface {p0, p1, v3}, Lcom/heytap/assist/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_9a  #0x13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->setActivityState(I)V

    return v0

    :pswitch_a5  #0x12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->unusedMethod()V

    return v0

    :pswitch_ac  #0x11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_be

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/assist/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlayCallback;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Lcom/heytap/assist/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/heytap/assist/ILauncherOverlayCallback;)V

    return v0

    :pswitch_ca  #0x10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->hasOverlayContent()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_d8  #0xf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->isVoiceDetectionRunning()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_e6  #0xe
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_f4  #0xd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_fe

    move v2, v0

    :cond_fe
    invoke-interface {p0, v2}, Lcom/heytap/assist/ILauncherOverlay;->requestVoiceDetection(Z)V

    return v0

    :pswitch_102  #0xc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->openOverlay(I)V

    return v0

    :pswitch_10d  #0xb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onDestory()V

    return v0

    :pswitch_114  #0xa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onStop()V

    return v0

    :pswitch_11b  #0x9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onResume()V

    return v0

    :pswitch_122  #0x8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onPause()V

    return v0

    :pswitch_129  #0x7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onStart()V

    return v0

    :pswitch_130  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->closeOverlay(I)V

    return v0

    :pswitch_13b  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_145

    move v2, v0

    :cond_145
    invoke-interface {p0, v2}, Lcom/heytap/assist/ILauncherOverlay;->windowDetached(Z)V

    return v0

    :pswitch_149  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15b

    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    :cond_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/assist/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlayCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, v3, p1, p2}, Lcom/heytap/assist/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/assist/ILauncherOverlayCallback;I)V

    return v0

    :pswitch_16b  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->endScroll()V

    return v0

    :pswitch_172  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onScroll(F)V

    return v0

    :pswitch_17d  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->startScroll()V

    return v0

    :cond_184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_17d  #00000001
        :pswitch_172  #00000002
        :pswitch_16b  #00000003
        :pswitch_149  #00000004
        :pswitch_13b  #00000005
        :pswitch_130  #00000006
        :pswitch_129  #00000007
        :pswitch_122  #00000008
        :pswitch_11b  #00000009
        :pswitch_114  #0000000a
        :pswitch_10d  #0000000b
        :pswitch_102  #0000000c
        :pswitch_f4  #0000000d
        :pswitch_e6  #0000000e
        :pswitch_d8  #0000000f
        :pswitch_ca  #00000010
        :pswitch_ac  #00000011
        :pswitch_a5  #00000012
        :pswitch_9a  #00000013
        :pswitch_79  #00000014
        :pswitch_62  #00000015
        :pswitch_50  #00000016
        :pswitch_49  #00000017
        :pswitch_33  #00000018
        :pswitch_28  #00000019
        :pswitch_12  #0000001a
    .end packed-switch
.end method
