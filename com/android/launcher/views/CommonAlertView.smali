.class public abstract Lcom/android/launcher/views/CommonAlertView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonAlertView"


# instance fields
.field private mIsViewShow:Z

.field public mLauncher:Lcom/android/launcher/Launcher;

.field private mPanelAnimator:Landroid/animation/ObjectAnimator;

.field private mTipsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/CommonAlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher/views/CommonAlertView;->mIsViewShow:Z

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static createPanel(Landroid/content/Context;I)Lcom/android/launcher/views/CommonAlertView;
    .registers 3

    const v0, 0x7f0d0063

    invoke-static {p0, p1, v0}, Lcom/android/launcher/views/CommonAlertView;->createPanel(Landroid/content/Context;II)Lcom/android/launcher/views/CommonAlertView;

    move-result-object p0

    return-object p0
.end method

.method public static createPanel(Landroid/content/Context;II)Lcom/android/launcher/views/CommonAlertView;
    .registers 13

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/views/CommonAlertView;

    const v5, 0x7f0a016b

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p2, Lcom/android/launcher/views/CommonAlertView;->mTipsContainer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x51

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p2}, Lcom/android/launcher/views/CommonAlertView;->getLayoutInflateId()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/launcher/views/CommonAlertView;->initView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/android/common/config/ScreenInfo;->isNarBarShowingInNavMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :cond_46
    invoke-direct {p2, v4}, Lcom/android/launcher/views/CommonAlertView;->updateNavigationViewHeight(I)V

    iget-object v0, p2, Lcom/android/launcher/views/CommonAlertView;->mTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-lez p1, :cond_65

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v2

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, p1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_65
    invoke-virtual {v1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private updateNavigationViewHeight(I)V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public abstract animEnd()V
.end method

.method public abstract animUpdate(Landroid/animation/ValueAnimator;)V
.end method

.method public animateClose(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/views/CommonAlertView;->mIsViewShow:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    int-to-float v0, v4

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const-string/jumbo v0, "translationY"

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher/views/CommonAlertView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/views/CommonAlertView$3;-><init>(Lcom/android/launcher/views/CommonAlertView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateShow()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iput-boolean v0, p0, Lcom/android/launcher/views/CommonAlertView;->mIsViewShow:Z

    iget-object v1, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/common/config/ScreenInfo;->isNarBarShowingInNavMode(Landroid/content/Context;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_5e

    if-eqz v4, :cond_5e

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_5e

    sget-object v1, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    goto :goto_5f

    :cond_5e
    move v1, v5

    :goto_5f
    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v3, v3

    aput v3, v2, v5

    int-to-float v1, v1

    aput v1, v2, v0

    const-string/jumbo v0, "translationY"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher/views/CommonAlertView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/CommonAlertView$1;-><init>(Lcom/android/launcher/views/CommonAlertView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher/views/CommonAlertView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/CommonAlertView$2;-><init>(Lcom/android/launcher/views/CommonAlertView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public closeComplete()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method public abstract getLayoutInflateId()I
.end method

.method public handleClose(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClose: animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonAlertView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean p1, p0, Lcom/android/launcher/views/CommonAlertView;->mIsViewShow:Z

    if-nez p1, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher/views/CommonAlertView;->closeComplete()V

    :cond_23
    const-string p0, "handleClose, the panel not open yet!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iput-boolean v0, p0, Lcom/android/launcher/views/CommonAlertView;->mIsViewShow:Z

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/views/CommonAlertView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3b
    if-eqz p1, :cond_42

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/views/CommonAlertView;->animateClose(Z)V

    goto :goto_45

    :cond_42
    invoke-virtual {p0}, Lcom/android/launcher/views/CommonAlertView;->closeComplete()V

    :goto_45
    return-void
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public isOfType(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isViewShow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/views/CommonAlertView;->mIsViewShow:Z

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lcom/android/launcher/views/CommonAlertView;->updateNavigationViewHeight(I)V

    return-void
.end method
