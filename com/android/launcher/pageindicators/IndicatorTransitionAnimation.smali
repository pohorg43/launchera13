.class public final Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$Companion;

.field private static final RECOVERY_ANIM_DURATION:J = 0x1f4L

.field private static final SCALE_FACTOR:F = 1.04f

.field private static final SWIPE_ANIM_DURATION:J = 0xd9L

.field private static final SWIPE_LEFT_TRANSLATION_X:F = -10.0f

.field private static final SWIPE_RIGHT_TRANSLATION_X:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "IndicatorTransitionAnimation"


# instance fields
.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIndicatorInitScale:F

.field private mIndicatorTransAnim:Landroid/animation/AnimatorSet;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mRecoveryAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->Companion:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "mIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mLauncher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p2, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorInitScale:F

    return-void
.end method

.method public static final synthetic access$startRecoveryAnim(Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->startRecoveryAnim()V

    return-void
.end method

.method private final startRecoveryAnim()V
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mRecoveryAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    iget v6, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorInitScale:F

    aput v6, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mRecoveryAnim:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_33

    goto :goto_3b

    :cond_33
    new-instance v4, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$startRecoveryAnim$$inlined$doOnEnd$1;

    invoke-direct {v4}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$startRecoveryAnim$$inlined$doOnEnd$1;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_3b
    iget-object v3, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mRecoveryAnim:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_40

    goto :goto_4a

    :cond_40
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_4a
    iget-object p0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mRecoveryAnim:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_4f

    goto :goto_52

    :cond_4f
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_52
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorTransAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_8
    iget-object p0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mRecoveryAnim:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_10
    return-void
.end method

.method public final start(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isStateAnimRunningWithoutMsgCheck()Z

    move-result v0

    const-string v1, "IndicatorTransitionAnimation"

    if-eqz v0, :cond_1d

    const-string p0, "Ignore it as state animation is running"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.states.OplusBaseLauncherState"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v2, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iput v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorInitScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "mIndicatorInitScale = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorTransAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5f

    const/high16 p1, -0x3ee00000  # -10.0f

    goto :goto_61

    :cond_5f
    const/high16 p1, 0x41200000  # 10.0f

    :goto_61
    const v0, 0x3f851eb8  # 1.04f

    iget v1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorInitScale:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    aput v1, v4, v5

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorTransAnim:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_86

    goto :goto_90

    :cond_86
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_90
    iget-object p1, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorTransAnim:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_95

    goto :goto_9d

    :cond_95
    new-instance v0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$start$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation$start$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_9d
    iget-object p0, p0, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->mIndicatorTransAnim:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_a2

    goto :goto_a5

    :cond_a2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_a5
    return-void
.end method
