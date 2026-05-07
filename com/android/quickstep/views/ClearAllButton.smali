.class public Lcom/android/quickstep/views/ClearAllButton;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static final DISMISS_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/ClearAllButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBILITY_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/ClearAllButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private mContentAlpha:F

.field private mDismissAlpha:F

.field private mFullscreenProgress:F

.field private mFullscreenTranslationPrimary:F

.field private mGridProgress:F

.field private mGridScrollOffset:F

.field private mGridTranslationPrimary:F

.field private mIsRtl:Z

.field private mNormalTranslationPrimary:F

.field private mScrollAlpha:F

.field private mScrollOffsetPrimary:F

.field private mSidePadding:I

.field private mSplitSelectScrollOffsetPrimary:F

.field private mVisibilityAlpha:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/ClearAllButton$1;

    const-string/jumbo v1, "visibilityAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/ClearAllButton$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/ClearAllButton$2;

    const-string v1, "dismissAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/ClearAllButton$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/ClearAllButton;->DISMISS_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollAlpha:F

    iput p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    iput p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    iput p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    iput p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenProgress:F

    iput p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridProgress:F

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/views/ClearAllButton;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    return p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/views/ClearAllButton;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    return p0
.end method

.method private applyPrimaryTranslation()V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getOriginalTranslationY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v0

    iget v2, p0, Lcom/android/quickstep/views/ClearAllButton;->mNormalTranslationPrimary:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenTranslationPrimary:F

    invoke-direct {p0, v2}, Lcom/android/quickstep/views/ClearAllButton;->getFullscreenTrans(F)F

    move-result v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridTranslationPrimary:F

    invoke-direct {p0, v2}, Lcom/android/quickstep/views/ClearAllButton;->getGridTrans(F)F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method private applySecondaryTranslation()V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getOriginalTranslationY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method private getFullscreenTrans(F)F
    .registers 3

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenProgress:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_8

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    return p1
.end method

.method private getGridTrans(F)F
    .registers 3

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridProgress:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_8

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    return p1
.end method

.method private getOriginalTranslationY()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    int-to-float p0, p0

    goto :goto_14

    :cond_e
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    :goto_14
    return p0
.end method

.method private getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .registers 1

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method private updateAlpha()V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollAlpha:F

    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public getOffsetAdjustment(ZZ)F
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/ClearAllButton;->getScrollAdjustment(ZZ)F

    move-result p0

    return p0
.end method

.method public getScrollAdjustment(ZZ)F
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenTranslationPrimary:F

    add-float/2addr v0, p1

    :cond_6
    if-eqz p2, :cond_e

    iget p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridTranslationPrimary:F

    iget p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridScrollOffset:F

    add-float/2addr p1, p2

    add-float/2addr v0, p1

    :cond_e
    iget p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollOffsetPrimary:F

    add-float/2addr v0, p1

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mSplitSelectScrollOffsetPrimary:F

    add-float/2addr v0, p0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    invoke-interface {p1, p2, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getClearAllSidePadding(Landroid/view/View;Z)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mSidePadding:I

    return-void
.end method

.method public onRecentsViewScroll(IZ)V
    .registers 8

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllScroll()I

    move-result v3

    sub-int v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-boolean v4, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    if-eqz v4, :cond_32

    neg-float v1, v1

    :cond_32
    iput v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mNormalTranslationPrimary:F

    if-nez p2, :cond_3c

    iget p2, p0, Lcom/android/quickstep/views/ClearAllButton;->mSidePadding:I

    int-to-float p2, p2

    add-float/2addr v1, p2

    iput v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mNormalTranslationPrimary:F

    :cond_3c
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applySecondaryTranslation()V

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllExtraPageSpacing()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    iget-boolean v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    if-eqz v0, :cond_51

    neg-float p2, p2

    :cond_51
    int-to-float v0, v3

    add-float/2addr v0, p2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollAlpha:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    return-void
.end method

.method public setContentAlpha(F)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    :cond_b
    return-void
.end method

.method public setDismissAlpha(F)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    :cond_b
    return-void
.end method

.method public setFullscreenProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenProgress:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    return-void
.end method

.method public setFullscreenTranslationPrimary(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenTranslationPrimary:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    return-void
.end method

.method public setGridProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridProgress:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    return-void
.end method

.method public setGridScrollOffset(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridScrollOffset:F

    return-void
.end method

.method public setGridTranslationPrimary(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridTranslationPrimary:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    return-void
.end method

.method public setScrollOffsetPrimary(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollOffsetPrimary:F

    return-void
.end method

.method public setSplitSelectScrollOffsetPrimary(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mSplitSelectScrollOffsetPrimary:F

    return-void
.end method

.method public setVisibilityAlpha(F)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    :cond_b
    return-void
.end method
