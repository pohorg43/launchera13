.class Lcom/android/launcher3/statemanager/OplusStateManager$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statemanager/OplusStateManager;->createQuickSwitchAnimationInternal(Lcom/android/launcher3/statemanager/BaseState;Ljava/util/function/BooleanSupplier;)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/statemanager/OplusStateManager;

.field public final synthetic val$state:Lcom/android/launcher3/statemanager/BaseState;

.field public final synthetic val$supplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/OplusStateManager;Lcom/android/launcher3/statemanager/BaseState;Ljava/util/function/BooleanSupplier;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->this$0:Lcom/android/launcher3/statemanager/OplusStateManager;

    iput-object p2, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p3, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->this$0:Lcom/android/launcher3/statemanager/OplusStateManager;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v1, v0, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    const-string p0, "StateManager"

    const-string p1, "page preview state onAnimationCancel()"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/OplusStateManager$1;->onAnimationSuccess(Landroid/animation/Animator;)V

    :cond_f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->this$0:Lcom/android/launcher3/statemanager/OplusStateManager;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/OplusStateManager;->onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    sget-boolean p1, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_18

    const-string p1, "onAnimationSuccess: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "b/156095088"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->this$0:Lcom/android/launcher3/statemanager/OplusStateManager;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/OplusStateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method
