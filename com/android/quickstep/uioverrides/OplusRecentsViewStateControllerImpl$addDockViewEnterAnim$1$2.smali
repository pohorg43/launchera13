.class public final Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addDockViewEnterAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dv:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;->$dv:Lcom/oplus/quickstep/dock/DockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;->$dv:Lcom/oplus/quickstep/dock/DockView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/dock/DockView;->setExitAnmatorFlag(I)V

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;->$dv:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;->$dv:Lcom/oplus/quickstep/dock/DockView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/dock/DockView;->setExitAnmatorFlag(I)V

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;->$dv:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateDockViewVisiblity()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewEnterAnim$1$2;->$dv:Lcom/oplus/quickstep/dock/DockView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->setExitAnmatorFlag(I)V

    return-void
.end method
