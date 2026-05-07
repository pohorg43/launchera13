.class public final Lcom/oplus/glcomponent/utils/FPSThrottler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/utils/FPSThrottler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/glcomponent/utils/FPSThrottler$Companion;

.field public static final HIGH_FPS:I = 0x3c

.field private static final INVALIDATE_LONG:J = -0x1L

.field public static final LOWER_FPS:I = 0xe

.field public static final LOWEST_FPS:I = 0x4

.field public static final LOW_FPS:I = 0x12

.field public static final MED_FPS:I = 0x1e

.field public static final MIN_FPS:I = 0x1

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final POWER_SAVE_FPS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FPSThrottler"


# instance fields
.field private final mContinuousRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFps:I

.field private volatile mFrameTimeNanos:J

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mIsDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsPowerSaveMode:Z

.field private mLastFrameTimeNanos:J

.field private final mRequestRender:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/utils/FPSThrottler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/utils/FPSThrottler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/utils/FPSThrottler;->Companion:Lcom/oplus/glcomponent/utils/FPSThrottler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFps:I

    const-wide/32 v0, 0xfe502a

    iput-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFrameTimeNanos:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mContinuousRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mRequestRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    return-void
.end method

.method private final isMainThread()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private final requestRendering()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz p0, :cond_a

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_a
    return-void
.end method

.method private final updateFrameTime()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mContinuousRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFps:I

    goto :goto_d

    :cond_b
    const/16 v0, 0x3c

    :goto_d
    sget-object v1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v1}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FPSThrottler:: updateFrameTime: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;)V

    :cond_22
    const-wide/32 v1, 0x3b9aca00

    int-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFrameTimeNanos:J

    return-void
.end method


# virtual methods
.method public final beginFrame()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final destroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->pause()V

    return-void
.end method

.method public doFrame(J)V
    .registers 7

    iget-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iput-wide p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->requestRendering()V

    goto :goto_40

    :cond_e
    iget-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_40

    iget-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFrameTimeNanos:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_40

    iget-object p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mContinuousRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mRequestRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_2f
    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->requestRendering()V

    iget-object p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mRequestRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_39
    iget-wide p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    iget-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFrameTimeNanos:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    :cond_40
    :goto_40
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final endFrame(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsPowerSaveMode:Z

    if-eqz v0, :cond_6

    div-int/lit8 p1, p1, 0x2

    :cond_6
    iget v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFps:I

    if-eq v0, p1, :cond_18

    sget-object v0, Lcom/oplus/glcomponent/math/MathUtils;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils;

    const/4 v1, 0x1

    const/16 v2, 0x3c

    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/glcomponent/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mFps:I

    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->updateFrameTime()V

    :cond_18
    iget-object p0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final pause()V
    .registers 3

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "FPSThrottler::pause"

    invoke-virtual {v0, v1}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_21

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    :cond_21
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->requestRendering()V

    return-void

    :cond_2c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "FPSThrottler.pause(). Must run in UIThread."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestRendering(Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mContinuousRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mRequestRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->requestRendering()V

    :cond_13
    return-void
.end method

.method public final resume(Landroid/opengl/GLSurfaceView;)V
    .registers 4

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "FPSThrottler:: resume"

    invoke-virtual {v0, v1}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_3e

    iput-object p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_1e
    iget-object p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mRequestRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/oplus/glcomponent/utils/FPSThrottler;->updateFrameTime()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mLastFrameTimeNanos:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_3e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FPSThrottler.resume(). Must run in UIThread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setContinuousRendering(Z)V
    .registers 5

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "FPSThrottler:: setContinuousRendering: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;)V

    :cond_15
    iget-object p0, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mContinuousRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setPowerSaveMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/utils/FPSThrottler;->mIsPowerSaveMode:Z

    return-void
.end method
