.class public Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_PROGRESS:F = 0.5f

.field private static final FLOAT_0:F = 0.0f

.field private static final FLOAT_1:F = 1.0f

.field private static final MAX_AUTO_ANIM_DURATION:I = 0x190

.field private static final MAX_FLING_AUTO_ANIM_DURATION:I = 0x1f4

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final MIN_FLING_AUTO_ANIM_DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "RecommendFolderSwitchPanelView"

.field private static final VELOCITY_UNIT:I = 0x3e8

.field private static final mMaxVelocity:I = 0x5dc0


# instance fields
.field private mAutoAnimEndValue:F

.field private mCurProgress:F

.field private mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field private mPanelAnimator:Landroid/animation/ObjectAnimator;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->lambda$playAutoTouchUpAnimIfNecessary$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->closeComplete()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mAutoAnimEndValue:F

    return p0
.end method

.method public static synthetic access$200(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->createPanel(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/SwitchManageHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->lambda$onFinishInflate$0(Lcom/android/launcher/folder/recommend/SwitchManageHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;)V

    return-void
.end method

.method private closeComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static createPanel(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;
    .registers 5

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d017a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    invoke-virtual {v0, p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private dragAngleDetect(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownY:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownY:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, v2, p1

    if-nez p1, :cond_31

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_31
    div-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    double-to-float p0, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "theta:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",MAX_SWIPE_ANGLE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x3f860a92

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RecommendFolderSwitchPanelView"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float p0, p0, v0

    if-lez p0, :cond_5f

    const/4 v1, 0x1

    :cond_5f
    return v1
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1d

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    goto :goto_25

    :cond_1d
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_25

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    :cond_25
    :goto_25
    iget p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->playDragDownAnimWithProgress(F)V

    return-void
.end method

.method private isArea()Z
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownX:I

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownY:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onFinishInflate$0(Lcom/android/launcher/folder/recommend/SwitchManageHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setSwitchByUser(Z)V

    return-void
.end method

.method private synthetic lambda$playAutoTouchUpAnimIfNecessary$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->playDragDownAnimWithProgress(F)V

    return-void
.end method

.method private playAutoTouchUpAnimIfNecessary(F)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_13

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->closeComplete()V

    return-void

    :cond_13
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_19

    return-void

    :cond_19
    iput v2, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mAutoAnimEndValue:F

    cmpl-float v2, p1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v4

    :goto_24
    const/high16 v5, 0x3f000000  # 0.5f

    cmpl-float v6, v0, v5

    if-gtz v6, :cond_2c

    if-eqz v2, :cond_2e

    :cond_2c
    iput v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mAutoAnimEndValue:F

    :cond_2e
    const/16 v6, 0x1f4

    const/16 v7, 0xfa

    const/4 v8, 0x2

    if-eqz v2, :cond_46

    iget v5, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    mul-int/2addr v5, v8

    int-to-float v5, v5

    sub-float/2addr v1, v0

    mul-float/2addr v1, v5

    div-float/2addr v1, p1

    float-to-int v0, v1

    if-ge v0, v7, :cond_41

    move v6, v7

    goto :goto_52

    :cond_41
    if-le v0, v6, :cond_44

    goto :goto_52

    :cond_44
    move v6, v0

    goto :goto_52

    :cond_46
    cmpg-float v5, v0, v5

    const/high16 v6, 0x43c80000  # 400.0f

    if-gez v5, :cond_4f

    mul-float/2addr v0, v6

    float-to-int v6, v0

    goto :goto_52

    :cond_4f
    sub-float/2addr v1, v0

    mul-float/2addr v1, v6

    float-to-int v6, v1

    :goto_52
    const-string/jumbo v0, "playAutoTouchUpAnimationIfNecessary progress:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    const-string v5, ",velocityY:"

    const-string v7, ",mMaxHeightDiff:"

    invoke-static {v0, v1, v5, p1, v7}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    const-string v1, ",duration:"

    const-string v5, ", fling = "

    invoke-static {v0, p1, v1, v6, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAutoEndValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mAutoAnimEndValue:F

    const-string v1, "RecommendFolderSwitchPanelView"

    invoke-static {v0, p1, v1}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    new-array p1, v8, [F

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    aput v0, p1, v4

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mAutoAnimEndValue:F

    aput v0, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playDragDownAnimWithProgress(F)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public animateShow()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    if-eqz v0, :cond_15

    const-string p0, "RecommendFolderSwitchPanelView"

    const-string/jumbo v0, "the panel is showing!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070633

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    int-to-float v2, v3

    aput v2, v1, v0

    const-string/jumbo v0, "translationY"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public handleClose(Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClose: animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendFolderSwitchPanelView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_22

    const-string p0, "handleClose, the panel not open yet!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/android/launcher/folder/recommend/DialogDismissCallback;->dismiss()V

    :cond_29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3c
    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v3, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string/jumbo p1, "translationY"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_8b

    :cond_88
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->closeComplete()V

    :goto_8b
    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onBackPressed()Z
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mTouchDownY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mCurProgress:F

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return p1

    :cond_28
    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->dragAngleDetect(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_11
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1b
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2e

    goto :goto_4c

    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_4c

    :cond_2e
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    const v2, 0x46bb8000  # 24000.0f

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const/high16 v0, 0x447a0000  # 1000.0f

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->playAutoTouchUpAnimIfNecessary(F)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_4c
    return v1
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v0

    const v1, 0x7f0a040f

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    new-instance v2, Lcom/android/launcher/folder/recommend/f;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher/folder/recommend/f;-><init>(Lcom/android/launcher/folder/recommend/SwitchManageHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03db

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget-boolean v3, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v3, :cond_40

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    add-int/2addr v2, p0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setDialogDismissCallback(Lcom/android/launcher/folder/recommend/DialogDismissCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->mViewHeight:I

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
