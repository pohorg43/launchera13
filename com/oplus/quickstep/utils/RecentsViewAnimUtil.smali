.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLEAR_ALL_REMOVE_VIEW_DELAY:J = 0x64L

.field private static final CONTENT_ALPHA_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static final ENTER_ADJACENT_TASK_ALPHA_FRACTION:F = 1.4f

.field private static final ENTER_ADJACENT_TASK_OFFSET_FRACTION:F = 0.5f

.field private static final HEADER_ALPHA_TIME:J = 0x64L

.field private static final ICON_DISMISS_SCALE:F = 0.8f

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

.field private static final NEXT_FOCUSED_TASK_TRANSLATION_Z:F = 0.05f

.field private static final TAG:Ljava/lang/String; = "RecentsViewAnimUtil"

.field private static final TASKVIEW_VIEW_TRANSLATION_Z:F = 0.1f

.field private static allTaskDismissRunning:Z

.field private static forceNotResetTaskVisuals:Z

.field public static isEnterStateAnimRunning:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static isExitStateAnimRunning:Z

.field private static isLaunchFromButtonRunning:Z

.field private static isRemoteRecentsAnimationRunning:Z

.field private static isTaskDismissAnimRunning:Z

.field private static isTaskLaunchAnimRunning:Z

.field private static mHasInvisibleAdjantTaskView:Z

.field private static mIndexBeforeRotationChanged:I

.field private static mtaskScaleProgerssStart:Z

.field private static overviewPeeking:Z

.field private static volatile recentsAnimationFinishTime:J

.field private static taskViewSwipeAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$CONTENT_ALPHA_PROPERTY$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$CONTENT_ALPHA_PROPERTY$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->CONTENT_ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation$lambda-0(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMHasInvisibleAdjantTaskView$p()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    return v0
.end method

.method public static final synthetic access$setAllTaskDismissRunning$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->allTaskDismissRunning:Z

    return-void
.end method

.method public static final synthetic access$setMHasInvisibleAdjantTaskView$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    return-void
.end method

.method public static final synthetic access$setTaskDismissAnimRunning$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning:Z

    return-void
.end method

.method public static final addAdjacentTaskGoingDownAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v2, 0x7f070564

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v1

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v2

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-interface {p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const v4, -0x42b33333  # -0.05f

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "translationAnimator"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;

    invoke-direct {p3, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p2, p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimationAsGrid$lambda-5(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation$lambda-2(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private final canAdjantTaskViewInvisible(FFF)Z
    .registers 4

    const/4 p0, 0x0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_6

    neg-float p3, p3

    :cond_6
    mul-float/2addr p2, p3

    cmpl-float p0, p2, p1

    if-gez p0, :cond_15

    sub-float/2addr p1, p2

    const/high16 p0, 0x3f800000  # 1.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static final createAllTasksDismissAnimation$lambda-9$lambda-8(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 12

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addDismissedTaskAnimations, onEnd, success="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "RecentsViewAnimUtil"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->allTaskDismissRunning:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_20

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void

    :cond_20
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p2

    if-nez p1, :cond_28

    move-object v4, v3

    goto :goto_2c

    :cond_28
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    :goto_2c
    invoke-virtual {p2, v4}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->onCleanAllTasks(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onClearAllAnimationFinished(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p2

    if-ltz p2, :cond_65

    move v4, v0

    :goto_39
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v7, :cond_46

    check-cast v6, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_47

    :cond_46
    move-object v6, v3

    :goto_47
    if-nez v6, :cond_4a

    goto :goto_60

    :cond_4a
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    const-string v8, "addDismissedTaskAnimations, task="

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_60
    :goto_60
    if-ne v4, p2, :cond_63

    goto :goto_65

    :cond_63
    move v4, v5

    goto :goto_39

    :cond_65
    :goto_65
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method private final createAnimForAdjacentTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Landroid/animation/Animator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;II)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_d

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-object p0

    :cond_d
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-interface {v2, p2, v1, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getAdjacentTaskViewAnimDisplacement(Landroid/graphics/PointF;FZ)V

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForChild(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    if-lez p3, :cond_6e

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v3

    invoke-interface {p3, p1, v0, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getAdjantTaskViewVisibleDistance(Landroid/view/View;II)F

    move-result p1

    iget p3, p2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_58

    goto :goto_59

    :cond_58
    move v4, v2

    :goto_59
    if-nez v4, :cond_5c

    goto :goto_5e

    :cond_5c
    iget p3, p2, Landroid/graphics/PointF;->y:F

    :goto_5e
    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/n;

    invoke-direct {p2, v1, p1, p3, p0}, Lcom/android/wm/shell/legacysplitscreen/n;-><init>(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForAdjacentTask$lambda-20$$inlined$addListener$default$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForAdjacentTask$lambda-20$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6e
    return-object v1
.end method

.method private static final createAnimForAdjacentTask$lambda-20$lambda-18(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string v0, "$adjacentAnim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adjacentTaskView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_30

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-direct {p0, p1, p4, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->canAdjantTaskViewInvisible(FFF)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string p2, "createAnimForAdjacentTask, invisible."

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    const/4 p0, 0x4

    invoke-virtual {p3, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_30
    return-void
.end method

.method private final createAnimForChild(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string p2, "createAnimForChild, scale NaN."

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/ObjectAnimator;-><init>()V

    return-object p0

    :cond_15
    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "PropertyListBuilder()\n  …               .build(tv)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createAnimForCurrentTask(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/Animator;
    .registers 9

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string p2, "createAnimForChild, scale NaN."

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/ObjectAnimator;-><init>()V

    return-object p0

    :cond_15
    const/4 p0, 0x3

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p0, v3

    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v1, [F

    aput p3, v0, v3

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p0, v1

    const/4 p2, 0x2

    sget-object p3, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v1, [F

    aput p4, v0, v3

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    aput-object p3, p0, p2

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "animator"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForCurrentTask$$inlined$addListener$default$1;

    invoke-direct {p2, p1, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForCurrentTask$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method private final createDismissDockIconAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(Lcom/android/systemui/shared/recents/model/Task;)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object p0

    :goto_c
    if-nez p0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    :goto_1a
    sget-object p1, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/oplus/quickstep/dock/DockIconView;->DOCK_ICON_EXIT:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p5, p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    sget-object p1, Lcom/oplus/quickstep/dock/DockIconView;->DOCK_VIEW_SCALE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const v4, 0x3f4ccccd  # 0.8f

    aput v4, v3, p2

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p5, v3, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-array v2, v2, [F

    aput v4, v2, p2

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p5, p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-instance p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;-><init>(Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {p5, p1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_5e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static final createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZZJ)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    const-string v0, "rv"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_1b

    :cond_17
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_1d

    :goto_1b
    const/4 v0, 0x0

    goto :goto_23

    :cond_1d
    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_23
    const-string v1, "TaskDismissAnimation, taskId="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "QuickStep"

    const-string v11, "RecentsViewAnimUtil"

    invoke-static {v6, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-nez v0, :cond_37

    goto :goto_41

    :cond_37
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :goto_41
    new-instance v12, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v12, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v13

    if-nez v13, :cond_4d

    return-object v12

    :cond_4d
    sget-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const-string v1, "SIMPLE_SCROLL_LOGIC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrollsArray(ZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)[I

    move-result-object v14

    new-instance v0, Lcom/android/quickstep/views/m;

    const/4 v2, 0x1

    invoke-direct {v0, v8, v2}, Lcom/android/quickstep/views/m;-><init>(Lcom/android/quickstep/views/TaskView;I)V

    invoke-virtual {v7, v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrollsArray(ZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)[I

    move-result-object v15

    if-le v13, v2, :cond_70

    aget v0, v14, v2

    aget v2, v14, v1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v5, v0

    goto :goto_71

    :cond_70
    move v5, v1

    :goto_71
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v16

    if-lez v13, :cond_192

    move/from16 v17, v1

    :goto_81
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move/from16 v18, v2

    const-string v2, "rv.getChildAt(i)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    if-eqz p2, :cond_c2

    sget-object v19, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v8, v18

    move-object/from16 v2, p1

    move v7, v3

    move v8, v4

    move-wide/from16 v3, p4

    move v9, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-nez v2, :cond_b0

    goto :goto_c5

    :cond_b0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v3, p4

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createDismissDockIconAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;JLcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->createLastDismissAnim(ILcom/android/launcher3/anim/PendingAnimation;)V

    goto :goto_c5

    :cond_c2
    move v7, v3

    move v8, v4

    move v9, v5

    :goto_c5
    move/from16 v2, v17

    move/from16 v1, v18

    move/from16 v17, v9

    move-wide/from16 v9, p4

    goto/16 :goto_182

    :cond_cf
    move v7, v3

    move v8, v4

    move v9, v5

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_db

    move v5, v9

    goto :goto_dc

    :cond_db
    const/4 v5, 0x0

    :goto_dc
    if-ne v8, v7, :cond_e2

    add-int/lit8 v3, v16, -0x1

    if-eq v8, v3, :cond_e6

    :cond_e2
    add-int/lit8 v4, v8, -0x1

    if-ne v4, v7, :cond_f0

    :cond_e6
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_ee

    neg-int v3, v9

    goto :goto_ef

    :cond_ee
    move v3, v9

    :goto_ef
    add-int/2addr v5, v3

    :cond_f0
    aget v3, v15, v1

    aget v4, v14, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-nez v5, :cond_fe

    move v5, v2

    goto :goto_ff

    :cond_fe
    const/4 v5, 0x0

    :goto_ff
    if-nez v5, :cond_17c

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v5

    sget-boolean v10, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-eqz v10, :cond_162

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    cmpg-float v10, v10, v4

    if-nez v10, :cond_117

    move v10, v2

    goto :goto_118

    :cond_117
    const/4 v10, 0x0

    :goto_118
    if-nez v10, :cond_162

    const-string v5, "createTaskDismissAnimation(), i="

    const-string v10, ", transX="

    invoke-static {v5, v1, v10}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v11, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_138

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_139

    :cond_138
    const/4 v1, 0x0

    :goto_139
    if-nez v1, :cond_13c

    goto :goto_13f

    :cond_13c
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setEnterStateAnimRunningCache(Z)V

    :goto_13f
    sget-object v1, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getADJACENT_TRANSLATE_X()Landroid/util/FloatProperty;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v10, 0x0

    aput v4, v5, v10

    aput v3, v5, v2

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move v4, v9

    move-wide/from16 v9, p4

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sget-object v3, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v12, v0, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    move/from16 v17, v4

    goto :goto_180

    :cond_162
    move v4, v9

    move-wide/from16 v9, p4

    const/4 v1, 0x0

    move/from16 v17, v4

    new-array v4, v2, [F

    aput v3, v4, v1

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sget-object v3, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v12, v0, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    goto :goto_180

    :cond_17c
    move/from16 v17, v9

    move-wide/from16 v9, p4

    :goto_180
    move/from16 v1, v18

    :goto_182
    if-lt v1, v13, :cond_186

    move v1, v2

    goto :goto_194

    :cond_186
    move v3, v7

    move v4, v8

    move/from16 v5, v17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v17, v2

    goto/16 :goto_81

    :cond_192
    move v7, v3

    move v8, v4

    :goto_194
    if-eqz v1, :cond_1a2

    new-instance v0, Lcom/oplus/quickstep/common/observers/a;

    move v4, v7

    move-object/from16 v7, p0

    invoke-direct {v0, v7}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v12, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    goto :goto_1a5

    :cond_1a2
    move v4, v7

    move-object/from16 v7, p0

    :goto_1a5
    if-eqz p2, :cond_1b0

    const v0, 0x3dcccccd  # 0.1f

    move-object/from16 v11, p1

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    goto :goto_1b2

    :cond_1b0
    move-object/from16 v11, p1

    :goto_1b2
    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;-><init>()V

    invoke-virtual {v12, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v13, Lcom/oplus/quickstep/utils/b;

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p0

    move v5, v8

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/oplus/quickstep/utils/b;-><init>(Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/views/OplusRecentsViewImpl;III)V

    invoke-virtual {v12, v13}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-nez v0, :cond_1d3

    goto :goto_1da

    :cond_1d3
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lcom/oplus/quickstep/dock/DockView;->createIconDismissAnimation(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;Ljava/lang/Long;)V

    :goto_1da
    invoke-virtual {v7, v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v12
.end method

.method private static final createTaskDismissAnimation$lambda-0(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .registers 4

    const-string v0, "$taskView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private static final createTaskDismissAnimation$lambda-2(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method private static final createTaskDismissAnimation$lambda-3(Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/views/OplusRecentsViewImpl;IIILjava/lang/Boolean;)V
    .registers 17

    move-object v0, p0

    move-object v6, p2

    move v1, p4

    move-object/from16 v2, p6

    const-string v3, "$taskView"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$rv"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskDismissAnimation, onEnd, isSuccess="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", taskId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_2f

    :goto_2d
    move-object v7, v8

    goto :goto_3a

    :cond_2f
    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v7, :cond_34

    goto :goto_2d

    :cond_34
    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_3a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "QuickStep"

    const-string v9, "RecentsViewAnimUtil"

    invoke-static {v7, v9, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "isSuccess"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c8

    if-eqz p1, :cond_82

    invoke-virtual {p2, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTask(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setLeftTopRightBottom(IIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    if-eqz v2, :cond_82

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-nez v3, :cond_76

    :goto_74
    move-object v3, v8

    goto :goto_7f

    :cond_76
    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v3, :cond_7b

    goto :goto_74

    :cond_7b
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_7f
    invoke-virtual {v2, v3}, Lcom/android/statistics/LauncherStatistics;->statRemoveQuickStartupApp(Ljava/lang/String;)V

    :cond_82
    invoke-virtual {p2, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_9f

    if-eqz p1, :cond_9b

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayValid()Z

    move-result v0

    if-nez v0, :cond_b2

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto :goto_b2

    :cond_9b
    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->forceReload()V

    goto :goto_b2

    :cond_9f
    const/4 v0, 0x1

    move v2, p3

    if-lt v2, v1, :cond_a7

    add-int/lit8 v2, p5, -0x1

    if-ne v1, v2, :cond_a9

    :cond_a7
    add-int/lit8 v1, v1, -0x1

    :cond_a9
    invoke-virtual {p2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSnapImmediatelyByTaskDismiss(Z)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    invoke-virtual {p2, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSnapImmediatelyByTaskDismiss(Z)V

    :cond_b2
    :goto_b2
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onLayout(ZIIII)V

    goto :goto_d5

    :cond_c8
    invoke-virtual {v3, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-nez v0, :cond_d2

    goto :goto_d5

    :cond_d2
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    :goto_d5
    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    invoke-virtual {p2, v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method private static final createTaskDismissAnimationAsGrid$lambda-4(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method private static final createTaskDismissAnimationAsGrid$lambda-5(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V
    .registers 4

    const-string p2, "$nextFocusedTaskView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$nextFocusedTaskViewHeaderHide"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setMtaskScaleProgerssStart(Z)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_3d

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_3d

    const-string p1, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getHEADER_ALPHA()Landroid/util/FloatProperty;

    move-result-object p1

    const/16 p2, 0xa

    new-array p2, p2, [F

    fill-array-data p2, :array_3e

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3d
    return-void

    :array_3e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static final createTaskGoingDownAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "J)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_1b

    :cond_11
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :goto_1b
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addAdjacentTaskGoingDownAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    new-instance p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v0
.end method

.method public static synthetic d(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForAdjacentTask$lambda-20$lambda-18(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/views/OplusRecentsViewImpl;IIILjava/lang/Boolean;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation$lambda-3(Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/views/OplusRecentsViewImpl;IIILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAllTasksDismissAnimation$lambda-9$lambda-8(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final getTranslationPropForClearAllPanel(IZLcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranslationPropForClearAllPanel, rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecentsViewPortrait = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsViewAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    invoke-static {p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result p1

    if-nez p0, :cond_2b

    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_2d

    :cond_2b
    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    :goto_2d
    invoke-static {p1}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->getOffsetForClearAllPanelView(Z)F

    move-result p1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_35

    neg-float p1, p1

    :cond_35
    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput p1, p0, v1

    const/4 p1, 0x0

    aput p1, p0, v0

    invoke-static {p2, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method private final isAddItemActivityTop(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.android.launcher/com.android.launcher3.dragndrop.AddItemActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    invoke-virtual {p5, p2, p0, v1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v1, 0x7f070564

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    const v1, 0x7f070981

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v2

    invoke-interface {p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result p1

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p1, p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public final addDismissedTaskAnimationsAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    invoke-virtual {p5, p2, p0, v1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v1, 0x7f070564

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    const v1, 0x7f070981

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v2

    invoke-interface {p1, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getDismissTaskOffset(Landroid/view/View;)I

    move-result p1

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p1, p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public final cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_10

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->cancelLightningAnimation()V

    :goto_17
    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string v0, "cancelLightningAnimation"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_15f

    add-int/lit8 v7, v1, -0x1

    if-ltz v7, :cond_2d

    const/4 v7, -0x1

    invoke-direct {p0, p1, v1, v7}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForAdjacentTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2d
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v8

    if-ge v7, v8, :cond_3c

    invoke-direct {p0, p1, v1, v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForAdjacentTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3c
    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v8, :cond_8b

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v9

    sget-object v10, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/quickstep/util/SplitScreenBounds;->getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v10

    const-string v11, "INSTANCE.getSecondaryWindowBounds(rv.context)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v11, v9, v5

    iget-object v10, v10, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    aget v9, v9, v6

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v11, v9}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_8b
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v10

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v9, v7, v10, v11}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result v9

    invoke-static {v2, v9}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    if-eqz v8, :cond_b9

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v8, :cond_b9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v8

    if-nez v8, :cond_b9

    const/4 v8, 0x0

    goto :goto_c6

    :cond_b9
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget v10, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    :goto_c6
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v11, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const-string v11, "createAdjacentPageAnimForTaskLaunch, centerTaskView="

    invoke-static {v11}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v1, :cond_dc

    goto :goto_e2

    :cond_dc
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v12

    if-nez v12, :cond_e4

    :goto_e2
    const/4 v12, 0x0

    goto :goto_e6

    :cond_e4
    iget-object v12, v12, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    :goto_e6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", lastComputedTaskSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", scale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", scaledTarget="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", target="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", translationX="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", translationY="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "QuickStep"

    const-string v9, "RecentsViewAnimUtil"

    invoke-static {v7, v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, p2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v2, :cond_13b

    check-cast p2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_13c

    :cond_13b
    const/4 p2, 0x0

    :goto_13c
    if-nez p2, :cond_13f

    goto :goto_142

    :cond_13f
    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->resetPressedScaleIfNeed()V

    :goto_142
    invoke-direct {p0, v1, v3, v8, v10}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForCurrentTask(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p0, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-array p2, v6, [F

    aput v4, p2, v5

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;

    invoke-direct {p0, v1, p1, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_15f
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p2

    sget-object v3, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v6, [F

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_175

    neg-float v7, p0

    goto :goto_176

    :cond_175
    move v7, p0

    :goto_176
    aput v7, v6, v5

    invoke-static {p2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sub-int p2, v2, v1

    add-int/2addr p2, v2

    if-ltz p2, :cond_1a9

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v1

    if-ge p2, v1, :cond_1a9

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_19a

    neg-float p0, p0

    :cond_19a
    invoke-virtual {v1, p0}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1a9
    return-object v0
.end method

.method public final createAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;J)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    move-object/from16 v6, p1

    const-string v0, "rv"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/anim/PendingAnimation;

    move-wide/from16 v8, p2

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v10

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v13, 0x0

    if-lez v10, :cond_f5

    move v0, v13

    move v14, v0

    move v15, v14

    :goto_1d
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v3, 0x1

    if-nez v1, :cond_29

    :goto_28
    goto :goto_6b

    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v1

    aget v1, v1, v13

    move-object v4, v2

    check-cast v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v12

    if-nez v12, :cond_3a

    :cond_38
    :goto_38
    move v12, v13

    goto :goto_44

    :cond_3a
    iget-object v12, v12, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v12, :cond_3f

    goto :goto_38

    :cond_3f
    iget v12, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v12, v1, :cond_38

    move v12, v3

    :goto_44
    if-eqz v12, :cond_6e

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isRunningTaskWindowZoom(I)Z

    move-result v1

    if-nez v1, :cond_6e

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v12

    if-nez v12, :cond_5a

    :goto_58
    const/4 v12, 0x0

    goto :goto_63

    :cond_5a
    iget-object v12, v12, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-nez v12, :cond_5f

    goto :goto_58

    :cond_5f
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    :goto_63
    invoke-direct {v1, v12}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isAddItemActivityTop(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    move v15, v0

    move v14, v3

    :cond_6b
    :goto_6b
    move v13, v5

    goto/16 :goto_ed

    :cond_6e
    if-eqz v14, :cond_af

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_78

    :cond_76
    :goto_76
    move v0, v13

    goto :goto_ab

    :cond_78
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_7d

    goto :goto_76

    :cond_7d
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_84

    goto :goto_76

    :cond_84
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v12, v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v12, :cond_8f

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_90

    :cond_8f
    const/4 v1, 0x0

    :goto_90
    if-nez v1, :cond_94

    :goto_92
    const/4 v1, 0x0

    goto :goto_a4

    :cond_94
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-nez v1, :cond_9b

    goto :goto_92

    :cond_9b
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v1, :cond_a0

    goto :goto_92

    :cond_a0
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_a4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_76

    move v0, v3

    :goto_ab
    if-eqz v0, :cond_af

    goto/16 :goto_28

    :cond_af
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMenuView()Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    move-result-object v0

    if-nez v0, :cond_b6

    goto :goto_b9

    :cond_b6
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeSafely()V

    :goto_b9
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isSupportQuickStartup()Z

    move-result v0

    if-eqz v0, :cond_c7

    goto/16 :goto_28

    :cond_c7
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_dc

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object/from16 v1, p1

    move v12, v3

    move-wide/from16 v3, p2

    move v13, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimationsAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    goto :goto_e8

    :cond_dc
    move v12, v3

    move v13, v5

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    :goto_e8
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v12

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_ed
    if-lt v13, v10, :cond_f1

    move v13, v14

    goto :goto_f7

    :cond_f1
    move v0, v13

    const/4 v13, 0x0

    goto/16 :goto_1d

    :cond_f5
    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_f7
    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;

    invoke-direct {v0, v11}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v13, :cond_10d

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_10d

    move-object v12, v0

    check-cast v12, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_10e

    :cond_10d
    const/4 v12, 0x0

    :goto_10e
    if-nez v12, :cond_119

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/relay/data/RelayState$ClickClearAll;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ClickClearAll;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    :cond_119
    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/g;

    invoke-direct {v0, v6, v12}, Lcom/oplus/quickstep/rapidreaction/utils/g;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v7
.end method

.method public final createAppToOverview(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pa"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000  # 1.0f

    move-object v0, p2

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p1

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentsViewTransY()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p2, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_3e

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_40

    :cond_3e
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_40
    if-eqz p2, :cond_45

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_47

    :cond_45
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_47
    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getWindowTranslationYOffset()I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_56

    :cond_55
    neg-int v0, v0

    :goto_56
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/TranslationYProperty;->recalculateBaseCoefficient()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setDraggingHeight(I)V

    return-void
.end method

.method public final createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;ZI)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "rv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createRotateAnimation(), fadeInChildren="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "RecentsViewAnimUtil"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-eqz v1, :cond_33

    sput v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mIndexBeforeRotationChanged:I

    :cond_33
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v6, :cond_c8

    move v11, v9

    :goto_48
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v13

    sget v14, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mIndexBeforeRotationChanged:I

    if-ne v14, v3, :cond_54

    if-ne v3, v11, :cond_92

    :cond_54
    instance-of v11, v13, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v11, :cond_92

    check-cast v13, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v13}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v11

    sget-object v14, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v15, v10, [F

    if-eqz v1, :cond_67

    move/from16 v16, v7

    goto :goto_69

    :cond_67
    move/from16 v16, v8

    :goto_69
    aput v16, v15, v9

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v13}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isSupportQuickStartup()Z

    move-result v11

    if-eqz v11, :cond_c3

    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v11

    sget-object v13, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->LIGHTNING_ALPHA:Landroid/util/FloatProperty;

    new-array v14, v10, [F

    if-eqz v1, :cond_87

    move v15, v7

    goto :goto_88

    :cond_87
    move v15, v8

    :goto_88
    aput v15, v14, v9

    invoke-static {v11, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_c3

    :cond_92
    sget-object v11, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v14, v10, [F

    if-eqz v1, :cond_9a

    move v15, v7

    goto :goto_9b

    :cond_9a
    move v15, v8

    :goto_9b
    aput v15, v14, v9

    invoke-static {v13, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-nez v13, :cond_a8

    const/4 v11, 0x0

    goto :goto_ac

    :cond_a8
    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v11

    :goto_ac
    instance-of v13, v11, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v13, :cond_c3

    move-object v13, v11

    check-cast v13, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iget-object v13, v13, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v13}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result v13

    if-nez v13, :cond_c3

    new-instance v13, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$1$1;

    invoke-direct {v13, v11}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$1$1;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_c3
    :goto_c3
    if-lt v12, v6, :cond_c6

    goto :goto_c8

    :cond_c6
    move v11, v12

    goto :goto_48

    :cond_c8
    :goto_c8
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    if-nez v1, :cond_d3

    goto :goto_de

    :cond_d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->createRotateAnimation(Z)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_de
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onRecentsViewRotate(ILandroid/animation/AnimatorSet;)V

    if-eqz v2, :cond_102

    if-eq v2, v10, :cond_f0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_102

    const/4 v1, 0x3

    if-eq v2, v1, :cond_f0

    goto :goto_115

    :cond_f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/dock/DockView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    new-array v3, v10, [F

    aput v7, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_115

    :cond_102
    if-eqz v1, :cond_115

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/dock/DockView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    new-array v3, v10, [F

    aput v8, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_115
    :goto_115
    new-instance v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$lambda-14$$inlined$addListener$default$1;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$lambda-14$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4
.end method

.method public final createTaskDismissAnimationAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZZJZ)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "rv"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissedTaskView"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_20

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_20
    new-instance v13, Lcom/android/launcher3/anim/PendingAnimation;

    move-wide/from16 v8, p5

    invoke-direct {v13, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v10

    if-nez v10, :cond_2e

    return-object v13

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v11

    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v14

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v6, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v14, v0, :cond_55

    const/16 v16, 0x1

    goto :goto_57

    :cond_55
    const/16 v16, 0x0

    :goto_57
    const-string v0, "rv.requireTaskViewAt(i)"

    if-eqz v16, :cond_cf

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v17

    if-nez v17, :cond_cf

    iget-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    if-lez v1, :cond_7d

    iget-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v2, v11, -0x1

    int-to-float v2, v2

    const/high16 v19, 0x40000000  # 2.0f

    div-float v2, v2, v19

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    :goto_7e
    if-lez v11, :cond_b3

    const/4 v2, 0x0

    :goto_81
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v6, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v7, :cond_91

    move/from16 v20, v3

    move-object/from16 v21, v5

    goto :goto_aa

    :cond_91
    move/from16 v20, v3

    iget-object v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    move-object/from16 v21, v5

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v1, :cond_a3

    if-nez v3, :cond_a7

    :cond_a3
    if-nez v1, :cond_aa

    if-nez v3, :cond_aa

    :cond_a7
    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_b7

    :cond_aa
    :goto_aa
    if-lt v4, v11, :cond_ad

    goto :goto_b7

    :cond_ad
    move v2, v4

    move/from16 v3, v20

    move-object/from16 v5, v21

    goto :goto_81

    :cond_b3
    move/from16 v20, v3

    move-object/from16 v21, v5

    :goto_b7
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_cc

    check-cast v2, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v6, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v22, v1

    move/from16 v23, v2

    goto :goto_d7

    :cond_cc
    move/from16 v22, v1

    goto :goto_d5

    :cond_cf
    move/from16 v20, v3

    move-object/from16 v21, v5

    const/16 v22, 0x0

    :goto_d5
    const/16 v23, 0x0

    :goto_d7
    iget-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_e9

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v1

    if-eqz v1, :cond_e9

    const/4 v1, 0x1

    goto :goto_ea

    :cond_e9
    const/4 v1, 0x0

    :goto_ea
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderFirstInGrid()Z

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderLastInGrid()Z

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget v3, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v6, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v4

    if-ne v3, v4, :cond_109

    const/16 v26, 0x1

    goto :goto_10b

    :cond_109
    const/16 v26, 0x0

    :goto_10b
    if-eqz v2, :cond_1db

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_1db

    iget-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v2

    iget-object v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v3

    sub-int v3, v11, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_128

    move/from16 v19, v4

    goto :goto_12a

    :cond_128
    const/16 v19, 0x0

    :goto_12a
    if-le v3, v2, :cond_12e

    move v2, v4

    goto :goto_12f

    :cond_12e
    const/4 v2, 0x0

    :goto_12f
    iget-object v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_13c

    if-nez v16, :cond_13c

    move/from16 v27, v4

    goto :goto_13e

    :cond_13c
    const/16 v27, 0x0

    :goto_13e
    if-eqz v19, :cond_142

    if-nez v3, :cond_146

    :cond_142
    if-eqz v2, :cond_14a

    if-eqz v27, :cond_14a

    :cond_146
    move/from16 v2, v20

    :goto_148
    const/4 v3, 0x0

    goto :goto_157

    :cond_14a
    if-eqz v19, :cond_14e

    if-nez v22, :cond_152

    :cond_14e
    if-eqz v2, :cond_155

    if-nez v22, :cond_155

    :cond_152
    move/from16 v2, v23

    goto :goto_148

    :cond_155
    const/4 v2, 0x0

    goto :goto_148

    :goto_157
    cmpl-float v18, v2, v3

    const/4 v4, 0x2

    if-lez v18, :cond_16b

    if-le v11, v4, :cond_164

    iget-boolean v5, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_169

    neg-float v2, v2

    goto :goto_169

    :cond_164
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSnapToFocusedTaskScrollDiff()I

    move-result v2

    int-to-float v2, v2

    :cond_169
    :goto_169
    add-float/2addr v2, v3

    goto :goto_16c

    :cond_16b
    move v2, v3

    :goto_16c
    if-eqz v1, :cond_172

    if-eqz v26, :cond_172

    const/4 v1, 0x1

    goto :goto_173

    :cond_172
    const/4 v1, 0x0

    :goto_173
    cmpg-float v5, v2, v3

    if-nez v5, :cond_179

    const/4 v5, 0x1

    goto :goto_17a

    :cond_179
    const/4 v5, 0x0

    :goto_17a
    if-nez v5, :cond_1d6

    if-eq v11, v4, :cond_18f

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    if-nez v4, :cond_186

    :cond_184
    const/4 v4, 0x0

    goto :goto_18d

    :cond_186
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v4

    if-nez v4, :cond_184

    const/4 v4, 0x1

    :goto_18d
    if-eqz v4, :cond_1d6

    :cond_18f
    const v4, 0x3ccccccd  # 0.025f

    add-int/lit8 v5, v11, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v3, 0x3f400000  # 0.75f

    add-float/2addr v5, v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v5, v3, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    if-lez v11, :cond_1d2

    const/4 v3, 0x0

    :goto_1a2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v6, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    move/from16 v29, v1

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v1, v5, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v13, v3, v0, v2, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    const v0, 0x3ccccccd  # 0.025f

    sub-float/2addr v5, v0

    const/high16 v1, 0x3f400000  # 0.75f

    invoke-static {v5, v1, v8}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    if-lt v4, v11, :cond_1c9

    goto :goto_1df

    :cond_1c9
    move v3, v4

    move v4, v8

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-wide/from16 v8, p5

    goto :goto_1a2

    :cond_1d2
    move/from16 v29, v1

    move v8, v4

    goto :goto_1df

    :cond_1d6
    move/from16 v29, v1

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_1df

    :cond_1db
    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v29, 0x0

    :goto_1df
    if-lez v10, :cond_314

    const/4 v1, 0x0

    :goto_1e2
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v7, :cond_21f

    if-eqz p3, :cond_215

    if-eqz p7, :cond_1fd

    invoke-virtual {v6, v13}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    move/from16 v18, v11

    move/from16 v17, v14

    move-object/from16 v30, v21

    const/4 v14, 0x0

    move v11, v8

    move/from16 v8, v20

    goto/16 :goto_305

    :cond_1fd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v8, v20

    const/4 v11, 0x1

    move-wide/from16 v3, p5

    move-object/from16 v30, v21

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimationsAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    goto/16 :goto_300

    :cond_215
    move/from16 v18, v11

    move/from16 v8, v20

    move/from16 v17, v14

    move-object/from16 v30, v21

    goto/16 :goto_302

    :cond_21f
    move/from16 v18, v11

    move/from16 v8, v20

    move-object/from16 v30, v21

    const/4 v11, 0x1

    instance-of v2, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v2, :cond_300

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v16, :cond_23c

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_246

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v6, v0, v1}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-nez v1, :cond_246

    goto/16 :goto_300

    :cond_23c
    if-lt v1, v12, :cond_300

    invoke-virtual {v6, v0, v7}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-nez v1, :cond_246

    goto/16 :goto_300

    :cond_246
    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v0, v1, :cond_2bd

    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v1, v1

    iget-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput-boolean v11, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    move-object v2, v0

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v3

    sget-object v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getHEADER_ALPHA()Landroid/util/FloatProperty;

    move-result-object v4

    const/16 v5, 0xa

    new-array v5, v5, [F

    fill-array-data v5, :array_362

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    move-object/from16 v3, v30

    iput-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v4, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v17, v14

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v14, 0x0

    invoke-static {v5, v14, v11}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v13, v0, v4, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    iget-boolean v3, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_296

    move v3, v8

    goto :goto_297

    :cond_296
    neg-float v3, v8

    :goto_297
    invoke-static {v5, v14, v11}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v13, v0, v1, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    neg-float v1, v1

    if-nez v22, :cond_2a6

    iget v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    sub-float/2addr v1, v3

    :cond_2a6
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {v5, v14, v11}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v13, v0, v2, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-static {v5, v14, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v14, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_305

    :cond_2bd
    move/from16 v17, v14

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v14, 0x0

    if-eqz v1, :cond_2c7

    move/from16 v3, v23

    goto :goto_2c8

    :cond_2c7
    move v3, v8

    :goto_2c8
    if-eqz v16, :cond_2ec

    if-nez v1, :cond_2ec

    invoke-virtual {v6, v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-boolean v1, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    int-to-float v2, v2

    if-eqz v1, :cond_2dd

    goto :goto_2de

    :cond_2dd
    neg-float v2, v2

    :goto_2de
    add-float/2addr v3, v2

    if-eqz v24, :cond_2ec

    if-eqz v1, :cond_2e8

    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    int-to-float v1, v1

    neg-float v1, v1

    goto :goto_2eb

    :cond_2e8
    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    int-to-float v1, v1

    :goto_2eb
    add-float/2addr v3, v1

    :cond_2ec
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    iget-boolean v2, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2f5

    goto :goto_2f6

    :cond_2f5
    neg-float v3, v3

    :goto_2f6
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v2, v14, v11}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v3, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_305

    :cond_300
    :goto_300
    move/from16 v17, v14

    :goto_302
    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v14, 0x0

    :goto_305
    if-lt v9, v10, :cond_308

    goto :goto_31a

    :cond_308
    move/from16 v20, v8

    move v1, v9

    move v8, v11

    move/from16 v14, v17

    move/from16 v11, v18

    move-object/from16 v21, v30

    goto/16 :goto_1e2

    :cond_314
    move/from16 v18, v11

    move/from16 v17, v14

    move-object/from16 v30, v21

    :goto_31a
    if-eqz p3, :cond_32f

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_323

    goto :goto_329

    :cond_323
    const v1, 0x3d4ccccd  # 0.05f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :goto_329
    const v0, 0x3dcccccd  # 0.1f

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_32f
    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/g;

    move-object/from16 v1, v30

    invoke-direct {v0, v15, v1}, Lcom/oplus/quickstep/rapidreaction/utils/g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v13, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    iput-object v13, v6, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/quickstep/views/TaskView;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v14, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, v29

    move/from16 v6, v17

    move/from16 v7, v24

    move/from16 v8, v25

    move v9, v12

    move/from16 v10, v18

    move/from16 v11, v16

    move/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZLcom/android/quickstep/views/TaskView;IZZIIZZ)V

    invoke-virtual {v13, v14}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v13

    :array_362
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            "J)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->clearEnterAnim()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    const/16 v1, 0xa

    new-array v2, v1, [F

    fill-array-data v2, :array_82

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sget-object v2, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p3, p0, v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result p0

    if-nez p0, :cond_44

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_44

    :cond_42
    const/4 p0, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p0, 0x1

    :goto_45
    if-eqz p0, :cond_4d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    if-eqz v3, :cond_79

    :cond_4d
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v3, :cond_79

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v3

    if-nez v3, :cond_60

    goto :goto_63

    :cond_60
    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    :goto_63
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v3

    sget-object v4, Lcom/oplus/quickstep/dock/DockView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    fill-array-data v1, :array_9a

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p3, p4, v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    :cond_79
    new-instance p4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskLaunchAnimation$1$1;

    invoke-direct {p4, p2, p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskLaunchAnimation$1$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V

    invoke-virtual {p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3

    :array_82
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getAllTaskDismissRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->allTaskDismissRunning:Z

    return p0
.end method

.method public final getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;>;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->CONTENT_ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public final getForceNotResetTaskVisuals()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->forceNotResetTaskVisuals:Z

    return p0
.end method

.method public final getMtaskScaleProgerssStart()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    return p0
.end method

.method public final getOverviewPeeking()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->overviewPeeking:Z

    return p0
.end method

.method public final getRecentsAnimationFinishTime()J
    .registers 3

    sget-wide v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsAnimationFinishTime:J

    return-wide v0
.end method

.method public final getTaskViewSwipeAction()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isExitStateAnimRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isExitStateAnimRunning:Z

    return p0
.end method

.method public final isLaunchFromButtonRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning:Z

    return p0
.end method

.method public final isRemoteRecentsAnimationRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning:Z

    return p0
.end method

.method public final isTaskDismissAnimRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning:Z

    return p0
.end method

.method public final isTaskLaunchAnimRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    return p0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setLaunchFromButtonRunning(Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    return-void
.end method

.method public final setExitStateAnimRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isExitStateAnimRunning:Z

    return-void
.end method

.method public final setForceNotResetTaskVisuals(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->forceNotResetTaskVisuals:Z

    return-void
.end method

.method public final setLaunchFromButtonRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning:Z

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_7

    goto :goto_10

    :cond_7
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-void
.end method

.method public final setMtaskScaleProgerssStart(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    return-void
.end method

.method public final setOverviewPeeking(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->overviewPeeking:Z

    return-void
.end method

.method public final setRecentsAnimationFinishTime(J)V
    .registers 3

    sput-wide p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsAnimationFinishTime:J

    return-void
.end method

.method public final setRemoteRecentsAnimationRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning:Z

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_7

    goto :goto_10

    :cond_7
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-void
.end method

.method public final setTaskLaunchAnimRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    return-void
.end method

.method public final setTaskViewSwipeAction(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning:Z

    if-nez p0, :cond_a

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning:Z

    if-eqz p0, :cond_12

    :cond_a
    if-nez p1, :cond_d

    goto :goto_12

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_12
    return-void
.end method

.method public final showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    const/4 v0, 0x0

    if-nez p0, :cond_16

    goto :goto_1f

    :cond_16
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    if-eqz v0, :cond_22

    return-void

    :cond_22
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_2d

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_2d
    if-nez v1, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showLightningAnimation()V

    :goto_33
    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string v0, "showLightningAnimation"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
