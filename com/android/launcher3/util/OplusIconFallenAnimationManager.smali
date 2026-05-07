.class public Lcom/android/launcher3/util/OplusIconFallenAnimationManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLEAR_ICON_FOCUS_ANIMATION_TIME:I = 0x42

.field private static final GPU_BOOST_TIMEOUT:I = 0x190

.field private static final ICON_FALLEN_ANIMATION_DURATION:I = 0x12c

.field private static final ICON_FALLEN_ANIMATION_MIN_DURATION:I = 0x50

.field private static final ICON_FALLEN_COL_TWO_RADIO:I = 0x2

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_63:F = 0.8f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_63_FOLDSCREEN:F = 0.75f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_64:F = 1.0f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_65:F = 0.92f

.field private static final KEY_ITEM_SCALE_DELTA:F = 0.1f

.field private static final KEY_ITEM_WIDGET_SCALE:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "OplusIconFallenAnimationManager"

.field private static volatile sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;


# instance fields
.field private mAlpha:F

.field private mAnimaIn:Landroid/animation/ValueAnimator;

.field private mAnimaOut:Landroid/animation/ValueAnimator;

.field private mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFallenCompletedStateScale:F

.field private mFallenIconFocusedScale:F

.field private mFallenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusKeyView:Landroid/view/View;

.field private mHandingIconFallenState:Z

.field private mHotseatTransY:F

.field private mIconFallenTouchUpOnFolderFlag:Z

.field private mIsCancelAutoFallen:Z

.field private mLastTouchedView:Landroid/view/View;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTouchPosition:[I

.field private mTouchScaleRadio:F

.field private mUnFocusKeyView:Landroid/view/View;

.field private mWidgetScalePivotX46LTR:F

.field private mWidgetScalePivotX46RTL:F

.field private mWidgetScalePivotX56LTR:F

.field private mWidgetScalePivotX56RTL:F

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    const v1, 0x3dcccccd  # 0.1f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenIconFocusedScale:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46LTR:F

    const/high16 v0, 0x40400000  # 3.0f

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46RTL:F

    const/high16 v1, 0x40e00000  # 7.0f

    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56LTR:F

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56RTL:F

    const v0, 0x3f2aaaab

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchScaleRadio:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string p1, "power"

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$performValueAnimation$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetNormalState()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenIconFocusedScale:F

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIsCancelAutoFallen:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetNormalState()V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$resetFallenIconsPosition$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$iconFallenAuto$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$iconFallenAuto$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private focusKeyView(Landroid/view/View;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusKeyView + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    if-ne v0, p1, :cond_26

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "same focus view return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void

    :cond_26
    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_47

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v2, "mAnimaIn is playing return"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_82

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$4;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 p1, 0x0

    const-wide/16 v2, 0x32

    invoke-static {p0, p1, v2, v3}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    const-string p0, "focusKeyView mAnimaIn start"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_82
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)V

    sput-object v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    return-object p0
.end method

.method private initBasePara(Lcom/android/launcher3/folder/Folder;)V
    .registers 9

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v1

    const-string v2, "OSENSE_ACTION_LAUNCHER_GPU_BOOST"

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openAction(Ljava/lang/String;I)J

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "IconFallen"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initFallenIconPivotY(Landroid/content/Context;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setDrawerHandleVisibility(IF)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_34

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFolderExtraItems(Lcom/android/launcher3/folder/Folder;)V

    goto :goto_3e

    :cond_34
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :goto_3e
    const/high16 p1, 0x42480000  # 50.0f

    const/high16 v2, 0x41000000  # 8.0f

    const v3, 0x3f6b851f  # 0.92f

    if-eqz v0, :cond_7f

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    iget v5, v0, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    mul-float v6, v5, p1

    float-to-int v6, v6

    if-le v4, v6, :cond_7f

    mul-float/2addr v5, v2

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_7f

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_6e

    const v1, 0x3e2e147c  # 0.17000002f

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v4, v4

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_81

    :cond_6e
    const v1, 0x3df5c290  # 0.120000005f

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v4, v4

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_81

    :cond_7f
    iput v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    :goto_81
    iget p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    const v0, 0x3dcccccd  # 0.1f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenIconFocusedScale:F

    return-void
.end method

.method private initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V
    .registers 23

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTranslationY()F

    move-result v13

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getScaleX()F

    move-result v6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getScaleY()F

    move-result v13

    move-object v7, p0

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private initFolderExtraItems(Lcom/android/launcher3/folder/Folder;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :cond_17
    instance-of v0, p1, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_39

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->recommendIsShowing()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendFooter()Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_39
    return-void
.end method

.method private initIconLinesInfo(Lcom/android/launcher3/folder/Folder;)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    goto :goto_2f

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length p1, p0

    const/4 v3, 0x0

    move v4, v2

    :goto_24
    if-ge v4, p1, :cond_2e

    aget-object v5, p0, v4

    if-ne v1, v5, :cond_2b

    move-object v3, v5

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2e
    move-object p0, v3

    :goto_2f
    const-string p1, "OplusIconFallenAnimationManager"

    if-eqz p0, :cond_9c

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v3, v2

    move v4, v3

    :goto_3d
    if-ge v2, v1, :cond_9a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x65

    if-eq v7, v8, :cond_97

    instance-of v7, v5, Lcom/android/launcher3/BubbleTextView;

    if-nez v7, :cond_59

    invoke-static {v5}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_97

    :cond_59
    const-string v5, "hasNoIcon info.cellY = "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " info.title"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7a

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    goto :goto_7f

    :cond_7a
    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v3, v5, :cond_7f

    move v3, v5

    :cond_7f
    :goto_7f
    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ge v4, v5, :cond_84

    move v4, v5

    :cond_84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_9a
    move v2, v3

    goto :goto_9d

    :cond_9c
    move v4, v2

    :goto_9d
    const-string p0, "initIconLinesInfo lines:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",firstLine:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",lastLine:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0, v2, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initLinesInfo(III)V

    return-void
.end method

.method private initWorkspaceFallenItems(I)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_12d

    aget-object v5, v1, v4

    instance-of v6, v5, Lcom/android/launcher3/Hotseat;

    if-eqz v6, :cond_1d

    goto/16 :goto_129

    :cond_1d
    if-eq v5, v0, :cond_21

    goto/16 :goto_129

    :cond_21
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v3

    :goto_2a
    if-ge v7, v6, :cond_129

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenDistance(Landroid/content/Context;Landroid/view/View;)V

    instance-of v9, v8, Lcom/android/launcher3/OplusBubbleTextView;

    const/high16 v10, 0x40000000  # 2.0f

    if-eqz v9, :cond_56

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotY(F)V

    check-cast v8, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v8}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto/16 :goto_125

    :cond_56
    invoke-static {v8}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotY(F)V

    check-cast v8, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v8}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto/16 :goto_125

    :cond_79
    if-nez p1, :cond_7d

    const/4 v9, 0x1

    goto :goto_7e

    :cond_7d
    move v9, v3

    :goto_7e
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v11

    const/4 v12, 0x6

    const/4 v13, 0x0

    if-eq v11, v12, :cond_d3

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_8e

    goto :goto_d3

    :cond_8e
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_125

    if-eqz v9, :cond_98

    goto :goto_a1

    :cond_98
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46LTR:F

    div-float v13, v11, v12

    :goto_a1
    invoke-virtual {v8, v13}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v8, v11}, Landroid/view/View;->setPivotY(F)V

    iget-object v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_125

    if-eqz v9, :cond_c1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    goto :goto_cf

    :cond_c1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46RTL:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    :goto_cf
    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    goto :goto_125

    :cond_d3
    :goto_d3
    if-eqz v9, :cond_d6

    goto :goto_e0

    :cond_d6
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    iget v12, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56LTR:F

    div-float v13, v11, v12

    :goto_e0
    invoke-virtual {v8, v13}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v8, v11}, Landroid/view/View;->setPivotY(F)V

    iget-object v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_125

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    if-eqz v9, :cond_100

    goto :goto_109

    :cond_100
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56RTL:F

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    :goto_109
    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    if-eqz v9, :cond_114

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    goto :goto_122

    :cond_114
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56RTL:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    :goto_122
    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    :cond_125
    :goto_125
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2a

    :cond_129
    :goto_129
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_12d
    return-void
.end method

.method private synthetic lambda$iconFallenAuto$2(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    return-void
.end method

.method private synthetic lambda$iconFallenAuto$3(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    return-void
.end method

.method private synthetic lambda$performValueAnimation$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_18

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    return-void
.end method

.method private static synthetic lambda$resetFallenIconsPosition$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onAppUpdateDotSwitchChangeWhenIconFallen(Z)V

    return-void
.end method

.method private performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "I",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FF)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p6, v0, v1

    const/4 p6, 0x1

    aput p7, v0, p6

    invoke-static {p4, p5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    int-to-long v0, p2

    invoke-virtual {p6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p6, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-ne p5, p1, :cond_33

    instance-of p1, p4, Lcom/android/launcher3/pageindicators/PageIndicator;

    if-nez p1, :cond_2b

    instance-of p1, p4, Lcom/android/launcher3/Hotseat;

    if-nez p1, :cond_2b

    instance-of p1, p4, Lcom/android/launcher3/folder/Folder;

    if-nez p1, :cond_2b

    instance-of p1, p4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_33

    :cond_2b
    new-instance p1, Lcom/android/launcher3/w0;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {p6, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_33
    return-object p6
.end method

.method private resetAllWithoutAnimation()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_c

    const-string p0, "OplusIconFallenAnimationManager"

    const-string v0, "resetAllWithoutAnimation do nothing ,mlauncher is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_29
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_37

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_48

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_54

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_54
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    instance-of v5, v3, Lcom/android/launcher3/Hotseat;

    if-eqz v5, :cond_8b

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v5

    if-nez v5, :cond_87

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_5a

    :cond_87
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5a

    :cond_8b
    instance-of v5, v3, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v5, :cond_a9

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBubbleTextView;->resetShadowLayer()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    goto :goto_5a

    :cond_a9
    invoke-static {v3}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c1

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/OplusFolderIcon;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBubbleTextView;->resetShadowLayer()V

    goto :goto_5a

    :cond_c1
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5a

    :cond_c5
    invoke-direct {p0, v4, v2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setDrawerHandleVisibility(IF)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    return-void
.end method

.method public static resetInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    return-void
.end method

.method private resetNormalState()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetAllWithoutAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_15
    iget-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-eqz v0, :cond_36

    const-string v0, "OplusIconFallenAnimationManager"

    const-string v2, "set hotseat invisible because touch up on folder"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v2, 0x4

    if-eqz v0, :cond_28

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_36

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_36
    iput-boolean v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    return-void
.end method

.method private setAppIconNormalSize(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppIconNormalSize focusView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_22
    return-void
.end method

.method private setDrawerHandleVisibility(IF)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    if-eqz p1, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :goto_e
    return-void
.end method

.method private startActivity(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    instance-of p1, p1, Lcom/android/launcher3/folder/FolderIcon;

    iput-boolean p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    return-void
.end method


# virtual methods
.method public cancelAutoFallen()V
    .registers 3

    const-string v0, "OplusIconFallenAnimationManager"

    const-string v1, "cancelAutoFallen "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIsCancelAutoFallen:Z

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public clearKeyViewFocus()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKeyViewFocusDelay focusView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusIconFallenAnimationManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_6e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x42

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$3;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6d

    :cond_68
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    :goto_6d
    return-void

    :array_6e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public endHandingIconFallenState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    const-string p0, "OplusIconFallenAnimationManager"

    const-string v0, "endHandingIconFallenState mHandingIconFallenState false"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAnimIndicatorView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method public hasNoIcon()Z
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_4c

    aget-object v4, p0, v3

    if-ne v0, v4, :cond_49

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const-string v6, "hasNoIcon itemCount ="

    const-string v7, "OplusIconFallenAnimationManager"

    invoke-static {v6, v5, v7}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v6, v2

    :goto_29
    if-ge v6, v5, :cond_49

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v9, -0x65

    if-eq v8, v9, :cond_46

    instance-of v8, v7, Lcom/android/launcher3/BubbleTextView;

    if-nez v8, :cond_45

    invoke-static {v7}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_46

    :cond_45
    return v2

    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_4c
    const/4 p0, 0x1

    return p0
.end method

.method public iconFallenAuto(IF)V
    .registers 21

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIsCancelAutoFallen:Z

    const/high16 v1, 0x43960000  # 300.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_13

    move v11, v2

    goto :goto_14

    :cond_13
    move v11, v1

    :goto_14
    sget-object v12, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_AUTO_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconFallenAuto direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentDistanceRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",duration:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "OplusIconFallenAnimationManager"

    invoke-static {v1, v11, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v13, 0x1

    if-eqz v4, :cond_6b

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/i;

    invoke-direct {v1, v8, v10}, Lcom/android/launcher3/util/i;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/i;

    invoke-direct {v1, v8, v13}, Lcom/android/launcher3/util/i;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_6b
    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_8a

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_8a
    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_9c

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_9c
    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1be

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v15, Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_d4

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto :goto_a2

    :cond_d4
    instance-of v1, v15, Lcom/android/launcher3/OplusBubbleTextView;

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_14a

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v15, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v16

    invoke-static {v15, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v17

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v1, v13, :cond_110

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez v0, :cond_110

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_110

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v6

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_110
    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget v7, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    check-cast v15, Lcom/android/launcher3/OplusBubbleTextView;

    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    aput v2, v1, v10

    const/4 v2, 0x0

    aput v2, v1, v13

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    div-int/lit8 v1, v11, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$5;

    invoke-direct {v1, v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$5;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_a2

    :cond_14a
    invoke-static {v15}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_180

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v15, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v5

    invoke-static {v15, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    iget v7, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    check-cast v15, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v15}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    div-int/lit8 v1, v11, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_a2

    :cond_180
    instance-of v0, v15, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_1aa

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v15, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v5

    invoke-static {v15, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    const/high16 v7, 0x3f400000  # 0.75f

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    div-int/lit8 v2, v11, 0x2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_a2

    :cond_1aa
    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v15}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_a2

    :cond_1be
    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;

    invoke-direct {v1, v8, v9}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public iconFallenComplete(I)V
    .registers 6

    const-string v0, "iconFallenComplete fallenList"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_2a
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setDrawerHandleVisibility(IF)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_36

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_44

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v2, :cond_5b

    goto :goto_4a

    :cond_5b
    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_73

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    iget-object v2, v2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/launcher3/IBubbleTextViewExt;->onAppUpdateDotSwitchChangeWhenIconFallen(Z)V

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-static {v2, p1, v1, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V

    invoke-static {v1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenEndPosition(Landroid/view/View;)V

    goto :goto_4a

    :cond_73
    invoke-static {v1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-static {v2, p1, v1, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V

    invoke-static {v1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenEndPosition(Landroid/view/View;)V

    goto :goto_4a

    :cond_84
    return-void
.end method

.method public iconFallenScale(FF)V
    .registers 15

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    const-wide/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/ClickUtils;->clickableIconFallen(J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iconFallenScale start  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_106

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v8, v5, Lcom/android/launcher3/Hotseat;

    if-eqz v8, :cond_4a

    goto :goto_32

    :cond_4a
    instance-of v8, v5, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v8, :cond_4f

    goto :goto_32

    :cond_4f
    instance-of v8, v5, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v8, :cond_54

    goto :goto_32

    :cond_54
    if-nez v3, :cond_7b

    if-nez v4, :cond_7b

    instance-of v8, v5, Lcom/android/launcher3/BubbleTextView;

    if-nez v8, :cond_60

    instance-of v8, v5, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v8, :cond_7b

    :cond_60
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_76

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_7b

    :cond_76
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v9

    :cond_7b
    invoke-static {v5}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getEndPos(Landroid/view/View;)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[I

    invoke-static {v5}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getIconFocusOffsetX(Landroid/view/View;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[I

    aget v10, v9, v2

    aget v11, v8, v2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v10, p1

    if-gtz v10, :cond_32

    aget v10, v9, v2

    add-int/2addr v10, v4

    aget v8, v8, v6

    sub-int/2addr v10, v8

    int-to-float v8, v10

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_32

    aget v8, v9, v6

    int-to-float v8, v8

    int-to-float v10, v3

    iget v11, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchScaleRadio:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v8

    cmpl-float v8, v10, p2

    if-ltz v8, :cond_32

    aget v8, v9, v6

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_32

    instance-of v8, v5, Lcom/android/launcher3/BubbleTextView;

    if-nez v8, :cond_b7

    instance-of v8, v5, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v8, :cond_32

    :cond_b7
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    if-ne p1, v5, :cond_bc

    goto :goto_105

    :cond_bc
    const-string p1, "iconFallenScale view cellx = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " celly = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " title="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {v5, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result p1

    invoke-virtual {v5, p1}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    if-eqz p1, :cond_100

    const-string p1, "clearKeyViewFocus before"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->clearKeyViewFocus()V

    :cond_100
    invoke-direct {p0, v5}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->focusKeyView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    :goto_105
    move v2, v6

    :cond_106
    if-nez v2, :cond_115

    const-string p1, "iconFallenScale hasFoundScaleIcon false"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->clearKeyViewFocus()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    :cond_115
    return-void
.end method

.method public iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 16

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    div-float v0, p3, v0

    sget-object v1, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_AUTO_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v1, v2, v1

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_17

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconFallenWithDistance distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " interpolationValue = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    mul-float/2addr p3, v0

    iput p3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v3, :cond_4d

    invoke-virtual {v3, p3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object p3

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4d
    sget-object p3, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p3}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual {p3}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hideUpArrow()V

    :cond_58
    if-eqz p1, :cond_5e

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFolderFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    return-void

    :cond_5e
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p3}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p3

    array-length v3, p3

    const/4 v4, 0x0

    :goto_70
    if-ge v4, v3, :cond_196

    aget-object v5, p3, v4

    instance-of v6, v5, Lcom/android/launcher3/Hotseat;

    if-eqz v6, :cond_91

    iget-object v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    iget-object v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_192

    :cond_91
    if-eq v5, p1, :cond_95

    goto/16 :goto_192

    :cond_95
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    mul-float/2addr v7, v0

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ac

    iget-object v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_b1
    if-ge v7, v5, :cond_192

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v11, -0x65

    if-eq v10, v11, :cond_18e

    instance-of v10, v8, Lcom/android/launcher3/BubbleTextView;

    if-eqz v10, :cond_10a

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d4

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    invoke-static {v8, v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    iget-object v9, v9, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v9}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/OplusBubbleTextView;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v9, v10}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v9, v8, v0, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    iget v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v0

    sub-float v9, v2, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    iget v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v0

    sub-float v9, v2, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_18e

    :cond_10a
    invoke-static {v8}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_157

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11d

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11d
    invoke-static {v8, v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v10}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-virtual {v9}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v9, v10}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v9, v8, v0, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    iget v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v0

    sub-float v9, v2, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    iget v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v0

    sub-float v9, v2, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    goto :goto_18e

    :cond_157
    instance-of v10, v8, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v10, :cond_189

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_168

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_168
    invoke-static {v8, v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    iget v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    const/high16 v9, 0x3e800000  # 0.25f

    mul-float/2addr v9, v0

    sub-float v9, v2, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v9, v8, v0, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_18e

    :cond_189
    const-string v8, "iconFallenWithDistance info= "

    invoke-static {v8, v9, v1}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_18e
    :goto_18e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b1

    :cond_192
    :goto_192
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_70

    :cond_196
    return-void
.end method

.method public iconFolderFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_20

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "FolderPagedView child count = %s return"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusIconFallenAnimationManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    mul-float/2addr v1, p3

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3f
    if-ge v2, p1, :cond_a5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_a2

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1, p3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v1, p3, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v6

    iget v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v7, v3, :cond_7a

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez v4, :cond_7a

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_7a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_7a
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v5, v4, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v5}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    iget v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    iget v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, p3

    sub-float v4, v5, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    iget v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    sub-float v4, v5, v4

    mul-float/2addr v4, p3

    sub-float/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_a5
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_ae

    iget p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_ae
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_be

    iget p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_be
    return-void
.end method

.method public initFolderFallenItems(Lcom/android/launcher3/folder/Folder;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_3e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenDistance(Landroid/content/Context;Landroid/view/View;)V

    instance-of v3, v2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_3e
    return-void
.end method

.method public initIconFallenPara(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initOpenFolderInfo(Lcom/android/launcher3/folder/Folder;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initBasePara(Lcom/android/launcher3/folder/Folder;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initIconLinesInfo(Lcom/android/launcher3/folder/Folder;)V

    const-string v0, "OplusIconFallenAnimationManager"

    if-eqz p1, :cond_1b

    const-string p2, "icon fallen in folder"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFolderFallenItems(Lcom/android/launcher3/folder/Folder;)V

    goto :goto_23

    :cond_1b
    const-string p1, "icon fallen in workspace"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initWorkspaceFallenItems(I)V

    :goto_23
    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, p3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenDistance(Landroid/content/Context;F)V

    return-void
.end method

.method public isHandingIconFallenState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    return p0
.end method

.method public isIconFallenTouchUpOnFolderFlag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    return p0
.end method

.method public isInstateIconFallen()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public performFallenIconClick()V
    .registers 7

    const-string v0, "OplusIconFallenAnimationManager"

    const/4 v1, 0x0

    const v2, 0x7f1200b0

    :try_start_6
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pm.isScreenOn() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    if-eqz v4, :cond_4a

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v4

    if-eqz v4, :cond_4a

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->startActivity(Landroid/view/View;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_31} :catch_41
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_31} :catch_32

    goto :goto_4a

    :catch_32
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Launcher does not have the permission to launch "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :catch_41
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    return-void
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public resetFallenIconsPosition()V
    .registers 15

    const-string v0, "OplusIconFallenAnimationManager"

    const-string v1, "resetFallenIconsPosition"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_13

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/seed/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_24
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v1, 0x14a

    sget-object v2, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_FALLEN_RESET_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v3

    const/4 v12, 0x0

    if-nez v3, :cond_5c

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_5c

    :cond_3f
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_e7

    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_e7

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v11, 0x0

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_e7

    :cond_5c
    :goto_5c
    iget-boolean v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-nez v3, :cond_a7

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v3, :cond_79

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v11, 0x3f800000  # 1.0f

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_79
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_90

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v11, 0x3f800000  # 1.0f

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_90
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_a7

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v11, 0x3f800000  # 1.0f

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_a7
    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v8, :cond_b8

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v11, 0x0

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_b8
    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_d6

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v10

    const/4 v11, 0x0

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v10

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_d6
    iget-object v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_e7

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v11, 0x0

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_e7
    :goto_e7
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ed
    :goto_ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/view/View;

    instance-of v4, v13, Lcom/android/launcher3/Hotseat;

    if-eqz v4, :cond_133

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v4

    if-nez v4, :cond_10e

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_ed

    :cond_10e
    iget-boolean v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-nez v4, :cond_124

    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v11, 0x3f800000  # 1.0f

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_124
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v11, 0x0

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto :goto_ed

    :cond_133
    instance-of v4, v13, Lcom/android/launcher3/BubbleTextView;

    const/4 v5, 0x1

    if-eqz v4, :cond_179

    invoke-direct {p0, v0, v1, v2, v13}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/OplusBubbleTextView;

    sget-object v6, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    iget v8, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    aput v8, v7, v12

    const/high16 v8, 0x3f800000  # 1.0f

    aput v8, v7, v5

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v13, v5}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v13, v5}, Landroid/view/View;->setPivotY(F)V

    new-instance v5, Lcom/android/common/config/a;

    const/16 v6, 0x9

    invoke-direct {v5, v13, v6}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_ed

    :cond_179
    invoke-static {v13}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_198

    invoke-direct {p0, v0, v1, v2, v13}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    check-cast v13, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_ed

    :cond_198
    invoke-direct {p0, v0, v1, v2, v13}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/high16 v11, 0x3f800000  # 1.0f

    const/16 v6, 0x14a

    move-object v4, p0

    move-object v5, v0

    move-object v7, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_ed

    :cond_1ae
    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setAppWidgetFallenState(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    goto :goto_26

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "OplusIconFallenAnimationManager"

    const-string p1, "setAppWidgetFallenState set alpha 0"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public startHandingIconFallenState()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    const-string p0, "OplusIconFallenAnimationManager"

    const-string/jumbo v0, "startHandingIconFallenState mHandingIconFallenState true"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
