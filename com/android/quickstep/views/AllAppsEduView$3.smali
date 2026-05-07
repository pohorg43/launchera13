.class Lcom/android/quickstep/views/AllAppsEduView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/AllAppsEduView;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/AllAppsEduView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/AllAppsEduView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quickstep/views/AllAppsEduView;->access$402(Lcom/android/quickstep/views/AllAppsEduView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {p1}, Lcom/android/quickstep/views/AllAppsEduView;->access$500(Lcom/android/quickstep/views/AllAppsEduView;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/AllAppsEduView;->handleClose(Z)V

    return-void
.end method
