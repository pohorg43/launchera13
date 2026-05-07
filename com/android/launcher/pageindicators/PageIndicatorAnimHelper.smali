.class public Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_DURATION_450:I = 0x1c2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "PageIndicatorAnimHelper"


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBgAlpha:I

.field private mBgAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mBgPadding:I

.field private final mDotFadingAlpha:Landroid/util/SparseIntArray;

.field private final mDotFadingAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingNumPages:I

.field private mFinalState:Lcom/android/launcher3/LauncherState;

.field private mInAlphaAnim:Z

.field private mInStateTransition:Z

.field private final mIndicatorAnimLeft:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicatorLeft:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mNeedExitToggleBarAnim:Z

.field private mNewDotAlpha:I

.field private mPageChangeAnimating:Z

.field private mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mPressDragging:Z

.field private mToState:Lcom/android/launcher3/LauncherState;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAlpha:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAnimators:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNewDotAlpha:I

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDrawingNumPages:I

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInStateTransition:Z

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInAlphaAnim:Z

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->lambda$startIndicatorDotAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;)Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInAlphaAnim:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->updateFadingDotAlpha(II)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZILandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->lambda$startIndicatorDotAnim$3(ZILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->lambda$startIndicatorDotAnim$2(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ILandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->lambda$startIndicatorBgAnim$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$startIndicatorBgAnim$0(ILandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    mul-int/2addr p2, p1

    div-int/lit16 p2, p2, 0xff

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic lambda$startIndicatorDotAnim$1(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_32
    return-void
.end method

.method private synthetic lambda$startIndicatorDotAnim$2(ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    rsub-int p2, p2, 0xff

    :goto_f
    iput p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    return-void
.end method

.method private synthetic lambda$startIndicatorDotAnim$3(ZILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p1, :cond_f

    sub-int v0, p2, p3

    goto :goto_10

    :cond_f
    move v0, p3

    :goto_10
    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    sub-int p3, p2, p3

    :goto_17
    mul-int/lit16 p3, p3, 0xff

    div-int/2addr p3, p2

    iput p3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNewDotAlpha:I

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private reverseIndicatorBgAnim()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_18
    return-void
.end method

.method private startIndicatorBgAnim()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_38

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/pageindicators/b;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/pageindicators/b;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_32
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private updateFadingDotAlpha(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAlpha:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public cancelPressDragging()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPressDragging:Z

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZ)V

    goto :goto_41

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_2c
    iget v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3c
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_41
    :goto_41
    return-void
.end method

.method public getAnimAlpha(Z)I
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNewDotAlpha:I

    goto :goto_a

    :cond_8
    const/16 p0, 0xff

    :goto_a
    return p0
.end method

.method public getBackgroundAlpha()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0xff

    return p0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->supportQuickDrag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPressDragging:Z

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInStateTransition:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mFinalState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_45

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_66

    :cond_45
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_66

    :cond_50
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    return p0

    :cond_65
    return v1

    :cond_66
    :goto_66
    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    return p0
.end method

.method public getBackgroundPadding()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    return p0
.end method

.method public getDrawPageNum()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->supportQuickDrag()Z

    move-result v0

    if-eqz v0, :cond_f

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDrawingNumPages:I

    goto :goto_13

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    :goto_13
    return p0
.end method

.method public getIndicatorAlphaAnim()Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public getLeft(I)F
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1f

    :cond_19
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result p0

    :goto_1f
    return p0

    :cond_20
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result p0

    return p0
.end method

.method public getLeft(IF)F
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_14
    return p2
.end method

.method public getPageSwitchAlpha(I)I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPressDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAlpha:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    :cond_b
    return v1
.end method

.method public isPageChangeAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    return p0
.end method

.method public isPressDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPressDragging:Z

    return p0
.end method

.method public onPageNumChanged(II)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string v5, "PageIndicatorAnimHelper"

    const/4 v6, 0x1

    if-eqz v4, :cond_43

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object v3, v4, v6

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const-string/jumbo v2, "onPageNumChanged mBackgroundAlpha = %d ; state = %s, lastState = %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    iget-object v2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->supportQuickDrag()Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInAlphaAnim:Z

    if-nez v2, :cond_9d

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v3, v2, :cond_79

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v4, :cond_5f

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v4, :cond_79

    iget v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    if-nez v4, :cond_79

    :cond_5f
    if-le p2, p1, :cond_67

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorDotAnim(II)V

    iput-boolean v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    return v6

    :cond_67
    if-ne p2, p1, :cond_a8

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p1, :cond_a8

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorBgAnim()V

    iput-boolean v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    return v6

    :cond_79
    iget-boolean v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    if-eqz v4, :cond_a8

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v3, v4, :cond_a8

    if-ne v0, v2, :cond_a8

    if-ge p2, p1, :cond_8b

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorDotAnim(II)V

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    return v6

    :cond_8b
    if-ne p2, p1, :cond_a8

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p1, :cond_a8

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->reverseIndicatorBgAnim()V

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    return v6

    :cond_9d
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    if-eqz p1, :cond_a8

    const-string p1, "exit supportQuickDrag"

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNeedExitToggleBarAnim:Z

    :cond_a8
    return v1
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mFinalState:Lcom/android/launcher3/LauncherState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInStateTransition:Z

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetSearchEntryState()V

    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mToState:Lcom/android/launcher3/LauncherState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mInStateTransition:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_15
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public putPageLeft(IF)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimating:Z

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public registerStateChangeListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public resetBgPadding()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    return-void
.end method

.method public startDragSwitchPageAnim(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAlpha:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAnimators:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$DotFadeAnimator;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;I)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDotFadingAnimators:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startIndicatorAlphaAnim(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x14a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$2;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startIndicatorDotAnim(II)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mDrawingNumPages:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_1b

    move v2, v0

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidth(I)I

    move-result p1

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidth(I)I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Landroid/view/View;->isLayoutRtl()Z

    move-result p2

    const/high16 v3, 0x40000000  # 2.0f

    int-to-float p1, p1

    if-eqz p2, :cond_3e

    goto :goto_3f

    :cond_3e
    div-float/2addr p1, v3

    :goto_3f
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    if-eqz p2, :cond_4e

    if-eqz v2, :cond_52

    div-float v5, p1, v3

    goto :goto_53

    :cond_4e
    if-eqz v2, :cond_52

    move v5, p1

    goto :goto_53

    :cond_52
    move v5, v4

    :goto_53
    if-eqz p2, :cond_5b

    if-eqz v2, :cond_58

    goto :goto_5e

    :cond_58
    neg-float p1, p1

    div-float/2addr p1, v3

    goto :goto_5e

    :cond_5b
    if-eqz v2, :cond_5e

    move p1, v4

    :cond_5e
    :goto_5e
    move v3, v1

    :goto_5f
    iget-object v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_86

    iget-object v4, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorAnimLeft:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mIndicatorLeft:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_86
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v6, 0x2

    if-eqz v3, :cond_b5

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v3, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v3, v4

    const-string/jumbo p2, "startIndicatorDotAnim pageIncreased = %s ; isRtl = %s ; start = %s ; end = %s "

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "PageIndicatorAnimHelper"

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    new-array p2, v6, [F

    aput v5, p2, v1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/launcher/batchdrag/a;

    invoke-direct {p2, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v7, 0x1c2

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgAlpha:I

    new-array p2, v6, [I

    fill-array-data p2, :array_130

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v3, Lcom/android/launcher/pageindicators/c;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher/pageindicators/c;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mNewDotAlpha:I

    iput v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mBgPadding:I

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    div-int/2addr v3, v6

    new-array v5, v6, [I

    aput v1, v5, v1

    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v9, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v9, p0, v2, v3}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZI)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_11:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;

    invoke-direct {p2, p0, v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_130
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public startPressDragging()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorBgAnim()V

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mPressDragging:Z

    return-void
.end method

.method public unregisterStateChangeListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method
