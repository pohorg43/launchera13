.class public final Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/EngineCardView;->playInitAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/EngineCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

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

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget v0, p1, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget v0, p1, Lcom/android/launcher3/card/LauncherCardView;->mScaleToFit:F

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->access$setInitAnimator$p(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/AnimatorSet;)V

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
