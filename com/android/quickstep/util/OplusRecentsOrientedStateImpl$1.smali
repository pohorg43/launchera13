.class public final Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $handler:Landroid/os/Handler;

.field public final synthetic $rotationChangeTask:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    iput-object p2, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$rotationChangeTask:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$context:Landroid/content/Context;

    invoke-direct {p0, p4}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    iget v0, v0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    invoke-static {p1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRotationForUserDegreesRotated(FI)I

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    iget v1, v0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2e

    iput p1, v0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    iget-object p1, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$rotationChangeTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$rotationChangeTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_25
    iget-object p1, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$rotationChangeTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    return-void
.end method
