.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$createLastDismissAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->createLastDismissAnim(ZILcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$createLastDismissAnim$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$createLastDismissAnim$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->dismiss(ZZ)V

    return-void
.end method
