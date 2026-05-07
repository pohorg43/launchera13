.class public final Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;->playLoadingToContentAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->clearStatusAfterRefresh$default(Lcom/android/launcher3/card/uscard/USCardContainerView;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setDefaultCard(Lcom/android/launcher3/card/DefaultCardView;)V

    :cond_27
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    const-string p2, "itemInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$initCardName(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method
