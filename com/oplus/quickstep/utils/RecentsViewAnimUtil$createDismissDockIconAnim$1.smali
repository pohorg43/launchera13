.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createDismissDockIconAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;JLcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dockIconView:Lcom/oplus/quickstep/dock/DockIconView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;->$dockIconView:Lcom/oplus/quickstep/dock/DockIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;->$dockIconView:Lcom/oplus/quickstep/dock/DockIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->notifyClearAnimationState(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;->$dockIconView:Lcom/oplus/quickstep/dock/DockIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->notifyClearAnimationState(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;->$dockIconView:Lcom/oplus/quickstep/dock/DockIconView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->notifyClearAnimationState(Z)V

    return-void
.end method
