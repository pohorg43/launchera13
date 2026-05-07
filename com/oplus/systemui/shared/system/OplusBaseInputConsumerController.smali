.class public Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_CREATE_COUNT:I = 0x3

.field private static final RESET_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "OplusBaseInputConsumerController"


# instance fields
.field private mAllowRecreate:Z

.field public mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

.field private mIsCreateFailed:Z

.field private mLastEventTime:J

.field public mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

.field public mName:Ljava/lang/String;

.field public mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

.field private mRetryCreateCount:I

.field public mToken:Landroid/os/IBinder;

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->lambda$recreateInputConsumerIfNeed$0()V

    return-void
.end method

.method private synthetic lambda$recreateInputConsumerIfNeed$0()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    return-void
.end method


# virtual methods
.method public createInputConsumer()Z
    .registers 8

    const-string v0, "OplusBaseInputConsumerController"

    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    const/4 v3, 0x1

    :try_start_b
    iget-object v4, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v2, v1}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception v2

    const-string v4, "Failed to create input consumer: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v3, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    :goto_31
    const-string v2, "createInputConsumer(), name="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", failed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", retryCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    invoke-static {v2, v4, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    if-nez v2, :cond_73

    :try_start_54
    new-instance v2, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v5

    invoke-direct {v2, p0, v1, v4, v5}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v2, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_63} :catch_64

    goto :goto_6c

    :catch_64
    move-exception v1

    iput-boolean v3, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    const-string v2, "Failed to construct InputEventReceiver"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6c
    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz v0, :cond_73

    invoke-interface {v0, v3}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_73
    iput-boolean v3, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    return v3
.end method

.method public isCreateInputConsumerFailed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    return p0
.end method

.method public recreateInputConsumerIfNeed(JLandroid/os/Handler;)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mIsCreateFailed:Z

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    if-nez v0, :cond_9

    goto :goto_4b

    :cond_9
    iget-wide v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recreateInputConsumerIfNeed: input consumer maybe abnormal, so we recreate the input consumer ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseInputConsumerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->unregisterInputConsumer()V

    iput-wide p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->registerInputConsumer()V

    iput-boolean p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mAllowRecreate:Z

    new-instance p1, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4b
    :goto_4b
    return-void
.end method

.method public registerInputConsumer()V
    .registers 1

    return-void
.end method

.method public retryCreateInputConsumer()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mInputEventReceiver:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    if-nez v0, :cond_11

    iget v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    goto :goto_11

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mRetryCreateCount:I

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->createInputConsumer()Z

    :cond_11
    :goto_11
    return-void
.end method

.method public unregisterInputConsumer()V
    .registers 1

    return-void
.end method

.method public updateEventTimeIfNeed(Landroid/view/InputEvent;)V
    .registers 4

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mLastEventTime:J

    :cond_13
    return-void
.end method
