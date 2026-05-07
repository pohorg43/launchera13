.class public final Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $newView$inlined:Landroid/view/View;

.field public final synthetic $oldView$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/card/EngineCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->$oldView$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->$newView$inlined:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->$oldView$inlined:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/EngineCardView;->setDefaultCard(Lcom/android/launcher3/card/DefaultCardView;)V

    :cond_23
    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/card/EngineCardView;->access$setSmartCardAnimEnd$p(Lcom/android/launcher3/card/EngineCardView;Z)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;->$newView$inlined:Landroid/view/View;

    const-string/jumbo p1, "onAnimationEnd: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardView-Engine"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
