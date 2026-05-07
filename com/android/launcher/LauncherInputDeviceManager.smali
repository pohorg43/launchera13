.class public Lcom/android/launcher/LauncherInputDeviceManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherInputDeviceManager"

.field private static volatile sInstance:Lcom/android/launcher/LauncherInputDeviceManager;


# instance fields
.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsOTGConnectMouse:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/LauncherInputDeviceManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/LauncherInputDeviceManager;->sInstance:Lcom/android/launcher/LauncherInputDeviceManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/LauncherInputDeviceManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/LauncherInputDeviceManager;->sInstance:Lcom/android/launcher/LauncherInputDeviceManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/LauncherInputDeviceManager;

    invoke-direct {v1}, Lcom/android/launcher/LauncherInputDeviceManager;-><init>()V

    sput-object v1, Lcom/android/launcher/LauncherInputDeviceManager;->sInstance:Lcom/android/launcher/LauncherInputDeviceManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/LauncherInputDeviceManager;->sInstance:Lcom/android/launcher/LauncherInputDeviceManager;

    return-object v0
.end method


# virtual methods
.method public final isMouse(Landroid/view/InputDevice;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result p1

    const v0, 0x1000010

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_27

    :cond_26
    const/4 p0, 0x1

    :cond_27
    return p0
.end method

.method public isOTGConnectMouse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mIsOTGConnectMouse:Z

    return p0
.end method

.method public onInputDeviceAdded(I)V
    .registers 4

    const-string v0, " onInputDeviceAdded deviceId =  "

    const-string v1, "LauncherInputDeviceManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mIsOTGConnectMouse:Z

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/launcher/LauncherInputDeviceManager;->isMouse(Landroid/view/InputDevice;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mIsOTGConnectMouse:Z

    :cond_19
    const-string/jumbo p1, "onInputDeviceAdded mIsOTGConnectMouse: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mIsOTGConnectMouse:Z

    invoke-static {p1, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 4

    const-string v0, " onInputDeviceRemoved deviceId =  "

    const-string v1, "LauncherInputDeviceManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mIsOTGConnectMouse:Z

    return-void
.end method

.method public registerInputDeviceListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_8
    return-void
.end method

.method public unRegisterInputDeviceListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/LauncherInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_7
    return-void
.end method
