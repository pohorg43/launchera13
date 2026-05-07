.class public final Lcom/android/launcher3/anim/LauncherFoldAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/LauncherFoldAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/LauncherFoldAnimation$Companion;

.field private static final DELAY_RESTORE:J = 0x3e8L

.field private static final DISABLE_ANIMATION:Z = true

.field private static final DURATION_ALPHA:J = 0x190L

.field private static final DURATION_SCALE:J = 0x1f4L

.field private static final DURATION_TRANS:J = 0x190L

.field private static final FRAME_THRESHOLD:F = 0.05f

.field private static final LEFT_PAGE_INIT_TRANSX:F = 10.0f

.field private static final MIN_SCALE_CELL_LAYOUT:F = 0.98f

.field private static final ONLY_ALPHA_ANIM:Z = true

.field private static final RIGHT_PAGE_INIT_TRANSX:F = -10.0f

.field private static final TAG:Ljava/lang/String; = "LauncherFoldAnimation"


# instance fields
.field private mAnimPrepared:Z

.field private mAppearAnimation:Landroid/animation/Animator;

.field private mEnsureLauncherViewRestore:Ljava/lang/Runnable;

.field private mFrameCount:I

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/LauncherFoldAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/LauncherFoldAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->Companion:Lcom/android/launcher3/anim/LauncherFoldAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mEnsureLauncherViewRestore:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/LauncherFoldAnimation;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->createAlphaAnimation$lambda-5$lambda-4(Lcom/android/launcher3/anim/LauncherFoldAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/anim/LauncherFoldAnimation;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$setMFrameCount$p(Lcom/android/launcher3/anim/LauncherFoldAnimation;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mFrameCount:I

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mEnsureLauncherViewRestore$lambda-0(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    return-void
.end method

.method private final buildAnimation()Landroid/animation/Animator;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_13

    :cond_6
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_13
    const-string v0, "buildAnimation, isTwoPanel = "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherFoldAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_26

    :cond_24
    :goto_24
    move v1, v2

    goto :goto_31

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_24

    :cond_2d
    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-ne v0, v1, :cond_24

    :goto_31
    if-eqz v1, :cond_40

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->createAlphaAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    :cond_40
    invoke-direct {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->createAlphaAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final createAlphaAnimation()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "alphaAnim"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/anim/LauncherFoldAnimation$createAlphaAnimation$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation$createAlphaAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_2a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createAlphaAnimation$lambda-5$lambda-4(Lcom/android/launcher3/anim/LauncherFoldAnimation;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mFrameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mFrameCount:I

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v2, p1, v0

    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    const/4 v2, 0x0

    if-eqz v1, :cond_37

    iget-object p0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    :goto_30
    if-nez v2, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    :goto_40
    if-nez v2, :cond_43

    goto :goto_51

    :cond_43
    iget p0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mFrameCount:I

    int-to-float p0, p0

    const v0, 0x3d4ccccd  # 0.05f

    mul-float/2addr p0, v0

    invoke-static {p1, p0}, Li1/d;->c(FF)F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_51
    return-void
.end method

.method private static final mEnsureLauncherViewRestore$lambda-0(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ensure restore runnable run. mAnimPrepared = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAnimPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", running = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    move-object v1, v2

    goto :goto_29

    :cond_21
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherFoldAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAnimPrepared:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    const/4 v3, 0x1

    if-nez v0, :cond_41

    :cond_3f
    move v0, v1

    goto :goto_48

    :cond_41
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v3, :cond_3f

    move v0, v3

    :goto_48
    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_50

    :cond_4e
    move v3, v1

    goto :goto_56

    :cond_50
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-ne v0, v3, :cond_4e

    :goto_56
    if-eqz v3, :cond_5c

    invoke-virtual {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->start()V

    goto :goto_7d

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_62

    move-object v0, v2

    goto :goto_66

    :cond_62
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    :goto_66
    if-nez v0, :cond_69

    goto :goto_6e

    :cond_69
    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_6e
    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_73

    goto :goto_77

    :cond_73
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    :goto_77
    if-nez v2, :cond_7a

    goto :goto_7d

    :cond_7a
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7d
    :goto_7d
    iput-boolean v1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAnimPrepared:Z

    return-void
.end method

.method private final prepareAnimation()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final onConfigurationChange()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAnimPrepared:Z

    const-string v1, "Fold state config change, mAnimPrepared = "

    const-string v2, "LauncherFoldAnimation"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAnimPrepared:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    goto :goto_1b

    :cond_14
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_1b

    move v1, v2

    :cond_1b
    :goto_1b
    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->start()V

    :cond_28
    return-void
.end method

.method public final onFoldStateSettingsChange(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->prepareAnimation()V

    return-void
.end method

.method public final start()V
    .registers 3

    const-string v0, "LauncherFoldAnimation"

    const-string v1, "Start appear animation"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->buildAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_10

    goto :goto_18

    :cond_10
    new-instance v1, Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance v1, Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnEnd$1;

    invoke-direct {v1}, Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnEnd$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_25
    iget-object v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAppearAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation;->mAnimPrepared:Z

    return-void
.end method
