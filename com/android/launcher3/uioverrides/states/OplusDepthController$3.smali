.class Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/states/OplusDepthController;->onMultiWindowModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$602(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd Launcher State:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$700(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusDepthController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$802(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
