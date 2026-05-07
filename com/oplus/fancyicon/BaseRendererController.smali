.class public abstract Lcom/oplus/fancyicon/BaseRendererController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseRendererController"

.field private static final MAX_MSG_COUNT:I = 0x5


# instance fields
.field private mEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

.field private mPaused:Z

.field private final mRenderableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestRender:Z

.field private final mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mTouchX:F

.field private mTouchY:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/FramerateManager;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mWindowManager:Landroid/view/WindowManager;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mTouchX:F

    iput v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mTouchY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mPaused:Z

    iput-object p1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

    iput-object p2, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private declared-synchronized getEvent()Landroid/view/MotionEvent;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :goto_d
    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addRenderable(Lcom/oplus/fancyicon/IRenderable;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public addSelfToThread()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/RenderThread;->addController(Lcom/oplus/fancyicon/BaseRendererController;)V

    :cond_d
    return-void
.end method

.method public caculateControlSleepTime()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

    if-nez p0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateManager;->caculateRenderMinSleepTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public cleanUp(Lcom/oplus/fancyicon/IRenderable;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/BaseRendererController;->removeRenderable(Lcom/oplus/fancyicon/IRenderable;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->onRenderThreadStoped()V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public generateFrameStartTime()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

    if-nez p0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateManager;->generateFrameStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getRenderThread()Lcom/oplus/fancyicon/RenderThread;
.end method

.method public getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    return-object p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public declared-synchronized hasEvent()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    if-lez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    :goto_e
    monitor-exit p0

    return v1

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAllRenderablePaused()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/IRenderable;

    invoke-interface {v1}, Lcom/oplus/fancyicon/IRenderable;->getCurrentState()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1e
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public abstract isGlobalThread()Z
.end method

.method public isPaused()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mPaused:Z

    return p0
.end method

.method public isRequestRender()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRequestRender:Z

    return p0
.end method

.method public maxFramerateWillbeZero()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateManager;->maxFramerateWillbeZero()Z

    move-result p0

    return p0
.end method

.method public nextFrameisComing()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateManager;->nextFrameisComing()Z

    move-result p0

    return p0
.end method

.method public onFrameRateChanged(FF)V
    .registers 3

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->requestRender()V

    :cond_8
    return-void
.end method

.method public onTouch()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz v0, :cond_44

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-direct {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v2, v3, :cond_1d

    const-string v2, "BaseRendererController"

    const-string v3, "onTouch action up"

    invoke-static {v2, v3}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_25
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    goto :goto_40

    :catchall_23
    move-exception p0

    goto :goto_42

    :catch_25
    move-exception p0

    :try_start_26
    const-string v1, "BaseRendererController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    monitor-exit v0

    goto :goto_44

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_23

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method public pauseThread()V
    .registers 3

    const-string v0, "BaseRendererController"

    const-string v1, "debugFancyIcon, pauseThread"

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->pauseSelf()V

    :cond_14
    return-void
.end method

.method public pauseThreadsafely()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->pauseSelfSafely()V

    :cond_d
    return-void
.end method

.method public pausedSelf()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->isAllRenderablePaused()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mPaused:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_d
    iput-boolean v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRequestRender:Z

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->onPause()V

    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    return-void
.end method

.method public postInvalidate()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/IRenderable;

    invoke-interface {v1}, Lcom/oplus/fancyicon/IRenderable;->getCurrentState()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Lcom/oplus/fancyicon/IRenderable;->postInvalidate()V

    goto :goto_9

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public declared-synchronized queueEvent(Landroid/view/MotionEvent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mTouchX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mTouchY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_38

    :cond_27
    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mTouchY:F

    :cond_38
    iget-object p1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_4e

    iget-object p1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_4e
    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    :cond_5b
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordInvalidateViewTime()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mFrameRateManager:Lcom/oplus/fancyicon/FramerateManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateManager;->recordInvalidateViewTime()V

    :cond_7
    return-void
.end method

.method public abstract recycleThread()V
.end method

.method public removeRenderable(Lcom/oplus/fancyicon/IRenderable;)Z
    .registers 2

    iget-object p1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_b
    move-exception p0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public removeSelfFromThread()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/RenderThread;->removeController(Lcom/oplus/fancyicon/BaseRendererController;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->recycleThread()V

    :cond_13
    return-void
.end method

.method public renderDone()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V

    :cond_d
    return-void
.end method

.method public requestRender()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRequestRender:Z

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V

    :cond_10
    return-void
.end method

.method public resumeSelf()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mPaused:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRequestRender:Z

    iget-object v2, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->onResume()V

    iput-boolean v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mPaused:Z

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_22

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->resumeSelf()V

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public resumeThread()V
    .registers 3

    const-string v0, "BaseRendererController"

    const-string v1, "debugFancyIcon, resumeThread"

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRenderThread()Lcom/oplus/fancyicon/RenderThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->resumeSelf()V

    :cond_14
    return-void
.end method

.method public tick(J)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz v0, :cond_12

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRequestRender:Z

    iget-object p0, p0, Lcom/oplus/fancyicon/BaseRendererController;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->tick(J)V

    monitor-exit v0

    goto :goto_12

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0

    :cond_12
    :goto_12
    return-void
.end method
