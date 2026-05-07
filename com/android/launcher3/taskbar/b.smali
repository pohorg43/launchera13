.class public final synthetic Lcom/android/launcher3/taskbar/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/b;->a:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/b;->a:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->a(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
