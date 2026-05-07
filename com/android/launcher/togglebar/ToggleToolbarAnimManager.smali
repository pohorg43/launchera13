.class public final Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$Companion;

.field private static final TAG:Ljava/lang/String; = "ToggleToolbarAnimManager"


# instance fields
.field private mAnimation:Landroid/animation/AnimatorSet;

.field private mMainButtonContainer:Landroid/view/View;

.field private mSecondaryContainer:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->Companion:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "mainButtonContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "secondaryContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mMainButtonContainer:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mSecondaryContainer:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getMMainButtonContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mMainButtonContainer:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMSecondaryContainer$p(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mSecondaryContainer:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 24

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string/jumbo v3, "showInterpolator"

    move-object/from16 v4, p5

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "hideInterpolator"

    move-object/from16 v5, p8

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mainUiExitOrEnterToolbarAnimation, mainTargetAlpha = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", backOpsTargetAlpha = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ToggleToolbarAnimManager"

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v3}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_48

    const-string v3, "Return as animation is running"

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_45

    goto :goto_48

    :cond_45
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_48
    :goto_48
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mMainButtonContainer:Landroid/view/View;

    const/4 v6, 0x0

    if-nez v3, :cond_56

    move-object v3, v6

    goto :goto_5e

    :cond_56
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_5e
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v3

    iget-object v7, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mSecondaryContainer:Landroid/view/View;

    if-nez v7, :cond_68

    move-object v7, v6

    goto :goto_70

    :cond_68
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    :goto_70
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v7

    if-eqz v3, :cond_79

    if-eqz v7, :cond_79

    return-object v6

    :cond_79
    iget-object v6, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mMainButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v10, v9, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v8, 0x0

    cmpg-float v10, v1, v8

    if-nez v10, :cond_8e

    move v12, v9

    goto :goto_8f

    :cond_8e
    move v12, v11

    :goto_8f
    if-eqz v12, :cond_94

    move-wide/from16 v12, p6

    goto :goto_96

    :cond_94
    move-wide/from16 v12, p3

    :goto_96
    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez v10, :cond_9d

    move v12, v9

    goto :goto_9e

    :cond_9d
    move v12, v11

    :goto_9e
    if-eqz v12, :cond_a2

    move-object v12, v5

    goto :goto_a3

    :cond_a2
    move-object v12, v4

    :goto_a3
    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v12, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mSecondaryContainer:Landroid/view/View;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v2, v14, v11

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    cmpg-float v8, v2, v8

    if-nez v8, :cond_b8

    move v13, v9

    goto :goto_b9

    :cond_b8
    move v13, v11

    :goto_b9
    if-eqz v13, :cond_be

    move-wide/from16 v13, p6

    goto :goto_c0

    :cond_be
    move-wide/from16 v13, p3

    :goto_c0
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez v8, :cond_c7

    move v8, v9

    goto :goto_c8

    :cond_c7
    move v8, v11

    :goto_c8
    if-eqz v8, :cond_cb

    move-object v4, v5

    :cond_cb
    invoke-virtual {v12, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v3, :cond_d9

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_d5

    goto :goto_109

    :cond_d5
    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_109

    :cond_d9
    if-eqz v7, :cond_e4

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_e0

    goto :goto_109

    :cond_e0
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_109

    :cond_e4
    if-nez v10, :cond_e8

    move v4, v9

    goto :goto_e9

    :cond_e8
    move v4, v11

    :goto_e9
    const/4 v5, 0x2

    if-eqz v4, :cond_fb

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_f1

    goto :goto_109

    :cond_f1
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v11

    aput-object v12, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_109

    :cond_fb
    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_100

    goto :goto_109

    :cond_100
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v12, v5, v11

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :goto_109
    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_10e

    goto :goto_116

    :cond_10e
    new-instance v5, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;

    invoke-direct {v5, v3, p0, v7}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnStart$1;-><init>(ZLcom/android/launcher/togglebar/ToggleToolbarAnimManager;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_116
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_11b

    goto :goto_123

    :cond_11b
    new-instance v4, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager$toolbarAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;FF)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_123
    iget-object v0, v0, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->mAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method
