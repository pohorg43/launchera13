.class Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameCallbackProvider14"
.end annotation


# static fields
.field private static final sHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAnimationHandler:Landroidx/core/animation/AnimationHandler;

.field private mFrameDelay:J

.field private mLastFrameTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->sHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/core/animation/AnimationHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    const-wide/16 v0, 0x10

    iput-wide v0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mFrameDelay:J

    iput-object p1, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mAnimationHandler:Landroidx/core/animation/AnimationHandler;

    return-void
.end method


# virtual methods
.method public getFrameDelay()J
    .registers 3

    iget-wide v0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mFrameDelay:J

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 3

    sget-object p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->sHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public onNewCallbackAdded(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 2

    return-void
.end method

.method public postFrameCallback()V
    .registers 7

    iget-wide v0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mFrameDelay:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    iget-object p0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mAnimationHandler:Landroidx/core/animation/AnimationHandler;

    invoke-virtual {p0, v0, v1}, Landroidx/core/animation/AnimationHandler;->onAnimationFrame(J)V

    return-void
.end method

.method public setFrameDelay(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide p1, v0

    :goto_8
    iput-wide p1, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;->mFrameDelay:J

    return-void
.end method
