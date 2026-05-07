.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2;->invoke()Landroid/animation/AnimatorSet;
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

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "RecentRelayAnimator"

    const-string v0, "hide, end"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getHideEndAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_23

    :cond_20
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_23
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->setHideEndAction(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
