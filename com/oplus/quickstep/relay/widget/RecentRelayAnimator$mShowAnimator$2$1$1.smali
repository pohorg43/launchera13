.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;->invoke()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->mIsCanceled:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "RecentRelayAnimator"

    const-string p1, "show cancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->mIsCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iput-boolean v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->mIsCanceled:Z

    return-void

    :cond_8
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, "show end, "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getShowEndAction()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getIconView$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentRelayAnimator"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getDivider$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->changeVisibility(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getShowEndAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-nez p1, :cond_67

    goto :goto_6a

    :cond_67
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_6a
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->setShowEndAction(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "show start, divider="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentRelayAnimator"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getDivider$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;->setPaintAlpha(F)V

    :cond_36
    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
