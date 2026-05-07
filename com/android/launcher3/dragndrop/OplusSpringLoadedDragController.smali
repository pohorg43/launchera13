.class public Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;
.super Lcom/android/launcher3/dragndrop/SpringLoadedDragController;
.source ""


# static fields
.field private static final DRAG_FLAG_CUSTOM_CANCEL_ANIMATION:I = 0x40000000

.field private static final DRAG_FLAG_CUSTOM_RETURN_ANIMATION:I = -0x80000000

.field private static final ENTER_LOAD_NEXT_PAGE_TIME:J = 0x1f4L

.field private static final ENTER_LOAD_TIP_TIME:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "OplusSpringLoadedDrag"


# instance fields
.field private final mGlobalPreDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

.field private mSnapToAssistant:Z

.field private final mTipAlarm:Lcom/android/launcher3/Alarm;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    new-instance p1, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController$2;-><init>(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mGlobalPreDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Lcom/android/launcher3/dragndrop/DragCardInfo;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->lambda$checkDragAllow$0(Lcom/android/launcher3/dragndrop/DragCardInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private assembleClipData(Lcom/android/launcher3/card/LauncherCardView;Lcom/android/launcher3/dragndrop/DragCardInfo;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ClipData;
    .registers 6

    new-instance p0, Landroid/content/ClipDescription;

    const-string p3, "card/*"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-direct {p0, v0, p3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance p3, Landroid/os/PersistableBundle;

    invoke-direct {p3}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "drag_config"

    invoke-virtual {p3, v1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    if-eqz p1, :cond_24

    invoke-interface {p1}, Lcom/oplus/card/manager/domain/ICardView;->getUiDataForDrag()Ljava/lang/String;

    move-result-object v0

    :cond_24
    new-instance p1, Landroid/content/ClipData;

    new-instance p2, Landroid/content/ClipData$Item;

    invoke-direct {p2, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p1, p0, p2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    return-object p1
.end method

.method private checkDragAllow(Lcom/android/launcher3/dragndrop/DragCardInfo;)I
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/common/util/m;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x32

    :try_start_d
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    const-string p1, "OplusSpringLoadedDrag"

    const-string v0, "checkDragAllow: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method private handleDisallowState(ILcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_28

    const/4 v0, -0x2

    if-ne p1, v0, :cond_7

    goto :goto_28

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleDisallowState, state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", card = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Drag"

    const-string p2, "OplusSpringLoadedDrag"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const p1, 0x7f1201e8

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_30
    return-void
.end method

.method private synthetic lambda$checkDragAllow$0(Lcom/android/launcher3/dragndrop/DragCardInfo;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->checkoutAssistantAllowDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDragAllow, exception = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusSpringLoadedDrag"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public cancelSnapNextPage()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public cancelSnapToAssistant()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mSnapToAssistant:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_11
    return-void
.end method

.method public getScreen()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getSnapFromPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapFromPage:I

    return p0
.end method

.method public getSnapToPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapToPage:I

    return p0
.end method

.method public isAlarmPending()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mSnapToAssistant:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->startGlobalDrag(Z)V

    goto :goto_48

    :cond_11
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->onAlarm(Lcom/android/launcher3/Alarm;)V

    goto :goto_48

    :cond_15
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-ge v0, v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusWorkspace;->showTipAnimationForDragDrop(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapFromPage:I

    goto :goto_48

    :cond_3f
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    :cond_48
    :goto_48
    return-void
.end method

.method public onSnapToPage(I)V
    .registers 2

    return-void
.end method

.method public setAlarm(Lcom/android/launcher3/CellLayout;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mSnapToAssistant:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-ne v0, p1, :cond_31

    return-void

    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    return-void

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mTipAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public setSnapFromPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapFromPage:I

    return-void
.end method

.method public setSnapToAssistant()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    const-string v1, "OplusSpringLoadedDrag"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "setSnapToAssistant but LargeDisplayDevice not supported, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mSnapToAssistant:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenEnable()Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_82

    :cond_2f
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo p0, "setSnapToAssistant but is NOT permissionAllowed, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-nez v0, :cond_47

    return-void

    :cond_47
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_51

    const-string p0, "exp not support drag card to assistant screen, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_51
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string/jumbo p0, "setSnapToAssistant but isOverlayShown, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_64
    sget-object v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated()Z

    move-result v0

    if-eqz v0, :cond_73

    const-string/jumbo p0, "setSnapToAssistant but isOneHandedMode, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_73
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mSnapToAssistant:Z

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_82
    :goto_82
    return-void
.end method

.method public setSnapToPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapToPage:I

    return-void
.end method

.method public snapToNextPagePending()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p0

    return p0
.end method

.method public startGlobalDrag(Z)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGlobalDrag: andScrollToAssistant = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Drag"

    const-string v4, "OplusSpringLoadedDrag"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/DragView;

    if-nez v2, :cond_2c

    return-void

    :cond_2c
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v5

    if-nez v5, :cond_37

    return-void

    :cond_37
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    const/high16 v6, 0x3f800000  # 1.0f

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v8, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    if-eqz v7, :cond_5b

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v6

    :cond_5b
    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getTouchX()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getTouchY()I

    move-result v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v5, :cond_214

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v5, :cond_81

    goto/16 :goto_214

    :cond_81
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v5, v5, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v5, :cond_9e

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v5, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez v5, :cond_9e

    return-void

    :cond_9e
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v9, v5, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v9, :cond_101

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v9, Lcom/android/launcher3/card/LauncherCardView;

    move-object v10, v5

    check-cast v10, Lcom/android/launcher3/card/LauncherCardInfo;

    new-instance v22, Lcom/android/launcher3/dragndrop/DragCardInfo;

    iget v12, v10, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v13, v10, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v14, v10, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v9}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v15, v10

    invoke-virtual {v9}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v6, v10

    int-to-float v10, v7

    int-to-float v11, v8

    move/from16 v16, v11

    invoke-virtual {v9}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move/from16 v17, v11

    invoke-virtual {v9}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/16 v21, 0x2

    move/from16 v20, v11

    move/from16 v18, v16

    move/from16 v19, v17

    move-object/from16 v11, v22

    move/from16 v16, v6

    move/from16 v17, v10

    invoke-direct/range {v11 .. v21}, Lcom/android/launcher3/dragndrop/DragCardInfo;-><init>(IIIIIFFIII)V

    const/4 v6, 0x0

    :goto_fd
    move-object/from16 v10, v22

    goto/16 :goto_17c

    :cond_101
    instance-of v9, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v9, :cond_165

    move-object v9, v5

    check-cast v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v11, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    iget v12, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v9, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-gez v11, :cond_121

    const-string/jumbo v0, "onAlarm: drag card only. it\'s NOT special widget."

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_121
    new-instance v22, Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWidgetCornerRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v14, v10

    invoke-virtual {v9}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWidgetCornerRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v15, v10

    int-to-float v6, v7

    int-to-float v13, v8

    invoke-virtual {v9}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWidgetCornerRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move/from16 v16, v10

    invoke-virtual {v9}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWidgetCornerRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    const/16 v20, 0x2

    const/16 v17, 0x1

    move/from16 v19, v10

    move/from16 v18, v16

    move-object/from16 v10, v22

    move/from16 v21, v13

    move/from16 v13, v17

    move/from16 v16, v6

    move/from16 v17, v21

    invoke-direct/range {v10 .. v20}, Lcom/android/launcher3/dragndrop/DragCardInfo;-><init>(IIIIIFFIII)V

    const/4 v6, 0x0

    move-object/from16 v23, v9

    move-object v9, v6

    move-object/from16 v6, v23

    goto :goto_17c

    :cond_165
    instance-of v6, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const-string/jumbo v9, "onAlarm: drag card only. neither card nor special widget."

    if-eqz v6, :cond_211

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    if-gez v6, :cond_177

    invoke-static {v4, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_177
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v22, 0x0

    goto :goto_fd

    :goto_17c
    if-eqz v1, :cond_181

    invoke-virtual {v0, v10}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->tryDragToAssistant(Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    :cond_181
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    if-nez v1, :cond_18a

    return-void

    :cond_18a
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getDragCardInfo()Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object v1

    if-nez v1, :cond_1fb

    iget-object v11, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v11

    if-eqz v11, :cond_1a3

    goto :goto_1fb

    :cond_1a3
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1b7

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    if-eqz v9, :cond_1b4

    move-object v6, v9

    :cond_1b4
    invoke-interface {v1, v6}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->setOriginalView(Landroid/view/View;)V

    :cond_1b7
    if-eqz v9, :cond_1bc

    invoke-interface {v9}, Lcom/oplus/card/manager/domain/ICardView;->pauseCard()V

    :cond_1bc
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/launcher3/dragndrop/DragController;->setGlobalDragging(Z)V

    iget-object v6, v1, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v6, :cond_1ce

    iget-object v11, v0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->mGlobalPreDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iput-object v11, v6, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_1ce
    const-string/jumbo v6, "onAlarm: startDragAndDrop offsetX = "

    const-string v11, ", offsetY = "

    invoke-static {v6, v7, v11, v8}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController$1;

    invoke-direct {v3, v0, v2, v7, v8}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController$1;-><init>(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Landroid/view/View;II)V

    invoke-direct {v0, v9, v10, v5}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->assembleClipData(Lcom/android/launcher3/card/LauncherCardView;Lcom/android/launcher3/dragndrop/DragCardInfo;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ClipData;

    move-result-object v0

    const v5, -0x3ffffd00  # -2.000183f

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v3, v6, v5}, Landroid/widget/FrameLayout;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_1fa

    const-string/jumbo v0, "startGlobalDrag: fail, check log by inputDispatcher"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->setGlobalDragging(Z)V

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    :cond_1fa
    return-void

    :cond_1fb
    :goto_1fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarm: exitsDragCard = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_211
    invoke-static {v4, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_214
    :goto_214
    return-void
.end method

.method public tryDragToAssistant(Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 7
    .param p1  # Lcom/android/launcher3/dragndrop/DragCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->checkDragAllow(Lcom/android/launcher3/dragndrop/DragCardInfo;)I

    move-result v0

    if-gez v0, :cond_c

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->handleDisallowState(ILcom/android/launcher3/dragndrop/DragCardInfo;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenEnable()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_a1

    :cond_20
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-nez v0, :cond_32

    return-void

    :cond_32
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v1, "OplusSpringLoadedDrag"

    if-eqz v0, :cond_3e

    const-string p0, "exp not support drag card to assistant screen, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    sget-object v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated()Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const-string v3, "Drag"

    if-eqz v2, :cond_6e

    const-string/jumbo p0, "tryDragToAssistant OverlayTranslation = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryDragToAssistant dragCardInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getLauncherOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionBegin()V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getLauncherOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p1

    const v1, 0x3a83126f  # 0.001f

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollChange(FZ)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getLauncherOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionEnd()V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->onDragCardToAssistant(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    :cond_a1
    :goto_a1
    return-void
.end method
