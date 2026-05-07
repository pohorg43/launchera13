.class public abstract Lcom/oplus/compat/app/ITaskStackListenerR$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/compat/app/ITaskStackListenerR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/ITaskStackListenerR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field public static final TRANSACTION_onActivityDismissingDockedStack:I = 0x6

.field public static final TRANSACTION_onActivityForcedResizable:I = 0x5

.field public static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field public static final TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field public static final TRANSACTION_onActivityPinned:I = 0x2

.field public static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field public static final TRANSACTION_onActivityRestartAttempt:I = 0x4

.field public static final TRANSACTION_onActivityRotation:I = 0x1a

.field public static final TRANSACTION_onActivityUnpinned:I = 0x3

.field public static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x12

.field public static final TRANSACTION_onRecentTaskListFrozenChanged:I = 0x17

.field public static final TRANSACTION_onRecentTaskListUpdated:I = 0x16

.field public static final TRANSACTION_onSingleTaskDisplayDrawn:I = 0x13

.field public static final TRANSACTION_onSingleTaskDisplayEmpty:I = 0x14

.field public static final TRANSACTION_onSizeCompatModeActivityChanged:I = 0x11

.field public static final TRANSACTION_onTaskCreated:I = 0x9

.field public static final TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field public static final TRANSACTION_onTaskDisplayChanged:I = 0x15

.field public static final TRANSACTION_onTaskFocusChanged:I = 0x18

.field public static final TRANSACTION_onTaskMovedToFront:I = 0xb

.field public static final TRANSACTION_onTaskProfileLocked:I = 0xf

.field public static final TRANSACTION_onTaskRemovalStarted:I = 0xe

.field public static final TRANSACTION_onTaskRemoved:I = 0xa

.field public static final TRANSACTION_onTaskRequestedOrientationChanged:I = 0x19

.field public static final TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field public static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/compat/app/ITaskStackListenerR;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/compat/app/ITaskStackListenerR;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/compat/app/ITaskStackListenerR;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->sDefaultImpl:Lcom/oplus/compat/app/ITaskStackListenerR;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_54

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x1a
    const-string p0, "onActivityRotation"

    return-object p0

    :pswitch_8  #0x19
    const-string p0, "onTaskRequestedOrientationChanged"

    return-object p0

    :pswitch_b  #0x18
    const-string p0, "onTaskFocusChanged"

    return-object p0

    :pswitch_e  #0x17
    const-string p0, "onRecentTaskListFrozenChanged"

    return-object p0

    :pswitch_11  #0x16
    const-string p0, "onRecentTaskListUpdated"

    return-object p0

    :pswitch_14  #0x15
    const-string p0, "onTaskDisplayChanged"

    return-object p0

    :pswitch_17  #0x14
    const-string p0, "onSingleTaskDisplayEmpty"

    return-object p0

    :pswitch_1a  #0x13
    const-string p0, "onSingleTaskDisplayDrawn"

    return-object p0

    :pswitch_1d  #0x12
    const-string p0, "onBackPressedOnTaskRoot"

    return-object p0

    :pswitch_20  #0x11
    const-string p0, "onSizeCompatModeActivityChanged"

    return-object p0

    :pswitch_23  #0x10
    const-string p0, "onTaskSnapshotChanged"

    return-object p0

    :pswitch_26  #0xf
    const-string p0, "onTaskProfileLocked"

    return-object p0

    :pswitch_29  #0xe
    const-string p0, "onTaskRemovalStarted"

    return-object p0

    :pswitch_2c  #0xd
    const-string p0, "onActivityRequestedOrientationChanged"

    return-object p0

    :pswitch_2f  #0xc
    const-string p0, "onTaskDescriptionChanged"

    return-object p0

    :pswitch_32  #0xb
    const-string p0, "onTaskMovedToFront"

    return-object p0

    :pswitch_35  #0xa
    const-string p0, "onTaskRemoved"

    return-object p0

    :pswitch_38  #0x9
    const-string p0, "onTaskCreated"

    return-object p0

    :pswitch_3b  #0x8
    const-string p0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object p0

    :pswitch_3e  #0x7
    const-string p0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object p0

    :pswitch_41  #0x6
    const-string p0, "onActivityDismissingDockedStack"

    return-object p0

    :pswitch_44  #0x5
    const-string p0, "onActivityForcedResizable"

    return-object p0

    :pswitch_47  #0x4
    const-string p0, "onActivityRestartAttempt"

    return-object p0

    :pswitch_4a  #0x3
    const-string p0, "onActivityUnpinned"

    return-object p0

    :pswitch_4d  #0x2
    const-string p0, "onActivityPinned"

    return-object p0

    :pswitch_50  #0x1
    const-string p0, "onTaskStackChanged"

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50  #00000001
        :pswitch_4d  #00000002
        :pswitch_4a  #00000003
        :pswitch_47  #00000004
        :pswitch_44  #00000005
        :pswitch_41  #00000006
        :pswitch_3e  #00000007
        :pswitch_3b  #00000008
        :pswitch_38  #00000009
        :pswitch_35  #0000000a
        :pswitch_32  #0000000b
        :pswitch_2f  #0000000c
        :pswitch_2c  #0000000d
        :pswitch_29  #0000000e
        :pswitch_26  #0000000f
        :pswitch_23  #00000010
        :pswitch_20  #00000011
        :pswitch_1d  #00000012
        :pswitch_1a  #00000013
        :pswitch_17  #00000014
        :pswitch_14  #00000015
        :pswitch_11  #00000016
        :pswitch_e  #00000017
        :pswitch_b  #00000018
        :pswitch_8  #00000019
        :pswitch_5  #0000001a
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/oplus/compat/app/ITaskStackListenerR;)Z
    .registers 2

    sget-object v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->sDefaultImpl:Lcom/oplus/compat/app/ITaskStackListenerR;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->sDefaultImpl:Lcom/oplus/compat/app/ITaskStackListenerR;

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

.method public getTransactionName(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.app.ITaskStackListener"

    if-eq p1, v0, :cond_1de

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_1e2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_12  #0x1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRotation(I)V

    return v1

    :pswitch_1d  #0x19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRequestedOrientationChanged(II)V

    return v1

    :pswitch_2c  #0x18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3a

    move v0, v1

    :cond_3a
    invoke-interface {p0, p1, v0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskFocusChanged(IZ)V

    return v1

    :pswitch_3e  #0x17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_48

    move v0, v1

    :cond_48
    invoke-interface {p0, v0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onRecentTaskListFrozenChanged(Z)V

    return v1

    :pswitch_4c  #0x16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onRecentTaskListUpdated()V

    return v1

    :pswitch_53  #0x15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskDisplayChanged(II)V

    return v1

    :pswitch_62  #0x14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSingleTaskDisplayEmpty(I)V

    return v1

    :pswitch_6d  #0x13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSingleTaskDisplayDrawn(I)V

    return v1

    :pswitch_78  #0x12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8a

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_8a
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_8e  #0x11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    return v1

    :pswitch_9d  #0x10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_b3

    sget-object p3, Lcom/oplus/compat/app/TaskSnapshotNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/oplus/compat/app/TaskSnapshotNative;

    :cond_b3
    invoke-interface {p0, p1, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskSnapshotChanged(ILcom/oplus/compat/app/TaskSnapshotNative;)V

    return v1

    :pswitch_b7  #0xf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskProfileLocked(II)V

    return v1

    :pswitch_c6  #0xe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d8

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_d8
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_dc  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRequestedOrientationChanged(II)V

    return v1

    :pswitch_eb  #0xc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_fd

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_fd
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_101  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_113

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_113
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_117  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRemoved(I)V

    return v1

    :pswitch_122  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_138

    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/ComponentName;

    :cond_138
    invoke-interface {p0, p1, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskCreated(ILandroid/content/ComponentName;)V

    return v1

    :pswitch_13c  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14e

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v3, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v1

    :pswitch_156  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_168

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v3, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v1

    :pswitch_170  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityDismissingDockedStack()V

    return v1

    :pswitch_177  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityForcedResizable(Ljava/lang/String;II)V

    return v1

    :pswitch_18a  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19c

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_19c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a4

    move p1, v1

    goto :goto_1a5

    :cond_1a4
    move p1, v0

    :goto_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1ad

    move p3, v1

    goto :goto_1ae

    :cond_1ad
    move p3, v0

    :goto_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1b5

    move v0, v1

    :cond_1b5
    invoke-interface {p0, v3, p1, p3, v0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return v1

    :pswitch_1b9  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityUnpinned()V

    return v1

    :pswitch_1c0  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityPinned(Ljava/lang/String;III)V

    return v1

    :pswitch_1d7  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskStackChanged()V

    return v1

    :cond_1de
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_1d7  #00000001
        :pswitch_1c0  #00000002
        :pswitch_1b9  #00000003
        :pswitch_18a  #00000004
        :pswitch_177  #00000005
        :pswitch_170  #00000006
        :pswitch_156  #00000007
        :pswitch_13c  #00000008
        :pswitch_122  #00000009
        :pswitch_117  #0000000a
        :pswitch_101  #0000000b
        :pswitch_eb  #0000000c
        :pswitch_dc  #0000000d
        :pswitch_c6  #0000000e
        :pswitch_b7  #0000000f
        :pswitch_9d  #00000010
        :pswitch_8e  #00000011
        :pswitch_78  #00000012
        :pswitch_6d  #00000013
        :pswitch_62  #00000014
        :pswitch_53  #00000015
        :pswitch_4c  #00000016
        :pswitch_3e  #00000017
        :pswitch_2c  #00000018
        :pswitch_1d  #00000019
        :pswitch_12  #0000001a
    .end packed-switch
.end method
