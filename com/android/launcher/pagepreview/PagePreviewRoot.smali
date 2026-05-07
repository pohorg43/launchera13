.class public Lcom/android/launcher/pagepreview/PagePreviewRoot;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "PagePreviewRoot"


# instance fields
.field private mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

.field private mPostDelayTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xc8

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPostDelayTime:I

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    sget-boolean p1, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p1, :cond_19

    const p1, 0x7f08052e

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_19
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pagepreview/PagePreviewRoot;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->lambda$updatePreviewListContainerItems$0()V

    return-void
.end method

.method private synthetic lambda$updatePreviewListContainerItems$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->invalidatePagePreviewItem()V

    return-void
.end method


# virtual methods
.method public destroyUIAnimation(Ljava/lang/Runnable;)Landroid/animation/ObjectAnimator;
    .registers 6

    const-string v0, "PagePreviewRoot"

    const-string v1, "destroyUIAnimation"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/pagepreview/PagePreviewRoot$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewRoot$1;-><init>(Lcom/android/launcher/pagepreview/PagePreviewRoot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public notifyDragVisualizeDrop()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->invalidatePagePreviewItem()V

    :cond_7
    return-void
.end method

.method public onDropAnimationComplete(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onDropAnimationComplete(I)V

    :cond_7
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a03bb

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->setBtnContainer(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onPageEndTransition()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onPageEndTransition()V

    :cond_7
    return-void
.end method

.method public onStateDisableTransitionEnd()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->setupDefaultButtonState()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onPagePreviewStateDisable(Z)V

    :cond_f
    return-void
.end method

.method public onStateDisabled()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onPagePreviewStateDisable(Z)V

    :cond_8
    return-void
.end method

.method public onStateEnabled()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onPagePreviewStateEnable(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->checkLauncherModeChanged()V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->adaptWallpaperBrightState()V

    :cond_17
    return-void
.end method

.method public onStateTransitionEnd()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onPagePreviewStateEnable(Z)V

    :cond_8
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->onWallpaperBrightnessChanged()V

    :cond_7
    return-void
.end method

.method public refreshIconSelectState(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->invalidateCurrentPreviewPage(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setFolderFormBtnEnable(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->setFolderFormBtnEnable(Z)V

    :cond_7
    return-void
.end method

.method public setRemoveBtnState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->setRemoveBtnState(ZLcom/android/launcher/Launcher;)V

    :cond_9
    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowInsets: windowInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagePreviewRoot"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, -0x1

    const v4, 0x7f07018f

    const/4 v5, 0x0

    if-eqz v2, :cond_7a

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_69

    :cond_50
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_69
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, p1, v5, v1, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_11d

    :cond_7a
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_b9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_f4

    :cond_a1
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_f4

    :cond_b9
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_f4

    :cond_da
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_f4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    if-nez v2, :cond_100

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    if-eq v2, v1, :cond_10b

    :cond_100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v5, v3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_10b
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_11d
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setupCancelButtonState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->setupCancelButtonState()V

    :cond_7
    return-void
.end method

.method public setupDefaultButtonState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->setupDefaultButtonState()V

    :cond_7
    return-void
.end method

.method public setupViews()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mButtonContainer:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->setupViews()V

    :cond_7
    return-void
.end method

.method public updatePagePreviewItems()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewListContainer;->updatePagePreviewItems()V

    :cond_7
    return-void
.end method

.method public updatePreviewListContainerItems()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPagePreviewListContainer:Lcom/android/launcher/pagepreview/PagePreviewListContainer;

    if-eqz v0, :cond_f

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/pagepreview/PagePreviewRoot;)V

    iget p0, p0, Lcom/android/launcher/pagepreview/PagePreviewRoot;->mPostDelayTime:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method
