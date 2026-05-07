.class Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerAfterS;
.super Landroid/app/ITaskStackListener$Stub;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/IActivityTaskManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskStackListenerAfterS"
.end annotation


# instance fields
.field private final mListenerNative:Lcom/oplus/compat/app/ITaskStackListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/app/ITaskStackListenerNative;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerAfterS;->mListenerNative:Lcom/oplus/compat/app/ITaskStackListenerNative;

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedTask()V
    .registers 1

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerAfterS;->mListenerNative:Lcom/oplus/compat/app/ITaskStackListenerNative;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/compat/app/ITaskStackListenerNative;->onActivityPinned(Ljava/lang/String;III)V

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

    iget-object p0, p0, Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerAfterS;->mListenerNative:Lcom/oplus/compat/app/ITaskStackListenerNative;

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerNative;->onActivityUnpinned()V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onLockTaskModeChanged(I)V
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

.method public onTaskFocusChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .registers 3

    return-void
.end method

.method public onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 2

    return-void
.end method

.method public onTaskRequestedOrientationChanged(II)V
    .registers 3

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/compat/app/IActivityTaskManagerNative$TaskStackListenerAfterS;->mListenerNative:Lcom/oplus/compat/app/ITaskStackListenerNative;

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerNative;->onTaskSnapshotChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    return-void
.end method
