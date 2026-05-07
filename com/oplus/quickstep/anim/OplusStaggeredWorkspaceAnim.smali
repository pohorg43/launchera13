.class public Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA_STARTED:F = 0.0f

.field public static final ANIMATION_DURATION_MS:[I

.field public static final ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

.field public static final ANIM_TYPE_DOCK_SEARCH:I = 0x2

.field public static final ANIM_TYPE_NORMAL:I = 0x0

.field public static final ANIM_TYPE_TO_ASSISTANT:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION_MS:I = 0x140

.field public static final SCALE_STARTED:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "OplusStaggeredWorkspaceAnim"


# instance fields
.field private mAnimType:I

.field public final mAnimators:Landroid/animation/AnimatorSet;

.field private mIsNeedScaleView:Z

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field private mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

.field private mSpeed:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    sput-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd  # 0.1f

    const v3, 0x3e4ccccd  # 0.2f

    const v4, 0x3db851ec  # 0.09f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v6, 0x0

    aput-object v1, v0, v6

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v6, 0x1

    aput-object v1, v0, v6

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    return-void

    :array_30
    .array-data 4
        0x168
        0x1f4
        0x258
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;FZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsNeedScaleView:Z

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    iput-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    iput p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimType:I

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_24

    return-void

    :cond_24
    const-string p3, "Anim type = "

    const-string v0, "OplusStaggeredWorkspaceAnim"

    invoke-static {p3, p4, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-array p2, p2, [Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->addStaggeredAnimationForView([Landroid/view/View;)V

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    sget-object p3, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    iget p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget p3, p3, p4

    int-to-long p3, p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;J)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result p2

    if-eqz p2, :cond_66

    iget p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_66

    new-instance p2, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;-><init>(Lcom/android/launcher3/search/SearchEntryView;)V

    iput-object p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    :cond_66
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->lambda$addStaggeredAnimationForView$0([Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsNeedScaleView:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewScale(F[Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method private addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;J)V
    .registers 8

    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4b

    :cond_f
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance p3, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {p3}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    const/16 p4, 0xd

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v2, v1, v2

    invoke-virtual {p3, p4, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iget-object p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-nez p4, :cond_3c

    if-ne p2, v2, :cond_37

    goto :goto_3c

    :cond_37
    iget p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object p4, v1, p4

    goto :goto_3e

    :cond_3c
    :goto_3c
    sget-object p4, Lcom/android/launcher3/states/OplusSpringLoadedState;->LOAD_TRANSLATE_PATH:Landroid/view/animation/Interpolator;

    :goto_3e
    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :cond_4b
    :goto_4b
    const-string p0, "Ignore depth animation, overlayShown = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OplusStaggeredWorkspaceAnim"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p0

    if-eqz p0, :cond_80

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/high16 p2, 0x3f000000  # 0.5f

    invoke-virtual {p0, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_80
    return-void
.end method

.method private synthetic lambda$addStaggeredAnimationForView$0([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v0, 0x3f666666  # 0.9f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isNotHighOSAnimation()Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_24
    iget-boolean v1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsNeedScaleView:Z

    if-eqz v1, :cond_2b

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewScale(F[Landroid/view/View;)V

    :cond_2b
    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method private prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method private varargs setViewAlpha(F[Landroid/view/View;)V
    .registers 5

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_c

    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method private varargs setViewScale(F[Landroid/view/View;)V
    .registers 6

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    :cond_d
    array-length p0, p2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p0, :cond_1b

    aget-object v1, p2, v0

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v2, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method


# virtual methods
.method public addStaggeredAnimationForView(Landroid/view/View;Lcom/oplus/painteranimation/OplusAnimatorSet;)V
    .registers 9

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_54

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    iget v4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget v4, v3, v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$1;

    invoke-direct {v4, p0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$1;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->play(Landroid/animation/Animator;)Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget v1, v3, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$2;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->play(Landroid/animation/Animator;)Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;

    return-void

    :array_54
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public varargs addStaggeredAnimationForView([Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewAlpha(F[Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    iget v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/w0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/w0;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public end()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->end()V

    :cond_c
    return-void
.end method

.method public getAnimators()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->start()V

    :cond_c
    return-void
.end method
