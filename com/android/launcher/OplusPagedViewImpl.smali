.class public abstract Lcom/android/launcher/OplusPagedViewImpl;
.super Lcom/android/launcher3/PagedView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/OplusPagedViewImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/PagedView<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher/OplusPagedViewImpl$Companion;

.field private static final DEFAULT_MODE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FLING_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_OVERSCROLL_VELOCITY:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_SCREEN_WIDTH_FOLDSCREEN:I = 0x780
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MIN_OVERSCROLL_VELOCITY:I = 0xbb8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION:I = 0x10e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCROLL_MODE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCROLL_VELOCITY_FACTER:F = 3.5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusPagedViewImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private allowOplusOverScroll:Z

.field private mBigFolderIntercept:Z

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mIsSpringMaxMinScroll:Z

.field private mLastAmount:I

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mScrollMode:I

.field private final mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

.field private mTempAmount:I

.field private mUnboundedScroll:I

.field private wasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/OplusPagedViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/OplusPagedViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/OplusPagedViewImpl;->Companion:Lcom/android/launcher/OplusPagedViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher/OplusSpringOverScroller;

    invoke-direct {p2, p1}, Lcom/android/launcher/OplusSpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    const-string p2, "SCROLL"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    return-void
.end method

.method private final calcRealOverScrollDist(III)I
    .registers 4

    int-to-float p0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    const/4 p0, 0x3

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method public static synthetic g(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/OplusPagedViewImpl;->setCurrentPage$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method private static final setCurrentPage$lambda-0(Landroid/view/View;)V
    .registers 1

    if-nez p0, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_6
    return-void
.end method

.method private final updateMinAndMaxScrollXForSpring(Z)V
    .registers 11

    const-string v0, ",min:"

    const-string/jumbo v1, "max:"

    const-string v2, " ,mCurrentPage:"

    const-string v3, " ,mNextPage:"

    const-string v4, "OplusPagedViewImpl"

    if-eqz p1, :cond_54

    iget-boolean v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    if-nez v5, :cond_54

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    sget v6, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    div-int/lit8 v7, v6, 0x3

    add-int/2addr v7, v5

    iput v7, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    const-string/jumbo v5, "updateMinAndMaxScrollXForSpring: modifyOrRevert "

    const-string v6, " mIsSpringMaxMinScroll: "

    invoke-static {v5, p1, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-static {p1, p0, v4}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_cf

    :cond_54
    if-nez p1, :cond_cf

    iget-boolean v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    if-eqz v5, :cond_cf

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Lcom/android/quickstep/RecentsActivity;

    const/4 v6, 0x0

    if-nez v5, :cond_87

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Lcom/android/quickstep/RecentsActivity;

    if-eqz v5, :cond_78

    goto :goto_87

    :cond_78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v5

    goto :goto_88

    :cond_87
    :goto_87
    move v5, v6

    :goto_88
    if-eqz v5, :cond_cf

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollX()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateMinAndMaxScrollXForSpring:isDefaultEffect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " modifyOrRevert "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mIsSpringMaxMinScroll:"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-static {v7, p1, v4}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    :cond_cf
    :goto_cf
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public allowFlingWhenFreeScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public allowSnapWhenCancelEvent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public calculateScrollDuration(FI)I
    .registers 3

    const/16 p0, 0x3e8

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x40600000  # 3.5f

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    invoke-static {p1}, Li1/j;->o(F)I

    move-result p0

    return p0
.end method

.method public computeScrollHelper()Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v2

    if-eq v0, v2, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v3

    invoke-interface {v0, p0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v1

    :cond_28
    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->computeScrollOffset()Z

    move-result v0

    const-string v2, "OplusPagedViewImpl"

    const/4 v3, -0x1

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    if-ne v4, v1, :cond_79

    iget-object v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v4}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    if-lez v5, :cond_4a

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    add-int/2addr v4, v5

    :cond_4a
    if-eq v0, v4, :cond_79

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "computeScrollHelper(), spring: curX="

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v0, p0, v2, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-ne v0, v3, :cond_79

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v1

    :cond_7d
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, v3, :cond_e4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->pageUpdate()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeScrollHelper(), scroll End, change mNextPage to INVALID_PAGE, mCurrentPage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scroll="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mScrollX="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prevPage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mNextPage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-static {v1, v4, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_d8

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_d8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canAnnouncePageDescription()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    :cond_e1
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->maybeCurrentScrollWrong()V

    :cond_e4
    const/4 p0, 0x0

    return p0
.end method

.method public final dampedOverScroll(I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->applyOverScroll()Z

    move-result v2

    if-nez v2, :cond_38

    int-to-float p1, p1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount(FI)I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    add-int/2addr v0, p1

    invoke-interface {v1, p0, v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_38
    iget v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    iget-object v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v2}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v2

    if-nez v2, :cond_50

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    add-int/2addr p1, v0

    invoke-interface {v1, p0, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    goto :goto_75

    :cond_50
    instance-of v2, p0, Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_6a

    iget v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    iget v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    sub-int v3, p1, v3

    invoke-direct {p0, v3, v2, v1}, Lcom/android/launcher/OplusPagedViewImpl;->calcRealOverScrollDist(III)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    add-int/2addr v0, v2

    invoke-interface {p1, p0, v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    goto :goto_75

    :cond_6a
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    int-to-float p1, p1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount(FI)I

    move-result p1

    add-int/2addr p1, v0

    invoke-interface {v2, p0, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    :goto_75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;FZ)V
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v2, 0x1

    if-gt v1, p2, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xfe

    if-ne p1, p2, :cond_32

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    move p1, v2

    :goto_35
    if-eqz p1, :cond_55

    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iget p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget p2, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    if-eqz p3, :cond_55

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_55
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iput-boolean v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    if-nez v2, :cond_25

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->determineScrollingStart(Landroid/view/MotionEvent;FZ)V

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_12

    return v1

    :cond_12
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/16 v0, 0x42

    const/16 v2, 0x11

    if-eqz p1, :cond_22

    if-eq p2, v2, :cond_21

    if-eq p2, v0, :cond_1f

    goto :goto_22

    :cond_1f
    move p2, v2

    goto :goto_22

    :cond_21
    move p2, v0

    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_47

    if-eq p2, v0, :cond_2d

    :cond_2b
    move v1, v3

    goto :goto_5c

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result v0

    if-ge p1, v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_5c

    :cond_47
    if-lez p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->requestFocus(I)Z

    :goto_5c
    return v1
.end method

.method public extendDurationWhenUp(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    return-void
.end method

.method public forceReturnToCurrentPage()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getAllowOplusOverScroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    return p0
.end method

.method public getFoldScreenDirection(FF)F
    .registers 10

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v4

    if-gt v1, v4, :cond_38

    :cond_28
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v4

    if-gt v1, v4, :cond_43

    :cond_38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    iget-object v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v4, :cond_49

    goto :goto_56

    :cond_49
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    if-nez v4, :cond_50

    goto :goto_56

    :cond_50
    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-ne v4, v3, :cond_56

    move v4, v3

    goto :goto_57

    :cond_56
    :goto_56
    move v4, v2

    :goto_57
    if-eqz v4, :cond_64

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_6f

    goto :goto_6d

    :cond_64
    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_6f

    :goto_6d
    move v4, v3

    goto :goto_70

    :cond_6f
    move v4, v2

    :goto_70
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v6, 0x0

    sub-float/2addr p2, p1

    if-eqz v5, :cond_7b

    cmpg-float p2, p2, v6

    if-gez p2, :cond_80

    goto :goto_7f

    :cond_7b
    cmpl-float p2, p2, v6

    if-lez p2, :cond_80

    :goto_7f
    move v2, v3

    :cond_80
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object p2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne p0, p2, :cond_ba

    if-eqz v1, :cond_ba

    if-eqz v4, :cond_ba

    if-eqz v2, :cond_ba

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sget p2, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    const/16 v1, 0x780

    if-le p2, v1, :cond_97

    move p2, v1

    :cond_97
    if-le p0, p2, :cond_9a

    move p0, p2

    :cond_9a
    int-to-float p0, p0

    const-string p2, "ACTION_MOVE Touch PortraitPoint X out of range! rect.width:"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " direction:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusPagedViewImpl"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p0

    :cond_ba
    return p1
.end method

.method public final getLastPageIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    rem-int p0, v0, p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getMBigFolderIntercept()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    return p0
.end method

.method public final getMDefaultInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final getMSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    return-object p0
.end method

.method public final getMUnboundedScroll()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    return p0
.end method

.method public final getMaxScroll()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    return p0
.end method

.method public getOverScrollAmount(FI)I
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p0

    return p0
.end method

.method public final getSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    return-object p0
.end method

.method public final getWasInOverscroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    return p0
.end method

.method public interceptUpEventWhenDragged(IFIZZZ)Z
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_1a

    cmpl-float v11, v2, v8

    if-lez v11, :cond_20

    goto :goto_1e

    :cond_1a
    cmpg-float v11, v2, v8

    if-gez v11, :cond_20

    :goto_1e
    move v11, v10

    goto :goto_21

    :cond_20
    move v11, v9

    :goto_21
    if-eqz v7, :cond_26

    if-lez v1, :cond_2a

    goto :goto_28

    :cond_26
    if-gez v1, :cond_2a

    :goto_28
    move v7, v10

    goto :goto_2b

    :cond_2a
    move v7, v9

    :goto_2b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "interceptUpEventWhenDragged(), velocity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", delta="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", pageOrientedSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", isSignificantMove="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isDeltaLeft="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", isVelocityLeft="

    const-string v14, ", passedSlop="

    invoke-static {v12, v11, v13, v7, v14}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v13, ", isFling="

    const-string v15, ", mFreeScroll="

    invoke-static {v12, v5, v13, v6, v15}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v13, v0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", mMaxScroll="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mMinScroll="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mCurrentPage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", childCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "OplusPagedViewImpl"

    invoke-static {v13, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v12, v0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v12, :cond_1f1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    int-to-float v3, v3

    const v15, 0x3ea8f5c3  # 0.33f

    mul-float/2addr v3, v15

    cmpl-float v3, v12, v3

    if-lez v3, :cond_c2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v12

    cmpg-float v3, v3, v12

    if-nez v3, :cond_bb

    move v3, v10

    goto :goto_bc

    :cond_bb
    move v3, v9

    :goto_bc
    if-nez v3, :cond_c2

    if-eqz v6, :cond_c2

    move v3, v10

    goto :goto_c6

    :cond_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->forceReturnToCurrentPage()Z

    move-result v3

    :goto_c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->applyOverScroll()Z

    move-result v12

    if-eqz v12, :cond_16b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->isInOverScroll()Z

    move-result v12

    if-eqz v12, :cond_16b

    iget-boolean v12, v0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    if-nez v12, :cond_16b

    iput v10, v0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    iget-object v2, v0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher/OplusSpringOverScroller;->setRefreshRate(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    iget v3, v0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    if-lez v3, :cond_f0

    iget v3, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    sub-int/2addr v2, v3

    :cond_f0
    if-eqz v5, :cond_134

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xbb8

    if-lt v3, v4, :cond_134

    iget-object v3, v0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    const/16 v4, -0x2710

    neg-int v5, v1

    const/16 v6, 0x2710

    if-le v5, v6, :cond_104

    move v5, v6

    :cond_104
    if-ge v4, v5, :cond_107

    move v4, v5

    :cond_107
    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/launcher/OplusSpringOverScroller;->setCurrVelocityX(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptUpEventWhenDragged(), velocityX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2, v13}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v15, v0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v2

    invoke-virtual/range {v15 .. v21}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    goto :goto_167

    :cond_134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptUpEventWhenDragged(), springBack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", velocity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1, v13}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v1, v8}, Lcom/android/launcher/OplusSpringOverScroller;->setCurrVelocityX(F)V

    iget-object v15, v0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v2

    invoke-virtual/range {v15 .. v21}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    :goto_167
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_1c0

    :cond_16b
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v5

    if-eqz v5, :cond_1bd

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_17e

    if-lez v1, :cond_17e

    cmpg-float v2, v2, v8

    if-gez v2, :cond_17e

    goto :goto_1bd

    :cond_17e
    if-eqz v4, :cond_184

    if-nez v11, :cond_184

    if-eqz v6, :cond_188

    :cond_184
    if-eqz v6, :cond_198

    if-nez v7, :cond_198

    :cond_188
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v2, :cond_198

    if-eqz v3, :cond_18f

    goto :goto_194

    :cond_18f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_194
    invoke-virtual {v0, v2, v1}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    goto :goto_1c0

    :cond_198
    if-eqz v4, :cond_19e

    if-eqz v11, :cond_19e

    if-eqz v6, :cond_1a2

    :cond_19e
    if-eqz v6, :cond_1b9

    if-eqz v7, :cond_1b9

    :cond_1a2
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v10

    if-ge v2, v4, :cond_1b9

    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eqz v3, :cond_1b0

    goto :goto_1b5

    :cond_1b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1b5
    invoke-virtual {v0, v2, v1}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    goto :goto_1c0

    :cond_1b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_1c0

    :cond_1bd
    :goto_1bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    :goto_1c0
    instance-of v1, v0, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_2b2

    iget-object v1, v0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v1, :cond_1d7

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    iput-object v1, v0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    :cond_1d7
    iget-object v1, v0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v1, :cond_1dc

    goto :goto_1ea

    :cond_1dc
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    if-nez v1, :cond_1e3

    goto :goto_1ea

    :cond_1e3
    invoke-virtual {v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isGestureStarted()Z

    move-result v1

    if-ne v1, v10, :cond_1ea

    move v9, v10

    :cond_1ea
    :goto_1ea
    if-eqz v9, :cond_2b2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->notifySfAnimatingIfNeed()V

    goto/16 :goto_2b2

    :cond_1f1
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1fc

    invoke-virtual {v0, v10}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_1fc
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    iget v3, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    iget v4, v0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const-string v5, "interceptUpEventWhenDragged(), initialScrollX="

    const-string v8, ", maxScroll="

    const-string v11, ", minScroll="

    invoke-static {v5, v2, v8, v3, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v6}, Lcom/android/launcher/OplusPagedViewImpl;->needFlingWhenTouchUp(ZZ)Z

    move-result v5

    if-eqz v5, :cond_225

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_2ac

    :cond_225
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->allowFlingWhenFreeScroll()Z

    move-result v5

    if-eqz v5, :cond_2ac

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget-object v6, v0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/OverScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput v10, v0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    neg-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000  # 0.5f

    mul-float/2addr v6, v7

    const v7, 0x3d8f5c29  # 0.07f

    mul-float/2addr v6, v7

    invoke-static {v6}, Li1/j;->o(F)I

    move-result v6

    move-object/from16 p1, v5

    move/from16 p2, v2

    move/from16 p3, v1

    move/from16 p4, v4

    move/from16 p5, v3

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/util/OverScroller;->fling(IIIII)V

    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v2, :cond_268

    move v2, v9

    goto :goto_26c

    :cond_268
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result v2

    :goto_26c
    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v5, :cond_279

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result v5

    goto :goto_27a

    :cond_279
    move v5, v9

    :goto_27a
    invoke-virtual {v0, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-gt v6, v1, :cond_285

    if-ge v1, v3, :cond_285

    move v9, v10

    :cond_285
    if-eqz v9, :cond_2ac

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_290

    move v3, v4

    goto :goto_29c

    :cond_290
    add-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    if-le v1, v5, :cond_296

    goto :goto_29c

    :cond_296
    iget v1, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    :goto_29c
    invoke-virtual {v6, v3}, Lcom/android/launcher3/util/OverScroller;->setFinalX(I)V

    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v1

    rsub-int v1, v1, 0x10e

    if-lez v1, :cond_2ac

    invoke-virtual {v0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->extendDurationWhenUp(I)V

    :cond_2ac
    :goto_2ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->notifySfAnimatingIfNeed()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2b2
    :goto_2b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    return v10
.end method

.method public isAssistScreenOn()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isFolderHandleEvent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    return p0
.end method

.method public final isInOverScroll()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    const-string v1, "isInOverScroll:scroll "

    const-string v2, " mIsRTL: "

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mMaxScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mMinScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mIsSpringMaxMinScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    const-string v3, "OplusPagedViewImpl"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_4b

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_42

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez p0, :cond_61

    goto :goto_62

    :cond_42
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result p0

    if-ne v0, p0, :cond_61

    goto :goto_62

    :cond_4b
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v0, v1, :cond_61

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result p0

    if-ne v0, p0, :cond_61

    goto :goto_62

    :cond_5c
    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez p0, :cond_61

    goto :goto_62

    :cond_61
    move v2, v3

    :goto_62
    return v2
.end method

.method public maybeCurrentScrollWrong()V
    .registers 1

    return-void
.end method

.method public modifyDirection(I)I
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne p0, v1, :cond_33

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-le p1, p0, :cond_33

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sget p1, Lcom/android/common/config/ScreenInfo;->screenWidth:I

    const/16 v0, 0x780

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_33
    return p1
.end method

.method public needFlingWhenTouchUp(ZZ)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-lt v0, v1, :cond_c

    if-nez p1, :cond_14

    if-eqz p2, :cond_14

    :cond_c
    iget p0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-gt v0, p0, :cond_16

    if-eqz p1, :cond_14

    if-nez p2, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 1

    return-void
.end method

.method public onPageEndTransition()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    invoke-direct {p0, v0}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "OplusPagedViewImpl"

    if-eqz v0, :cond_a2

    if-eq v0, v2, :cond_6c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_35

    const/4 v1, 0x6

    if-eq v0, v1, :cond_27

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_cb

    :cond_27
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    const-string/jumbo v1, "onTouchEvent(), APOINTER_UP, mIsBeingDragged="

    invoke-static {v0, v1, v3}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_cb

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->allowSnapWhenCancelEvent()Z

    move-result p1

    const-string/jumbo v0, "onTouchEvent(), CANCEL, mIsBeingDragged="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", allowSnapWhenCancelEvent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_64

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_61

    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :goto_61
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    :cond_64
    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto :goto_cb

    :cond_6c
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_9d

    const-string/jumbo v0, "onTouchEvent(), UP, mIsBeingDragged false, currentPage="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_cb

    :cond_a2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "onTouchEvent(), DOWN, scrollX="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    :cond_c7
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_cb
    return v2
.end method

.method public oplusScrollTo(II)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v1

    iput v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isOverScrolled()Z

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v0, v5, :cond_24

    goto :goto_22

    :cond_1e
    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v0, v5, :cond_24

    :goto_22
    move v5, v3

    goto :goto_25

    :cond_24
    move v5, v4

    :goto_25
    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v0, v2, :cond_32

    goto :goto_30

    :cond_2c
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v0, v2, :cond_32

    :goto_30
    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v4

    :goto_33
    if-eqz v5, :cond_6a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result p1

    if-eqz p1, :cond_47

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_42

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    goto :goto_44

    :cond_42
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    :goto_44
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_47
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_50

    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    goto :goto_52

    :cond_50
    iget p2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    :goto_52
    invoke-interface {p1, p0, v1, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;II)V

    iget-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    if-eqz p1, :cond_104

    iput-boolean v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_62

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    goto :goto_64

    :cond_62
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    :goto_64
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusPagedViewImpl;->overScroll(I)V

    goto/16 :goto_104

    :cond_6a
    if-eqz v2, :cond_e0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_79

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    goto :goto_7b

    :cond_79
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    :goto_7b
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_7e
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_87

    iget p2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    goto :goto_89

    :cond_87
    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    :goto_89
    invoke-interface {p1, p0, v1, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/RecentsActivity;

    if-nez p1, :cond_c9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/RecentsActivity;

    if-eqz p1, :cond_a9

    goto :goto_c9

    :cond_a9
    iget-object p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_af

    :cond_ad
    :goto_ad
    move p1, v4

    goto :goto_bb

    :cond_af
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    if-nez p1, :cond_b6

    goto :goto_ad

    :cond_b6
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-ne p1, v3, :cond_ad

    move p1, v3

    :goto_bb
    if-eqz p1, :cond_c9

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_c9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-eq p1, v3, :cond_ca

    :cond_c9
    :goto_c9
    move v4, v3

    :cond_ca
    iget-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    if-eqz p1, :cond_104

    if-eqz v4, :cond_104

    iput-boolean v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_d9

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    goto :goto_db

    :cond_d9
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    :goto_db
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusPagedViewImpl;->overScroll(I)V

    goto :goto_104

    :cond_e0
    iget-boolean v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    if-eqz v0, :cond_e9

    invoke-virtual {p0, v4}, Lcom/android/launcher/OplusPagedViewImpl;->overScroll(I)V

    iput-boolean v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    :cond_e9
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_f4

    iget v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_f4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canScrollByTouch()Z

    move-result v0

    if-nez v0, :cond_101

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_101

    return-void

    :cond_101
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    :cond_104
    :goto_104
    return-void
.end method

.method public oplusSnapToPage(IIIZ)Z
    .registers 13

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return v1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    if-eqz p4, :cond_16

    move v7, v1

    goto :goto_1d

    :cond_16
    if-nez p3, :cond_1c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_1c
    move v7, p3

    :goto_1d
    if-eqz v7, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    :cond_22
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_2d
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_42

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    return v1
.end method

.method public oplusSnapToPageSpring(IIIZ)Z
    .registers 11

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    :cond_7
    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    if-eqz p4, :cond_1a

    move p3, v1

    goto :goto_20

    :cond_1a
    if-nez p3, :cond_20

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_20
    :goto_20
    if-eqz p3, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    const-string v2, "OplusPagedViewImpl"

    if-nez v0, :cond_38

    const-string/jumbo v0, "oplusSnapToPageSpring:!mScroller.isFinished"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_38
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v4, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v3, v0, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v3, v4, :cond_51

    invoke-direct {p0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    goto :goto_64

    :cond_51
    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eqz v3, :cond_61

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-direct {p0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    goto :goto_64

    :cond_61
    :goto_61
    invoke-direct {p0, v5}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    :goto_64
    const-string/jumbo v3, "oplusSnapToPageSpring:whichPage:"

    const-string v4, " mNextPage:"

    invoke-static {v3, p1, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " childCount:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " velocity:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " delta:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getPrimaryScroll:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMaxScroll:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMinScroll:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    neg-float v0, v0

    invoke-virtual {p1, v2, p2, p3, v0}, Lcom/android/launcher3/util/OverScroller;->startScrollSpring(IIIF)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_db

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_db
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_e5

    move v1, v5

    :cond_e5
    return v1
.end method

.method public overScroll(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dampedOverScroll(I)V

    return-void
.end method

.method public pageUpdate()V
    .registers 1

    return-void
.end method

.method public scrollBy(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollBy(Lcom/android/launcher3/PagedView;III)V

    return-void
.end method

.method public final setAllowOplusOverScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    return-void
.end method

.method public setCurrentPage(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(II)V

    sget-object p1, Lcom/android/launcher/f0;->b:Lcom/android/launcher/f0;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setMBigFolderIntercept(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    return-void
.end method

.method public final setMDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setMUnboundedScroll(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    return-void
.end method

.method public final setWasInOverscroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    return-void
.end method

.method public snapToPage(IIIZ)Z
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/OplusPagedViewImpl;->oplusSnapToPage(IIIZ)Z

    move-result p1

    const-string/jumbo v0, "snapToPage(), whichPage="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const-string v1, ", delta="

    const-string v2, ", duration="

    invoke-static {v0, p0, v1, p2, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", immediate="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OplusPagedViewImpl"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public snapToPage(IIZ)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageWithVelocity(II)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    sub-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v2, v3, :cond_22

    iget p2, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result p0

    return p0

    :cond_22
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher/OplusPagedViewImpl;->calculateScrollDuration(FI)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    const/4 v2, 0x0

    if-nez v0, :cond_74

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_65

    goto :goto_74

    :cond_65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    goto :goto_75

    :cond_74
    :goto_74
    move v0, v2

    :goto_75
    if-eqz v0, :cond_7c

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/launcher/OplusPagedViewImpl;->oplusSnapToPageSpring(IIIZ)Z

    move-result p0

    goto :goto_80

    :cond_7c
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(III)Z

    move-result p0

    :goto_80
    return p0
.end method

.method public final superUpdateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v1}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUIFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v2}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v2}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v2

    if-nez v2, :cond_43

    :cond_39
    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    div-int/lit8 v5, v2, 0x3

    if-ge v0, v5, :cond_45

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_45

    :cond_43
    move v0, v4

    goto :goto_46

    :cond_45
    move v0, v3

    :goto_46
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->isAssistScreenOn()Z

    move-result v1

    if-ne v1, v4, :cond_74

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    if-le v2, v5, :cond_74

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_74

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    if-ne v2, v5, :cond_6a

    iget v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eqz v2, :cond_72

    :cond_6a
    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez v2, :cond_74

    iget v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-nez v2, :cond_74

    :cond_72
    move v2, v4

    goto :goto_75

    :cond_74
    move v2, v3

    :goto_75
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    const-string/jumbo v2, "updateIsBeingDraggedOnTouchDown: mScroller.isFinished: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "finishedScrolling:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mScroller.isSpringing: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "mIsScrollToAssitScreenInSpring "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentPage:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mNextPage:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mAssistScreenSettingsOn "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPagedViewImpl"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_fa

    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e6

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v0, :cond_e6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_e6
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f7

    :cond_f6
    move v3, v4

    :cond_f7
    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    goto :goto_ff

    :cond_fa
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    :goto_ff
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-nez v0, :cond_13d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-nez v0, :cond_13d

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_12b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    :cond_12b
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusWorkspace;->setScrollFinished(Z)V

    :cond_13d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16c

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_16c
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_179

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_179
    return-void
.end method

.method public updateMinAndMaxScrollX()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string/jumbo v0, "updateMinAndMaxScrollX(), mMinScrollX="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", childCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageScrolls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusPagedViewImpl"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method
