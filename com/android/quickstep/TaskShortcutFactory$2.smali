.class Lcom/android/quickstep/TaskShortcutFactory$2;
.super Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    return-void
.end method


# virtual methods
.method public isAvailable(Lcom/android/launcher3/BaseDraggingActivity;I)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_f

    const/4 p0, -0x1

    if-eq p2, p0, :cond_d

    if-nez p2, :cond_f

    :cond_d
    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .registers 2

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    const/4 p1, 0x1

    if-eq p0, p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
