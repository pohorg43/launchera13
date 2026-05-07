.class public Lcom/oplus/quickstep/dock/DockView;
.super Lcom/android/launcher/OplusPagedViewImpl;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dock/DockContract$Dock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dock/DockView$LinkScrollState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Lcom/android/launcher/OplusPagedViewImpl;",
        "Lcom/oplus/quickstep/dock/DockContract$Dock;"
    }
.end annotation


# static fields
.field public static final ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final ALPHA_CHANGE_FACTOR:I = 0xa

.field private static final ALPHA_OFFSET_FACTOR:F = 3.0f

.field private static final CALLER_DEPTH:I = 0x3

.field public static final DISMISS_DOCK_ICON_TRANSLATION_DURATION:I = 0xc8

.field public static final DOCK_ICON_TRANSLATION_X:F = -100.0f

.field public static final DOCK_ICON_VIEW_TRANSLATION_Z:F = 0.1f

.field public static final ENTER_ANIMATION_DURATION:J = 0x190L

.field public static final ENTER_ANIMATION_START_DELAY:J = 0x32L

.field public static final FLAG_EXIT_ANOMATOR_CANCEL:I = 0x8

.field public static final FLAG_EXIT_ANOMATOR_END:I = 0x4

.field public static final FLAG_EXIT_ANOMATOR_START:I = 0x2

.field public static final FOLD_MIN_ANIMATE_COUNT:I = 0x8

.field public static final ICON_DISMISS_SCALE:F = 0.8f

.field public static final ICON_VIEW_POOL_INITIALSIZE:I = 0xa

.field public static final ICON_VIEW_POOL_MAXSIZE:I = 0x14

.field public static final MAXIMUM_VELOCITY_SCALE:F = 0.4f

.field public static final MINIMUM_PRECISION:F = 1.0f

.field public static final MIN_ANIMATE_COUNT:I = 0x5

.field public static final PAGE_SPACE_RATIO:F = 0.25f

.field public static final PATH_15_0_45_1:Landroid/view/animation/Interpolator;

.field public static final SCALE_SCROLL_OFFSET:F = 0.5f

.field public static final TABLE_HORIZONTAL_MIN_ANIMATE_COUNT:I = 0xa

.field public static final TABLE_VERTICAL_MIN_ANIMATE_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DockView"

.field public static final TRANSLATION_X_FACTOR_1:F = 1.0f

.field public static final TRANSLATION_X_FACTOR_2:F = 2.0f

.field public static final TRANSLATION_X_FACTOR_3:F = 3.0f

.field public static final VISIBILITY_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final mActivity:Lcom/android/launcher3/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjacentPageOffset:F

.field private mDockIconDisplacementFactor:F

.field private mDownX:I

.field private mDownY:I

.field private mEnterAnim:Landroid/animation/AnimatorSet;

.field private mFlagExitAnimator:I

.field private final mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

.field private final mIconViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/oplus/quickstep/dock/DockIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPortrait:Z

.field private mIsInMultiWindowMode:Z

.field private mIsRecentsViewPortrait:Z

.field private mIsScaleMaxinumVelocity:Z

.field private mIsScrolling:Z

.field private mLastState:Lcom/android/launcher3/LauncherState;

.field private final mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

.field private mLocationY:I

.field private mNeedfixDistance:F

.field private mOffsetLabel:Z

.field private mRecentsScrollx:I

.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mScrollRemainder:F

.field private mScrollScale:F

.field private final mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

.field private mScrollx:I

.field private final mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

.field public final mTempRect:Landroid/graphics/Rect;

.field private mTouchDownToStartHome:Z

.field private mUpdatePageOnRotationChanged:Z

.field private mVisibilityAlpha:F

.field private mWaitForAnimationCall:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a  # 0.15f

    const/4 v2, 0x0

    const v3, 0x3ee66666  # 0.45f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockView;->PATH_15_0_45_1:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$1;

    const-string v1, "visibilityAlpha"

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dock/DockView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$2;

    const-string v1, "adjacentDockViewOffset"

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dock/DockView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/dock/DockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/quickstep/dock/DockView;->mNeedfixDistance:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-direct {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    new-instance v0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-direct {v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mVisibilityAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    iput p2, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollRemainder:F

    new-instance p2, Lcom/android/launcher3/util/ViewPool;

    const v4, 0x7f0d01f3

    const/16 v5, 0x14

    const/16 v6, 0xa

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mIconViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScaleMaxinumVelocity:Z

    instance-of v1, p2, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_7c

    check-cast p2, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_7c

    move p1, v0

    :cond_7c
    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverScroller;->useFrictionCoefficient(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/dock/DockView;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mVisibilityAlpha:F

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/dock/DockView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->setVisibilityAlpha(F)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/dock/DockView;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    return p0
.end method

.method public static synthetic access$202(Lcom/oplus/quickstep/dock/DockView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    return p1
.end method

.method public static synthetic access$300(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->updatePageOffsets()V

    return-void
.end method

.method public static synthetic access$400(Lcom/oplus/quickstep/dock/DockView;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->toggleVisibility()V

    return-void
.end method

.method public static addAnim(Landroid/animation/Animator;Landroid/animation/AnimatorSet;)V
    .registers 4

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/dock/DockView;->PATH_15_0_45_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private computScaleMaxinumVelocity()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScaleMaxinumVelocity:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScaleMaxinumVelocity:Z

    :cond_11
    return-void
.end method

.method private computeScrollScale(I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    const-string v0, "computeScrollScale: mScrollScale = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " taskWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " taskPageSpacing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " iconWidth = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pageSpacing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    const-string p1, "QuickStep"

    const-string v1, "DockView"

    invoke-static {v0, p0, p1, v1}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 15

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/high16 v3, -0x3d380000  # -100.0f

    if-eqz v2, :cond_14

    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    goto :goto_17

    :cond_14
    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    mul-float/2addr v2, v3

    :goto_17
    sget-object v3, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x0

    const/4 v7, 0x1

    aput v2, v5, v7

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_60

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    sub-int/2addr v3, v7

    int-to-long v8, v3

    const-wide/16 v10, 0x32

    mul-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v8, 0x190

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array p2, v4, [Landroid/animation/Animator;

    aput-object v2, p2, v6

    aput-object p1, p2, v7

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/oplus/quickstep/dock/DockView$5;

    invoke-direct {p1, p0, v0}, Lcom/oplus/quickstep/dock/DockView$5;-><init>(Lcom/oplus/quickstep/dock/DockView;Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :array_60
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getIconSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getDockIconSize(Landroid/content/res/Resources;)I

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070a9e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x2

    invoke-static {p1, v1, v2, v0}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v1

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIconSize: visibleWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " outWidth = "

    const-string v3, " outRect = "

    invoke-static {v0, p1, v2, v1, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mPageSpacing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    const-string p1, "DockView"

    invoke-static {v0, p0, p1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private getScaleScrollxF(F)F
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mNeedfixDistance:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/quickstep/dock/DockView;->mNeedfixDistance:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_16

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/quickstep/dock/DockView;->mNeedfixDistance:F

    goto :goto_20

    :cond_16
    const/high16 v2, -0x40800000  # -1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_20

    add-float/2addr p1, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/quickstep/dock/DockView;->mNeedfixDistance:F

    :cond_20
    :goto_20
    return p1
.end method

.method public static synthetic h(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->lambda$createIconDismissAnimation$1(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/oplus/quickstep/dock/DockView;IILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dock/DockView;->lambda$createIconDismissAnimation$2(IILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic j(Lcom/oplus/quickstep/dock/DockView;Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockView;->lambda$createIconDismissAnimation$0(Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k(Lcom/oplus/quickstep/dock/DockView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->lambda$playDockIconEnterAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$createIconDismissAnimation$0(Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$createIconDismissAnimation$1(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    if-eq p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$createIconDismissAnimation$2(IILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 11

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_59

    if-gt p2, p1, :cond_b

    add-int/lit8 p4, p1, -0x1

    goto :goto_c

    :cond_b
    move p4, p1

    :goto_c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "createIconDismissAnimation --> onAnimationEnd: draggedIndex= "

    const-string v1, ", currentPage= "

    const-string v2, ", mCurrentPage= "

    invoke-static {v0, p2, v1, p1, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pageToSnapTo= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string v0, "DockView"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_44

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p4, p1, :cond_44

    invoke-virtual {p0, p4}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_44
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/dock/DockView;->onLayout(ZIIII)V

    :cond_59
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    return-void
.end method

.method private synthetic lambda$playDockIconEnterAnimation$3(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    return-void
.end method

.method private loadVisibleIconData()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v0, -0xa

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0xa

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_1c
    if-ltz v1, :cond_6c

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v5, :cond_27

    goto :goto_69

    :cond_27
    invoke-virtual {v5}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-gt v2, v7, :cond_35

    if-gt v7, v0, :cond_35

    move v7, v4

    goto :goto_36

    :cond_35
    move v7, v3

    :goto_36
    if-eqz v7, :cond_51

    iget-object v7, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v8, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_47

    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    :cond_47
    iget-object v5, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_69

    :cond_51
    iget-object v7, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v8, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {v5, v3}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    :cond_60
    iget-object v5, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_69
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_6c
    return-void
.end method

.method private needRefresh()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_22

    :cond_14
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p0, :cond_24

    instance-of v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private refreshIfNeeded()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->needRefresh()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded()V

    goto :goto_1a

    :cond_11
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->toggleVisibility()V

    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method private setLocation(Landroid/graphics/Rect;ILcom/android/launcher3/DeviceProfile;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_13

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    const-string v0, "setInsets: position = "

    const-string v1, " dp.heightPx = "

    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " insets.top = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " getY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , ((OplusDeviceProfile)dp).mNavBarHeight: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/OplusDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {p2, v0, v1, v2}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    iget p1, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2, p1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private setVisibilityAlpha(F)V
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mVisibilityAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1a

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mVisibilityAlpha:F

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onDockViewAlphaChanged(F)V

    :cond_1a
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    const/4 v0, 0x4

    :goto_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4c

    const-string v1, "setVisibilityAlpha(): mVisibilityAlpha = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mVisibilityAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4c
    return-void
.end method

.method private toggleVisibility()V
    .registers 8

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v1, Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleVisibility(): curState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", targetState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsVertical = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsRecentsViewPortrait = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsInMultiWindowMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVisibilityAlpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/quickstep/dock/DockView;->mVisibilityAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", alpha = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", visible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "DockView"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v0, :cond_90

    invoke-direct {p0, v3}, Lcom/oplus/quickstep/dock/DockView;->setVisibilityAlpha(F)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    if-nez v0, :cond_8f

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v0, :cond_86

    sget-object v3, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne v1, v3, :cond_8f

    :cond_86
    if-eq v2, v0, :cond_8f

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-eq v2, v0, :cond_8f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    :cond_8f
    return-void

    :cond_90
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eq v2, v0, :cond_9d

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne v2, v0, :cond_9b

    goto :goto_9d

    :cond_9b
    move v0, v1

    goto :goto_9e

    :cond_9d
    :goto_9d
    move v0, v6

    :goto_9e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a5

    move v1, v6

    :cond_a5
    if-ne v1, v0, :cond_ad

    const-string p0, "toggleVisibility() return, targetDisplayState is same with curDisplayState."

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ad
    if-nez v0, :cond_b5

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    :cond_b5
    if-eqz v0, :cond_b9

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_b9
    invoke-direct {p0, v3}, Lcom/oplus/quickstep/dock/DockView;->setVisibilityAlpha(F)V

    return-void
.end method

.method private unloadVisibleTaskData()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method private updateCurrentPage(IZZ)Z
    .registers 11

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_f

    return v1

    :cond_f
    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1b
    if-ltz v0, :cond_ae

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_aa

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentPage(), snap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentPage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const-string v5, ", i="

    const-string v6, ", mUpdatePageOnRotationChanged="

    invoke-static {v3, v4, v5, v0, v6}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLinkScrollState = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " set = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickStep"

    const-string v4, "DockView"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    if-nez p2, :cond_9c

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {p2}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isUnlinkScroll()Z

    move-result p2

    if-eqz p2, :cond_83

    goto :goto_9c

    :cond_83
    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p2, p1, :cond_9f

    iget-boolean p2, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    if-eqz p2, :cond_9f

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {p2}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result p2

    if-eqz p2, :cond_9f

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    goto :goto_9f

    :cond_9c
    :goto_9c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_9f
    :goto_9f
    if-eqz p3, :cond_a4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_a4
    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return v2

    :cond_aa
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1b

    :cond_ae
    return v1
.end method

.method private updateDeadZoneRects()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_37

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->union(IIII)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    const/16 v0, -0x28

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    :cond_37
    return-void
.end method

.method private updatePageOffsets()V
    .registers 11

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/high16 v1, 0x40a00000  # 5.0f

    goto :goto_1c

    :cond_1a
    const/high16 v1, 0x40400000  # 3.0f

    :goto_1c
    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v1, 0x41200000  # 10.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v3, v3, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_40

    neg-float v0, v0

    neg-float v3, v3

    :cond_40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v5

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v6, v7, :cond_7a

    iget-object v6, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    instance-of v8, v6, Lcom/android/launcher3/Launcher;

    if-eqz v8, :cond_7a

    check-cast v6, Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v6

    if-ne v6, v7, :cond_7a

    const/4 v6, 0x0

    :goto_63
    if-ge v6, v4, :cond_7a

    if-ne v6, v5, :cond_69

    move v7, v1

    goto :goto_6e

    :cond_69
    if-ge v6, v5, :cond_6d

    move v7, v3

    goto :goto_6e

    :cond_6d
    neg-float v7, v3

    :goto_6e
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    neg-float v9, v0

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_7a
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    return-void
.end method


# virtual methods
.method public applyLoadPlan(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->unloadVisibleTaskData()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLoadPlan: task icon size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "DockView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_4f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2e
    if-ge v1, v0, :cond_3c

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mIconViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {v3}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_4f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3c

    :cond_4f
    const/4 v1, 0x0

    move v3, v1

    :goto_51
    if-ge v3, v0, :cond_90

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v4}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v5

    if-eqz v5, :cond_84

    iget-object v5, v4, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz v5, :cond_6f

    iget v6, v5, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    iget-object v7, v4, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v6, v7, :cond_6f

    move v6, v2

    goto :goto_70

    :cond_6f
    move v6, v1

    :goto_70
    if-eqz v6, :cond_75

    iget-object v7, v4, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_77

    :cond_75
    iget-object v7, v4, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    :goto_77
    if-eqz v6, :cond_7c

    iget-object v4, v4, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_7e

    :cond_7c
    iget-object v4, v4, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    :goto_7e
    new-instance v6, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v6, v7, v4, v5}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    move-object v4, v6

    :cond_84
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/dock/DockIconView;->bind(Lcom/android/quickstep/util/GroupTask;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_90
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded()V

    return-void
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public calculateLocation(Landroid/graphics/Rect;II)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/dock/DockView;->getIconSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/dock/DockView;->setLocation(Landroid/graphics/Rect;ILcom/android/launcher3/DeviceProfile;)V

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/dock/DockView;->computeScrollScale(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->computScaleMaxinumVelocity()V

    return-void
.end method

.method public clearEnterAnim()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    return-void
.end method

.method public clearEnterAnim(Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    if-nez v1, :cond_a

    if-eqz v0, :cond_30

    :cond_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "clearEnterAnim(), mWait="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    const-string v3, ", enterRunning="

    const-string v4, ", caller="

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mEnterAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_37
    if-eqz p1, :cond_3c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    :cond_3c
    return-void
.end method

.method public computeScrollHelper()Z
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onDockViewScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;)V

    :cond_1e
    invoke-super {p0}, Lcom/android/launcher/OplusPagedViewImpl;->computeScrollHelper()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_2a
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isDockScroll()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/dock/DockView;->onScrollingChange(Z)V

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_50
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->loadVisibleIconData()V

    :cond_53
    return v0
.end method

.method public createIconDismissAnimation(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;Ljava/lang/Long;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_e7

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v2, :cond_13

    goto/16 :goto_e7

    :cond_13
    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v2

    if-nez v2, :cond_1c

    return-void

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v3

    if-nez v3, :cond_2b

    new-instance v3, Lcom/android/launcher3/t1;

    invoke-direct {v3, v0, v2}, Lcom/android/launcher3/t1;-><init>(Lcom/oplus/quickstep/dock/DockView;Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_32

    return-void

    :cond_32
    new-array v4, v3, [I

    sget-object v5, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    new-array v5, v3, [I

    new-instance v7, Landroidx/core/view/a;

    invoke-direct {v7, v2}, Landroidx/core/view/a;-><init>(Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    const/4 v7, 0x1

    if-le v3, v7, :cond_51

    aget v7, v4, v7

    aget v8, v4, v6

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    goto :goto_52

    :cond_51
    move v7, v6

    :goto_52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v9

    move v10, v6

    move v11, v10

    :goto_5c
    if-ge v6, v3, :cond_c7

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_c0

    iget-boolean v13, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v13, :cond_69

    goto :goto_6a

    :cond_69
    move v11, v7

    :goto_6a
    if-ne v9, v8, :cond_71

    if-nez v9, :cond_7b

    if-eqz v13, :cond_79

    goto :goto_77

    :cond_71
    add-int/lit8 v14, v9, 0x1

    if-ne v8, v14, :cond_7b

    if-eqz v13, :cond_79

    :goto_77
    move v13, v7

    goto :goto_7a

    :cond_79
    neg-int v13, v7

    :goto_7a
    add-int/2addr v11, v13

    :cond_7b
    aget v13, v5, v6

    aget v14, v4, v6

    sub-int/2addr v13, v14

    add-int/2addr v13, v11

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_9b

    const-string v14, "createIconDismissAnimation: , scrollDiffPerPage = "

    const-string v15, " offset = "

    move/from16 p1, v3

    const-string v3, " scrollDiff = "

    invoke-static {v14, v7, v15, v11, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "QuickStep"

    const-string v14, "DockView"

    invoke-static {v3, v13, v11, v14}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    :cond_9b
    move/from16 p1, v3

    :goto_9d
    if-eqz v13, :cond_bd

    sget-object v3, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v11, v10, [F

    int-to-float v13, v13

    const/4 v14, 0x0

    aput v13, v11, v14

    invoke-static {v12, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sget-object v12, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v1, v3, v11, v12}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    move v11, v14

    goto :goto_c2

    :cond_bd
    const/4 v3, 0x0

    move v11, v3

    goto :goto_c2

    :cond_c0
    move/from16 p1, v3

    :goto_c2
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p1

    goto :goto_5c

    :cond_c7
    if-eqz v10, :cond_d1

    new-instance v3, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v3, v0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_d1
    const v3, -0x42333333  # -0.1f

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    new-instance v3, Lcom/android/launcher3/w1;

    invoke-direct {v3, v0, v9, v8, v2}, Lcom/android/launcher3/w1;-><init>(Lcom/oplus/quickstep/dock/DockView;IILcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/oplus/quickstep/dock/DockView$3;

    invoke-direct {v2, v0}, Lcom/oplus/quickstep/dock/DockView$3;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_e7
    :goto_e7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getDockIconSize()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v2, :cond_10

    goto :goto_2b

    :cond_10
    check-cast v1, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p1, :cond_2b

    return-object v1

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDockIconView(Lcom/android/systemui/shared/recents/model/Task;)Lcom/oplus/quickstep/dock/DockIconView;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method public getRecentView()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public getScaleVelocity()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v0

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getScroller()Lcom/android/launcher3/util/OverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    return-object p0
.end method

.method public getmLastState()Lcom/android/launcher3/LauncherState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public isCurrentSupported()Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    if-eqz v0, :cond_1e

    :cond_e
    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public isEnterAnimatorRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mEnterAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScrolling:Z

    return p0
.end method

.method public notifyPageSwitchListener(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->loadVisibleIconData()V

    return-void
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v0

    const-string v1, "DockView"

    const-string v2, "QuickStep"

    if-gtz v0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySfAnimatingIfNeed: duration is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", so we are not notify sf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySfAnimatingIfNeed: notify sf animating, duration is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    move p1, v0

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    if-ne v1, p1, :cond_16

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "onConfigurationChanged(), old="

    const-string v2, ", new="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    const-string v3, "DockView"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2b
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v1

    if-eqz v1, :cond_35

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    :cond_35
    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->refreshIfNeeded()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    iget p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setY(F)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->toggleVisibility()V

    :cond_9
    return-void
.end method

.method public onPageEndTransition()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher/OplusPagedViewImpl;->onPageEndTransition()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateRecentsCurrentPage()V

    const-string p0, "QuickStep"

    const-string v0, "DockView"

    const-string v1, "onPageEndTransition"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onParentScrollInteractionBegin()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_e
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mNeedfixDistance:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    const-string p0, "QuickStep"

    const-string v0, "DockView"

    const-string v1, "onScrollInteractionBegin"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollingChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScrolling:Z

    if-eq v0, p1, :cond_31

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScrolling:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeAll()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    goto :goto_31

    :cond_21
    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openAll()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onTaskViewRemoved(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 6

    if-eqz p1, :cond_47

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_47

    :cond_f
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskViewRemoved(), task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_53

    if-eq v2, v3, :cond_47

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2d

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2a

    goto :goto_7a

    :cond_2a
    iput-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    goto :goto_7a

    :cond_2d
    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    if-eqz v2, :cond_7a

    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownX:I

    sub-int/2addr v2, v0

    int-to-double v2, v2

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDownY:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7a

    iput-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    goto :goto_7a

    :cond_47
    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    :cond_50
    iput-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    goto :goto_7a

    :cond_53
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v2

    if-nez v2, :cond_76

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->updateDeadZoneRects()V

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v2

    if-eqz v2, :cond_65

    move v4, v3

    :cond_65
    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_76

    if-nez v4, :cond_76

    iput-boolean v3, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    :cond_76
    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDownX:I

    iput v1, p0, Lcom/oplus/quickstep/dock/DockView;->mDownY:I

    :cond_7a
    :goto_7a
    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewRemoved(Landroid/view/View;)V

    check-cast p1, Lcom/oplus/quickstep/dock/DockIconView;

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockIconView;->unbind()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIconViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ViewPool;->recycle(Landroid/view/View;)V

    return-void
.end method

.method public pageBeginTransition()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->onScrollInteractionBegin()V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    return-void
.end method

.method public playDockIconEnterAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 11

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    invoke-static {p3}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_20

    if-eqz p2, :cond_20

    const/high16 p1, 0x3f800000  # 1.0f

    iget-object p3, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    neg-int p3, p3

    invoke-static {p1, v1, p0, p2, p3}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaTransXForDockView(FFLcom/oplus/quickstep/dock/DockView;Lcom/android/launcher3/anim/PropertySetter;I)V

    return-void

    :cond_20
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->toggleVisibility()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const-string p3, "DockView"

    const-string v2, "QuickStep"

    if-eqz p2, :cond_48

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "playDockIconEnterAnimation return,because visiable is not  targetState: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-void

    :cond_48
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    const/4 v3, 0x5

    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v5

    if-eqz v5, :cond_58

    const/16 v3, 0x8

    goto :goto_66

    :cond_58
    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_66

    iget-boolean v3, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    if-eqz v3, :cond_64

    const/4 v3, 0x6

    goto :goto_66

    :cond_64
    const/16 v3, 0xa

    :cond_66
    :goto_66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    if-gt v4, v3, :cond_76

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_78

    :cond_76
    add-int v4, p2, v3

    :goto_78
    if-le p2, v3, :cond_7d

    sub-int v3, p2, v3

    goto :goto_7e

    :cond_7d
    move v3, v0

    :goto_7e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_bc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playDockIconEnterAnimation toState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", child count: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , currentPage = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , start = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , end = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_c1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_e6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz p3, :cond_e3

    if-lt v0, v3, :cond_de

    if-gt v0, v4, :cond_de

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p2, v0}, Lcom/oplus/quickstep/dock/DockView;->createEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    :cond_de
    check-cast p2, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_e3
    :goto_e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    :cond_e6
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_116

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lcom/oplus/quickstep/dock/a;

    invoke-direct {p3, p0}, Lcom/oplus/quickstep/dock/a;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mEnterAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mEnterAnim:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/quickstep/dock/DockView$4;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/DockView$4;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mEnterAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_116
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public playEnterAnimationIfNeeded()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/quickstep/dock/DockView;->playDockIconEnterAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_a
    return-void
.end method

.method public prepareEnterAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 11

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v0

    const-string v1, ", mLastState="

    const-string v2, "DockView"

    const-string v3, "QuickStep"

    if-eqz v0, :cond_73

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_73

    :cond_12
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_17

    goto :goto_73

    :cond_17
    const/4 p2, 0x1

    if-eqz p6, :cond_24

    const/16 v0, 0x40

    invoke-virtual {p6, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, p2

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0, p3}, Lcom/oplus/quickstep/dock/DockView;->setDockIconDisplacementFactor(F)V

    if-eqz p4, :cond_2f

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    iput-boolean p2, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    goto :goto_45

    :cond_2f
    iget-object p3, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->needReloadTask()Z

    move-result p3

    if-eqz p3, :cond_39

    if-eqz v0, :cond_3f

    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_42

    :cond_3f
    iput-boolean p2, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    goto :goto_45

    :cond_42
    invoke-virtual {p0, p1, p5, p6}, Lcom/oplus/quickstep/dock/DockView;->playDockIconEnterAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    :goto_45
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_72

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prepareEnterAnimation toState: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " fromGesture: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mWaitForAnimationCall: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    invoke-static {p2, p0, v3, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_72
    return-void

    :cond_73
    :goto_73
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_9d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "prepareEnterAnimation return toState: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", checkLastState="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method public release()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->unloadVisibleTaskData()V

    return-void
.end method

.method public reset(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->setIsRecentsViewPortrait(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollRemainder:F

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    return-void
.end method

.method public resetTaskIconsVisuals()V
    .registers 6

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mFlagExitAnimator:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_29

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v3, :cond_1b

    goto :goto_26

    :cond_1b
    iget v4, p0, Lcom/oplus/quickstep/dock/DockView;->mFlagExitAnimator:I

    if-ne v4, v1, :cond_23

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/dock/DockIconView;->resetViewStatus(Z)V

    goto :goto_26

    :cond_23
    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockIconView;->resetViewStatus()V

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->loadVisibleIconData()V

    return-void
.end method

.method public resetTaskVisuals(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_34

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v3, :cond_13

    goto :goto_31

    :cond_13
    check-cast v2, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v3, p1, :cond_31

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/dock/DockIconView;->setDimAlpha(F)V

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_34
    return-void
.end method

.method public scrollDock(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p1

    iget p2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsScrollx:I

    sub-int p2, p1, p2

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_36

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    div-float/2addr p2, v0

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollRemainder:F

    add-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_2a

    iput p2, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollRemainder:F

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsScrollx:I

    return-void

    :cond_2a
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr p2, v1

    iput p2, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollRemainder:F

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher/OplusPagedViewImpl;->scrollBy(II)V

    :cond_36
    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsScrollx:I

    return-void
.end method

.method public scrollRecents(I)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_19

    :cond_15
    iget v1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollx:I

    sub-int v1, p1, v1

    :goto_19
    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollx:I

    iget p1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    int-to-float v1, v1

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000  # 1.0f

    rem-float v2, p1, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mOffsetLabel:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mOffsetLabel:Z

    if-eqz v2, :cond_36

    sub-float/2addr p1, v1

    :cond_36
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isDockScroll()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->getScaleScrollxF(F)F

    move-result p1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->scrollBy(II)V

    :cond_4b
    return-void
.end method

.method public scrollTo(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isDockScroll()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->scrollRecents(I)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public setDockIconDisplacementFactor(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    return-void
.end method

.method public setExitAnmatorFlag(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mFlagExitAnimator:I

    return-void
.end method

.method public setIsRecentsViewPortrait(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    return-void
.end method

.method public setRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public updateCurrentPage(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(IZ)Z

    move-result p0

    return p0
.end method

.method public updateCurrentPage(IZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(IZZ)Z

    move-result p0

    return p0
.end method

.method public updateCurveProperties()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_62

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNormalChildWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNormalChildWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    move v5, v0

    :goto_34
    if-ge v5, v4, :cond_62

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    add-float/2addr v8, v7

    int-to-float v7, v1

    add-float/2addr v8, v7

    int-to-float v7, v2

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v3

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->setLinearInterpolation(F)V

    check-cast v6, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;

    iget-object v7, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-interface {v6, v7, v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_62
    :goto_62
    return-void
.end method

.method public updateDockViewVisiblity()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->toggleVisibility()V

    return-void
.end method

.method public updateLastState(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method public updateRecentsCurrentPage()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_5e

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/views/TaskView;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/TaskView;

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-ne v3, v0, :cond_5b

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPage(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRecentsCurrentPage:page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "DockView"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_5e
    return-void
.end method

.method public updateScrollState(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->setState(I)V

    return-void
.end method
