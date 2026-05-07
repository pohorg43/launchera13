.class Lcom/android/wm/shell/draganddrop/DragLayoutExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "com.android.wm.shell.draganddrop.DragLayoutExt"


# instance fields
.field private mBlurSurfaceSession:Landroid/view/SurfaceSession;

.field private mContext:Landroid/content/Context;

.field private mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

.field private mDragNoSupportSplitTipsView:Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

.field private mDragRootView:Landroid/widget/FrameLayout;

.field private mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

.field private mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

.field private mDropZoneViewBlur:Landroid/view/SurfaceControl;

.field private final mEnable:Z

.field private mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

.field private mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mBlurSurfaceSession:Landroid/view/SurfaceSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mEnable:Z

    return-void
.end method


# virtual methods
.method public controlDropZoneBlurVisible(ZLandroid/view/DragEvent;Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string v1, "controlDropZoneBlurVisible() visible="

    const-string v2, " action="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",animator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    goto :goto_4c

    :cond_35
    if-eqz p3, :cond_40

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;-><init>(Lcom/android/wm/shell/draganddrop/DragLayoutExt;I)V

    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4c

    :cond_40
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    const/4 p1, 0x3

    if-eq p2, p1, :cond_49

    const/4 p1, 0x4

    if-ne p2, p1, :cond_4c

    :cond_49
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public controlNoSupportSplitTipVisible(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V
    .registers 8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    if-eqz p2, :cond_33

    :cond_d
    sget-object v1, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string v2, "controlNoSupportSplitTipVisible() "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    goto :goto_62

    :cond_3a
    const/4 v1, 0x6

    if-ne p1, v1, :cond_41

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    goto :goto_62

    :cond_41
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4b

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    goto :goto_62

    :cond_4b
    const/4 v1, 0x4

    if-ne p1, v1, :cond_55

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    goto :goto_62

    :cond_55
    if-ne p1, v0, :cond_62

    if-eqz p2, :cond_62

    if-nez p3, :cond_5f

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    goto :goto_62

    :cond_5f
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->showDropZoneViewBlurIfNeed()V

    :cond_62
    :goto_62
    return-void
.end method

.method public getAdjustConfigOrientation(I)I
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result p0

    if-nez p0, :cond_7

    return p1

    :cond_7
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public getApplicationIcon(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDividerSize(Landroid/content/res/Resources;)I
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->getDividerSize(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public hideDropZoneViewBlur()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragNoSupportSplitTipsShowIfNeeded(Z)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_14

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_14
    return-void
.end method

.method public hookTaskInfoForSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->hookTaskInfoForSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1
.end method

.method public init(Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragLayout;Lcom/android/wm/shell/draganddrop/DropZoneView;Lcom/android/wm/shell/draganddrop/DropZoneView;)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    return-void
.end method

.method public isNeedEnterNoSupportMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    if-eqz p1, :cond_8

    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isSideBarDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isSideBarDragging()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needInterceptDrag()Z
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_4a

    iget-boolean v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isVisible:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isRunning:Z

    if-eqz v1, :cond_4a

    iget v1, v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->displayId:I

    if-nez v1, :cond_4a

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getPackName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getApplicationNameByPkgName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    sget-object v2, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needInterceptDrag() has opened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppHasOpenedWarn(Ljava/lang/CharSequence;I)V

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    return v1
.end method

.method public notifyDragAction(Landroid/view/DragEvent;Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_8

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->notifyDragAction(Landroid/view/DragEvent;IZ)V

    :cond_8
    return-void
.end method

.method public onDragEnterOrExited(Landroid/view/DragEvent;Z)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    goto :goto_1b

    :cond_1a
    move v3, v0

    :goto_1b
    const/4 v4, 0x2

    if-eq v1, v4, :cond_4c

    sget-object v5, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    const-string v6, "onDragEnterOrExited() "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",hasDropped="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",posX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",posY="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v2, :cond_58

    if-eq v1, v4, :cond_58

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->controlNoSupportSplitTipVisible(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V

    :cond_58
    const/4 v0, 0x5

    if-ne v1, v0, :cond_5c

    goto :goto_6d

    :cond_5c
    const/4 v0, 0x6

    if-ne v1, v0, :cond_63

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->notifyDragAction(Landroid/view/DragEvent;Z)V

    goto :goto_6d

    :cond_63
    const/4 v0, 0x3

    if-ne v1, v0, :cond_67

    goto :goto_6d

    :cond_67
    const/4 v0, 0x4

    if-ne v1, v0, :cond_6d

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->notifyDragAction(Landroid/view/DragEvent;Z)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    if-eq p2, p3, :cond_f

    const/4 v0, 0x1

    :cond_f
    if-eqz p3, :cond_14

    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->hitRegion:Landroid/graphics/Rect;

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p3, :cond_25

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-boolean p3, p3, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz p3, :cond_25

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->controlNoSupportSplitTipVisible(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V

    :cond_25
    return-void
.end method

.method public onPrepare()V
    .registers 7

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepare() isForce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",layoutOrient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_49

    if-eq v1, v2, :cond_49

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/draganddrop/DragLayout;->onConfigChanged(Landroid/content/res/Configuration;)V

    :cond_49
    return-void
.end method

.method public prepareDropZoneViewBlur(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v2, 0x0

    const-string v3, "DropZone_blur_dim_layer"

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mBlurSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v1, v2, v3, v4}, Lcom/android/wm/shell/common/SurfaceUtils;->makeDimLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    const v0, 0x7fffffff

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_40

    const/high16 p2, -0x1000000

    goto :goto_41

    :cond_40
    const/4 p2, -0x1

    :goto_41
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    const/high16 p2, 0x42a00000  # 80.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5e

    :catch_5e
    return-void
.end method

.method public releaseDropZoneViewBlur()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragNoSupportSplitTipsShowIfNeeded(Z)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setDragNoSupportSplitTipsShowIfNeeded(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsEnterNoSupportMode:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowIcon(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragNoSupportSplitTipsView:Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mHookTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;->setDragNoSupportSplitTipsShowIfNeeded(ZLandroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_16
    return-void
.end method

.method public setDragRootViewWhenCreate(Landroid/widget/FrameLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragRootView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDragNoSupportSplitTipsView:Lcom/oplus/splitscreen/DragNoSupportSplitTipsView;

    return-void
.end method

.method public setStatusDragToSplitMiniZed(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->setStatusDragToSplitMiniZed(Z)V

    :cond_7
    return-void
.end method

.method public shouldHideDragSurface()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->isSideBarDragging()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public showDropZoneViewBlurIfNeed()V
    .registers 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->mDropZoneViewBlur:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragNoSupportSplitTipsShowIfNeeded(Z)V

    return-void
.end method
