.class Lcom/android/quickstep/RotationTouchHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RotationTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRotation(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    iget v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayId:I

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mPrioritizeDeviceRotation:Z

    iget-boolean p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    if-eqz p1, :cond_15

    invoke-static {p0}, Lcom/android/quickstep/RotationTouchHelper;->access$100(Lcom/android/quickstep/RotationTouchHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    iput-boolean p1, v0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    if-nez p1, :cond_18

    iget-boolean p1, v0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    if-eqz p1, :cond_b

    goto :goto_18

    :cond_b
    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->updateMultipleRegionsStackChange()Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    :cond_12
    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->access$000(Lcom/android/quickstep/RotationTouchHelper;Z)V

    :cond_18
    :goto_18
    return-void
.end method
