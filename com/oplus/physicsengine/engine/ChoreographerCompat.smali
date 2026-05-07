.class Lcom/oplus/physicsengine/engine/ChoreographerCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;
    }
.end annotation


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mChoreographerFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFrameCallback:Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;

.field private mFrameScheduled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/physicsengine/engine/a;

    invoke-direct {v0, p0}, Lcom/oplus/physicsengine/engine/a;-><init>(Lcom/oplus/physicsengine/engine/ChoreographerCompat;)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mChoreographerFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameScheduled:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/physicsengine/engine/ChoreographerCompat;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->lambda$new$0(J)V

    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->onFrame(J)V

    return-void
.end method


# virtual methods
.method public onFrame(J)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameScheduled:Z

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameCallback:Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->debugFrame()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFrame ----------------------- frameTime =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhysicsWorld-Frame"

    invoke-static {v1, v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameCallback:Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;

    invoke-interface {p0, p1, p2}, Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;->doFrame(J)V

    :cond_28
    return-void
.end method

.method public scheduleNextFrame()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameScheduled:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameCallback:Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mChoreographerFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->debugFrame()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "PhysicsWorld-Frame"

    const-string v1, "scheduleNextFrame ----------------------- "

    invoke-static {v0, v1}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameScheduled:Z

    :cond_1f
    return-void
.end method

.method public setFrameCallback(Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameCallback:Lcom/oplus/physicsengine/engine/ChoreographerCompat$AnimationFrameCallback;

    return-void
.end method

.method public unScheduleNextFrame()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameScheduled:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->debugFrame()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "PhysicsWorld-Frame"

    const-string v1, "unScheduleNextFrame ----------------------- "

    invoke-static {v0, v1}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mChoreographerFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->mFrameScheduled:Z

    :cond_1b
    return-void
.end method
