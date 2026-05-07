.class public Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DragAndDropPolicyExt"


# instance fields
.field private mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Context;Landroid/app/ActivityTaskManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    new-instance p3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p3, p2, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    :cond_1b
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    return-void
.end method

.method private getTopRunningTaskForSplit(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 13

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    goto :goto_d

    :cond_c
    move-object p0, v0

    :goto_d
    if-eqz p0, :cond_75

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    move v2, v1

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    goto :goto_2a

    :cond_29
    move v4, v1

    :goto_2a
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    goto :goto_32

    :cond_31
    move v5, v1

    :goto_32
    if-eqz v3, :cond_37

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_38

    :cond_37
    const/4 v6, -0x1

    :goto_38
    sget-object v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string v8, "getTopRunningTaskForSplit() mode="

    const-string v9, ",type="

    const-string v10, ",list["

    invoke-static {v8, v4, v9, v5, v10}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x64

    if-ne v4, v7, :cond_5b

    goto :goto_72

    :cond_5b
    if-eqz v6, :cond_5e

    goto :goto_72

    :cond_5e
    if-eqz p1, :cond_64

    const/4 v6, 0x2

    if-ne v5, v6, :cond_64

    goto :goto_72

    :cond_64
    if-nez p1, :cond_6a

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6a

    goto :goto_72

    :cond_6a
    if-eqz v3, :cond_72

    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_72

    move-object v0, v3

    goto :goto_75

    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_75
    :goto_75
    return-object v0
.end method


# virtual methods
.method public getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hookAllowSplit(Z)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isSideBarDragging()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return p1
.end method

.method public hookPositionWithDeviceType(ZI)I
    .registers 3

    if-nez p1, :cond_3

    return p2

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->hookPositionWithDeviceType(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)I

    move-result p0

    return p0
.end method

.method public hookTaskInfoForSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v2

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-eqz p1, :cond_1a

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_1b

    :cond_1a
    const/4 v3, -0x1

    :goto_1b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    goto :goto_2b

    :cond_2a
    move v5, v1

    :goto_2b
    if-eqz p1, :cond_30

    iget-boolean v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    goto :goto_31

    :cond_30
    move v6, v1

    :goto_31
    const/4 v7, 0x1

    if-nez v0, :cond_39

    const/4 v8, 0x6

    if-ne v4, v8, :cond_39

    move v8, v7

    goto :goto_3a

    :cond_39
    move v8, v1

    :goto_3a
    const/16 v9, 0x64

    if-ne v4, v9, :cond_40

    move v9, v7

    goto :goto_41

    :cond_40
    move v9, v1

    :goto_41
    if-eqz v0, :cond_48

    const/4 v10, 0x2

    if-ne v5, v10, :cond_48

    move v10, v7

    goto :goto_49

    :cond_48
    move v10, v1

    :goto_49
    if-eqz v3, :cond_4c

    move v1, v7

    :cond_4c
    if-nez v9, :cond_59

    if-nez v10, :cond_59

    if-nez v1, :cond_59

    if-eqz v6, :cond_59

    if-eqz v8, :cond_57

    goto :goto_59

    :cond_57
    const/4 p0, 0x0

    goto :goto_5d

    :cond_59
    :goto_59
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->getTopRunningTaskForSplit(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    :goto_5d
    sget-object v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string v6, "hookTaskInfoForSplit() inSplit="

    const-string v7, ",splitVisible="

    const-string v11, ",mode="

    invoke-static {v6, v0, v7, v2, v11}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",type="

    const-string v6, ",filterZoom="

    invoke-static {v0, v4, v2, v5, v6}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, ",filterHome="

    const-string v4, ",filterNonDefDisplay="

    invoke-static {v0, v9, v2, v10, v4}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, ",filterMulti="

    const-string v4, ",newTask="

    invoke-static {v0, v1, v2, v8, v4}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",oldTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_93

    return-object p0

    :cond_93
    return-object p1
.end method

.method public isDirectToNormal(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p1

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    if-ne p1, p0, :cond_15

    return p0

    :cond_15
    return v0
.end method

.method public isInSideBarRegion(Landroid/view/DragEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSideBarDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isSideBarDragging()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDragAction(Landroid/view/DragEvent;IZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->notifyDragActionEvent(Landroid/view/DragEvent;IZ)V

    :cond_7
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public onHandleDrop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/DragEvent;IZ)Z
    .registers 9

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p4, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseWhenEndNoDrop()V

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string p1, "onHandleDrop() in NoSupportMode,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_14
    if-eqz p2, :cond_1e

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string p1, "onHandleDrop() in sidebar region,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1e
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz p2, :cond_30

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->canDropAtPosition(I)Z

    move-result p2

    if-nez p2, :cond_30

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string p1, "onHandleDrop() in invalid area,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_30
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->isKeyguardShowing()Z

    move-result p2

    if-eqz p2, :cond_42

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string p1, "onHandleDrop() keyguard showing,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_42
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 p4, 0x1

    if-eqz p2, :cond_ae

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result p2

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    :cond_51
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragMirageBgTask()Z

    move-result p1

    sget-object v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleDrop() activityType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",inSplit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",isMirage="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_ae

    if-nez p2, :cond_ae

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz p1, :cond_ae

    if-ne v0, p4, :cond_93

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterNormal(Z)Z

    goto :goto_ae

    :cond_93
    const/4 p2, 0x2

    if-eq v0, p2, :cond_99

    const/4 p2, 0x3

    if-ne v0, p2, :cond_ae

    :cond_99
    invoke-virtual {p1, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterMinimize(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->onStartTaskToSplit()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->setDropAnimalStatus(Z)V

    :cond_ae
    :goto_ae
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setStartType(I)V

    return p4
.end method

.method public setStatusDragToSplitMiniZed(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->setStatusDragToSplitMiniZed(Z)V

    :cond_7
    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;)Z
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v3

    if-nez v3, :cond_33

    :try_start_15
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_22} :catch_2c

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startIntentAndTask() hookRes=true,from mini to normal"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    if-eqz v2, :cond_3e

    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    const/4 v3, 0x0

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    goto :goto_48

    :cond_47
    move v4, v3

    :goto_48
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isDirectToNormal(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    if-eqz v5, :cond_54

    move-object v8, p1

    invoke-static {p1, v4}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isEncryptAndNoPassApp(Landroid/app/PendingIntent;I)Z

    move-result v4

    goto :goto_56

    :cond_54
    move-object v8, p1

    move v4, v3

    :goto_56
    const/4 v6, -0x1

    if-eqz v1, :cond_5c

    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_5d

    :cond_5c
    move v7, v6

    :goto_5d
    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {v9}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragMirageBgTask()Z

    move-result v12

    if-nez v12, :cond_81

    if-nez v4, :cond_81

    if-eqz v5, :cond_81

    if-eq v7, v6, :cond_81

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz v6, :cond_81

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z

    move-result v6

    if-eqz v6, :cond_80

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterNormal(Z)Z

    :cond_80
    move v3, v6

    :cond_81
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startIntentAndTask() hookRes="

    const-string v7, ",isDirectNormal="

    const-string v8, ",isPrivacyApp="

    invoke-static {v6, v3, v7, v5, v8}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",isMirage="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", taskInfo="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
