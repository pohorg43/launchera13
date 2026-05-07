.class public final Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;

.field private static final NORMAL_SCALE:F = 1.0f

.field private static final PRESSED_SCALE:F = 0.97f

.field public static final SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final START_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "OverScrollerHelper"


# instance fields
.field private isPressed:Z

.field private normalAnimator:Landroid/animation/Animator;

.field private normalScale:F

.field private pressedAnimator:Landroid/animation/Animator;

.field private final taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->Companion:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;

    new-instance v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion$SCALE_PROPERTY$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion$SCALE_PROPERTY$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    return-void
.end method

.method public static synthetic a(FLcom/oplus/quickstep/anim/TaskViewPressedAnimation;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal$lambda-2$lambda-1(FLcom/oplus/quickstep/anim/TaskViewPressedAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final animateToNormal$lambda-2$lambda-1(FLcom/oplus/quickstep/anim/TaskViewPressedAnimation;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->getNormalScale()F

    move-result v0

    invoke-static {p2, p0, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->getTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method private final cancelToNormal()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isNormalStarted()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_10
    const-string v1, "cancelToNormal "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OverScrollerHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalAnimator:Landroid/animation/Animator;

    if-nez p0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_25
    :goto_25
    return-void
.end method

.method private final cancelToPressed()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressedStarted()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_10
    const-string v1, "cancelToPressed "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OverScrollerHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-nez p0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_25
    :goto_25
    return-void
.end method

.method private final isPressedStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    :goto_a
    return p0
.end method


# virtual methods
.method public final animateToNormal()V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelAllAnimator()V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_d
    const-string v1, "animateToNormal "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OverScrollerHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_25

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    :cond_25
    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    iget v2, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    cmpg-float v0, v2, v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    if-eqz v0, :cond_3a

    goto :goto_65

    :cond_3a
    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_68

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/e0;

    invoke-direct {v3, v0, p0}, Lcom/android/wm/shell/bubbles/e0;-><init>(FLcom/oplus/quickstep/anim/TaskViewPressedAnimation;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->setPressed(Z)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalAnimator:Landroid/animation/Animator;

    return-void

    :cond_65
    :goto_65
    iput-boolean v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    return-void

    :array_68
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final animateToPressed()V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelAllAnimator()V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_d
    const-string v1, "animateToPressed "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OverScrollerHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_3c
    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const v5, 0x3f7851ec  # 0.97f

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->setPressed(Z)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final cancelAllAnimator()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelToPressed()V

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelToNormal()V

    return-void
.end method

.method public final getNormalScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    return p0
.end method

.method public final getTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-object p0
.end method

.method public final isNormalStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalAnimator:Landroid/animation/Animator;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public final isPressed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    return p0
.end method

.method public final setNormalScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    return-void
.end method

.method public final setPressed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    return-void
.end method
