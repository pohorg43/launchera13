.class public interface abstract Lcom/android/wm/shell/common/TaskStackListenerCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public onActivityDismissingDockedStack()V
    .registers 1

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .registers 1

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-interface {p0}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted()V
    .registers 1

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-interface {p0}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayRerouted()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 5

    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .registers 3

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 5

    return-void
.end method

.method public onActivityRotation(I)V
    .registers 2

    return-void
.end method

.method public onActivityUnpinned()V
    .registers 1

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onRecentTaskListUpdated()V
    .registers 1

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3

    return-void
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .registers 3

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .registers 2

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToFront(I)V

    return-void
.end method

.method public onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 2

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onTaskStackChanged()V
    .registers 1

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .registers 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    return-void
.end method
