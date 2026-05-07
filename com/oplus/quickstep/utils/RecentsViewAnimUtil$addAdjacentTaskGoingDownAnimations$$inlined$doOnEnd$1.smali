.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addAdjacentTaskGoingDownAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $handler$inlined:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public final synthetic $taskView$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;->$handler$inlined:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;->$taskView$inlined:Landroid/view/View;

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

    const-string p1, "RecentsViewAnimUtil"

    const-string v0, "addAdjacentTaskGoingDownAnimations: animation was end, so reset translation"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;->$handler$inlined:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;->$taskView$inlined:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

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
