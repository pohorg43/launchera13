.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlBarListenerImpl"
.end annotation


# instance fields
.field private mHasDeferUpdateSurfaceBounds:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;ZLandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->lambda$onSingleTapUp$0(ZLandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onSingleTapUp$0(ZLandroid/view/View;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onControlBarLayoutChanged(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_19

    :cond_15
    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_19
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v3, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitControlBarRegion(Landroid/graphics/Rect;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/oplus/splitscreen/SplitControlBarMenu;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/oplus/splitscreen/SplitControlBarMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_3d
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v0, :cond_17

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v1

    :goto_1b
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/View;)V

    goto :goto_36

    :cond_27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/wm/shell/splitscreen/i1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/i1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;ZLandroid/view/View;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_36
    return-void
.end method

.method public onTouchDown(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v2

    goto :goto_19

    :cond_15
    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v2

    :goto_19
    move-object v5, v2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v0, :cond_23

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v2

    goto :goto_27

    :cond_23
    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v2

    :goto_27
    move-object v6, v2

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->mHasDeferUpdateSurfaceBounds:Z

    :try_start_35
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object v1

    if-eqz v1, :cond_4e

    return-void

    :cond_4e
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v0, :cond_57

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_5b

    :cond_57
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_5b
    move-object v7, v1

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_6b

    :cond_65
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_6b
    move-object v8, v0

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    if-nez v0, :cond_80

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_a9

    :cond_80
    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creat SplitStageDragPolicy, innerScreent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;

    move-result-object v9

    iget-object v10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Supplier;Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;)V

    invoke-static {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1802(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->onDown(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :cond_a9
    return-void
.end method

.method public onTouchMove(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object v1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->getMotionStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v1

    if-eq v0, v1, :cond_28

    return-void

    :cond_28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->onMove(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :cond_31
    return-void
.end method

.method public onTouchUp(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTouchUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->mHasDeferUpdateSurfaceBounds:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueUpdateSurfaceBounds()V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->mHasDeferUpdateSurfaceBounds:Z

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_26

    const/4 v1, 0x1

    :cond_26
    if-eqz v1, :cond_44

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->getMotionStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v1

    if-eq v0, v1, :cond_44

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object p0

    const-string p1, "not handle touch up"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle touch up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->onUp(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :cond_56
    return-void
.end method
