.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimation(ZZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $currentTaskIsNotRunningTask:Z

.field public final synthetic $currentTaskView:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $endProgress:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $endScaleProgress:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $endScroll:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $forceUseRealScroll:Z

.field public final synthetic $reverse:Z

.field public final synthetic $rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic $selectedType:I

.field public final synthetic $startScaleProgress:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $startScroll:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $updateWindowPosition:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZZLcom/android/quickstep/views/TaskView;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;ZZ",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;ZI",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-boolean p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$forceUseRealScroll:Z

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskIsNotRunningTask:Z

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskView:Lcom/android/quickstep/views/TaskView;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-boolean p6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$reverse:Z

    iput p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$selectedType:I

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$startScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p10, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p11, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$startScaleProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p12, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endScaleProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-boolean p13, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$updateWindowPosition:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$reverse:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setInPreviewState$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUseRealScroll(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v2, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_24

    :cond_23
    move-object v0, v3

    :goto_24
    if-nez v0, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setLockStableAlpha(Z)V

    :goto_2a
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskIsNotRunningTask:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskView:Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_33

    goto :goto_3b

    :cond_33
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getStableAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_3b
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskView:Lcom/android/quickstep/views/TaskView;

    if-nez v1, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_4b
    :goto_4b
    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 7

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$forceUseRealScroll:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUseRealScroll(Z)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskIsNotRunningTask:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskView:Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    :goto_1a
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$currentTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v3, :cond_23

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setLockStableAlpha(Z)V

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$reverse:Z

    xor-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setInSelected$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$selectedType:I

    invoke-static {v0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setSelectedOptionsType$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$selectedType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4b

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setSelectedOptionsType$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    :cond_4b
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setInPreviewState$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$startScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0, v2, v1, v3, v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$onViewScroll(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 6

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getHasLauncherTransitionControllerStarted$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setCurrentProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMLauncherTransitionController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_28

    :cond_1a
    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    if-nez p1, :cond_21

    goto :goto_28

    :cond_21
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$startScaleProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endScaleProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$updateWindowPosition:Z

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {p1, v3, v0, v1, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$onSelectProgressChange(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFFZ)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$startScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;->$endScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1, v0, v3, v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$onViewScroll(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V

    return-void
.end method
