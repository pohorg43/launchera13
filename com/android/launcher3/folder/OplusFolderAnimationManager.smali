.class public Lcom/android/launcher3/folder/OplusFolderAnimationManager;
.super Lcom/android/launcher3/folder/FolderAnimationManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;
    }
.end annotation


# static fields
.field public static final BACKGROUND_ALPHA_DURATION:F = 350.0f

.field private static final BACKGROUND_APPEAR_DURATION:I = 0xc8

.field private static final BACKGROUND_DISAPPEAR_DURATION:I = 0x64

.field private static final BG_BACKGROUND_CORN_RADIUS_BASE:F = 0.1f

.field private static final BIG_FOLDER_HEADER_ALPHA_DELAY:I = 0x64

.field private static final DEBUG:Z = false

.field private static final FANCYDRAWABLE_MAX_ALPHA:I = 0xff

.field private static final FLODER_OPEN_TEXT_ALPHA:Landroid/view/animation/PathInterpolator;

.field private static final FOLDER_OPEN_PAGE_POINT_ALPHA_DURATION:I = 0xc8

.field private static final FOLDER_SINGLE_LINE_ITEMS:I = 0x3

.field public static final FOLDER_TEXT_ALPHA_ANIMATION:J = 0xb4L

.field private static final FOLDER_ZOOM_CLOSE_CHANGE_BG_AND_TEXT_VALUE:F = 0.75f

.field private static final FOLDER_ZOOM_MAX_VALUE:F = 1.0f

.field private static final FOLDER_ZOOM_OPEN_DURATION:I = 0x140

.field private static final ICON_ANIMATION_GRADIENT_DELAY_DURATION:I = 0x11

.field private static final ICON_TEXT_ANIMATION_DURATION:I = 0x103

.field private static final TAG:Ljava/lang/String; = "OplusFolderAnimationManager"

.field private static final VISIBLE_THRESHOLD_VALUE:F = 0.75f

.field public static final WORKSPACE_SCALE_RATE:F = 0.92f


# instance fields
.field private mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

.field private mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

.field private mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

.field private mFolderCloseDuration:I

.field private mFolderContentRoot:Landroid/widget/FrameLayout;

.field private mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

.field private mFolderOpenDuration:I

.field private mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mbgRadius:F

.field private mbgRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->FLODER_OPEN_TEXT_ALPHA:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRadius:F

    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    new-instance p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$10;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$10;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    iget-object p2, p1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getInstance()Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    new-instance p1, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0056

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0057

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderContentRoot:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderContentRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRadius:F

    return p0
.end method

.method public static synthetic access$502(Lcom/android/launcher3/folder/OplusFolderAnimationManager;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRadius:F

    return p1
.end method

.method public static synthetic access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    return p0
.end method

.method private createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .registers 26

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    return-object v1

    :cond_e
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v0, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_1a

    sget-object v2, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_1c

    :cond_1a
    sget-object v2, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_1c
    if-eqz v0, :cond_21

    iget v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    goto :goto_2c

    :cond_21
    iget v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v0, v0

    iget-object v3, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderItemRoomInProgress()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    :goto_2c
    iget-object v3, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    instance-of v5, v3, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v5, :cond_36

    iget v4, v3, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    :cond_36
    const/4 v11, 0x2

    new-array v3, v11, [I

    iget-object v5, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    iget-object v6, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v3

    int-to-float v4, v4

    iget-object v5, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    new-array v3, v11, [F

    iget-object v5, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v6, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v12, 0x0

    invoke-static {v5, v6, v3, v12}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    new-array v5, v11, [F

    iget-object v6, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v9, v6, v5, v12}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v6, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v6

    if-eqz v6, :cond_74

    iget-object v1, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_74
    invoke-direct {v8, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderTransDistance(Landroid/graphics/Rect;)[I

    move-result-object v1

    if-nez v1, :cond_7c

    move v6, v12

    goto :goto_7e

    :cond_7c
    aget v6, v1, v12

    :goto_7e
    const/4 v13, 0x1

    if-nez v1, :cond_83

    move v7, v12

    goto :goto_85

    :cond_83
    aget v7, v1, v13

    :goto_85
    if-nez v1, :cond_89

    move v14, v12

    goto :goto_8b

    :cond_89
    aget v14, v1, v11

    :goto_8b
    const/4 v15, 0x3

    if-nez v1, :cond_90

    move v1, v12

    goto :goto_92

    :cond_90
    aget v1, v1, v15

    :goto_92
    iget-boolean v15, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v16, 0x40000000  # 2.0f

    const/high16 v17, 0x3f800000  # 1.0f

    if-eqz v15, :cond_bc

    int-to-float v6, v6

    iget-object v15, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v15, v16

    aget v3, v3, v13

    aget v5, v5, v13

    sub-float/2addr v3, v5

    add-float/2addr v3, v15

    sub-float v5, v17, v4

    mul-float/2addr v5, v3

    int-to-float v3, v7

    add-float/2addr v5, v3

    int-to-float v3, v14

    int-to-float v1, v1

    move/from16 v18, v1

    move v14, v3

    move/from16 v16, v5

    move v15, v6

    move/from16 v1, v17

    move v3, v1

    move v5, v4

    goto :goto_ee

    :cond_bc
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v15

    int-to-float v6, v6

    add-float/2addr v15, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, v14

    iget-object v14, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v16

    aget v3, v3, v13

    aget v5, v5, v13

    sub-float/2addr v3, v5

    add-float/2addr v3, v14

    sub-float v5, v17, v4

    mul-float/2addr v5, v3

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    move/from16 v18, v5

    move/from16 v16, v6

    move v14, v7

    move v5, v3

    move v3, v4

    move v4, v1

    move v1, v3

    :goto_ee
    new-array v6, v11, [F

    aput v4, v6, v12

    aput v1, v6, v13

    const-string/jumbo v1, "scaleX"

    invoke-static {v9, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v11, [F

    aput v5, v6, v12

    aput v3, v6, v13

    const-string/jumbo v3, "scaleY"

    invoke-static {v9, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v11, [F

    fill-array-data v3, :array_19e

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;

    move-wide/from16 v19, v0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v11, v2

    move/from16 v2, p2

    move-object v12, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v6

    move v6, v15

    move-object/from16 v22, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;ZLandroid/view/View;FFFF)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;

    move-object v0, v7

    move-object/from16 v2, p1

    move v3, v15

    move v4, v14

    move/from16 v5, v16

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;FFFF)V

    invoke-virtual {v12, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v0, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_158

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_158
    new-array v0, v13, [F

    iget-boolean v2, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_15f

    goto :goto_161

    :cond_15f
    move/from16 v17, v1

    :goto_161
    const/4 v1, 0x0

    aput v17, v0, v1

    const-string v1, "alpha"

    invoke-static {v9, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v3

    if-eqz v3, :cond_18c

    iget-boolean v3, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_187

    sub-long v1, v19, v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_18c

    :cond_187
    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_18c
    :goto_18c
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    aput-object v22, v1, v13

    const/4 v2, 0x2

    aput-object v21, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v10

    :array_19e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;
    .registers 16

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/OplusCellLayout;

    const/4 v9, 0x0

    if-eqz v8, :cond_3f

    check-cast v7, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_3d

    goto :goto_3f

    :cond_3d
    move v7, v9

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v7, 0x1

    :goto_40
    iget-boolean v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const-string v10, "OplusFolderAnimationManager"

    const/high16 v11, 0x3f800000  # 1.0f

    if-nez v8, :cond_b2

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v8

    iget-object v12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/LauncherState;

    iget-object v13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v12

    const-string v13, "getBackgroundAndIndicatorAnimator, Workspace current scale = "

    invoke-static {v13}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ",State scale = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v13

    iget v14, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_90

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v12, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_90
    if-eqz v8, :cond_b2

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v12

    cmpg-float v12, v12, v11

    if-gez v12, :cond_b2

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderIcon;->isInHotseat()Z

    move-result v12

    if-nez v12, :cond_ac

    iget-object v12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v13, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v12

    if-nez v12, :cond_b2

    :cond_ac
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_b2
    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8, v11, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v8

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v12}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v12

    if-ne v11, v12, :cond_ce

    const/4 v11, 0x1

    goto :goto_cf

    :cond_ce
    move v11, v9

    :goto_cf
    if-nez v11, :cond_12a

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v11

    if-nez v11, :cond_fc

    aget v11, v1, v9

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v12

    div-int/2addr v3, v0

    add-int/2addr v12, v3

    int-to-float v12, v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v11

    float-to-int v11, v12

    aput v11, v2, v9

    const/4 v11, 0x1

    aget v1, v1, v11

    int-to-float v1, v1

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v12

    add-int/2addr v12, v3

    int-to-float v3, v12

    mul-float/2addr v3, v8

    add-float/2addr v3, v1

    float-to-int v1, v3

    aput v1, v2, v11

    goto :goto_137

    :cond_fc
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v3

    aget v11, v1, v9

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    aput v11, v2, v9

    const/4 v11, 0x1

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, v2, v11

    goto :goto_137

    :cond_12a
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v8, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v8, v0

    aput v8, v2, v9

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr v3, v0

    aput v3, v2, v1

    :goto_137
    new-array v1, v0, [F

    new-array v3, v0, [F

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v8

    if-nez v8, :cond_185

    const-string v0, "getBackgroundAnimator -- nextPage = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPageInTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_185
    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v11, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v8, v11, v1, v9}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v11, v1, v9

    iget v12, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    aput v11, v1, v9

    const/4 v11, 0x1

    aget v12, v1, v11

    iget v8, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v8, v8

    add-float/2addr v12, v8

    aput v12, v1, v11

    aget v8, v1, v9

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v8

    aput v12, v3, v9

    aget v1, v1, v11

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v13

    add-float/2addr v8, v1

    aput v8, v3, v11

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_1ed

    aget v1, v2, v9

    int-to-float v1, v1

    aget v8, v3, v9

    sub-float/2addr v1, v8

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-float v2, v2

    aget v11, v3, v8

    sub-float/2addr v2, v11

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    aget v12, v3, v9

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    aget v3, v3, v8

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_218

    :cond_1ed
    const/4 v1, 0x1

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v8

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v11

    aget v12, v2, v9

    int-to-float v12, v12

    aget v13, v3, v9

    sub-float/2addr v12, v13

    aget v2, v2, v1

    int-to-float v2, v2

    aget v13, v3, v1

    sub-float/2addr v2, v13

    iget-object v13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    aget v14, v3, v9

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    aget v1, v3, v1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    move v3, v2

    move v1, v8

    move v2, v11

    move v8, v12

    :goto_218
    const-string v11, "getBackgroundAnimator, initialTranslationX:"

    const-string v12, ", initialTranslationY:"

    const-string v13, ", finalTranslationX:"

    invoke-static {v11, v1, v12, v2, v13}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", finalTranslationY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_23b

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    goto :goto_246

    :cond_23b
    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderItemRoomInProgress()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_246
    new-array v2, v0, [F

    fill-array-data v2, :array_2ac

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v10, v1

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_25b

    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_25d

    :cond_25b
    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_25d
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_267

    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_269

    :cond_267
    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_269
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;

    invoke-direct {v3, p0, v7, v6, v5}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;ZILcom/android/launcher3/Workspace;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;

    invoke-direct {v3, p0, v7, v6, v5}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;ZILcom/android/launcher3/Workspace;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_285

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_286

    :cond_285
    const/4 v3, 0x0

    :goto_286
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [F

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p0, :cond_294

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_294
    aput v3, v6, v9

    const-string p0, "alpha"

    invoke-static {v4, p0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    div-int/2addr v1, v0

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p0, v0, v9

    const/4 p0, 0x1

    aput-object v2, v0, p0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v5

    :array_2ac
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getChildrenAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 44

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    instance-of v3, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v3, :cond_16

    iget v0, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    :cond_16
    move v9, v0

    iget-object v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v11, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    const-string v0, "getChildrenAnimatorSet, folderIconWidth:"

    const-string v2, ", iconSize:"

    const-string v3, ", cellWidth:"

    invoke-static {v0, v1, v2, v9, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cellHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "OplusFolderAnimationManager"

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v0, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_47

    iget v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    goto :goto_52

    :cond_47
    iget v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v0, v0

    iget-object v2, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderItemRoomInProgress()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    :goto_52
    move v14, v0

    iget-boolean v0, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_5c

    :cond_5a
    sget-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_5c
    move-object v15, v0

    iget-object v0, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleBoundOffset()F

    move-result v16

    invoke-virtual {v7}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleBoundBase()F

    move-result v17

    iget-object v0, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->snapToTargetIfNeed()V

    iget-object v0, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_7d

    return-object v0

    :cond_7d
    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    if-nez v5, :cond_84

    return-object v0

    :cond_84
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->checkCurrentPreviewParams()V

    iget-object v2, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v2

    if-eqz v2, :cond_b7

    iget-object v1, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v4, v2

    goto :goto_bb

    :cond_b7
    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move-object v1, v2

    :goto_bb
    iget-object v2, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    move-object/from16 v18, v13

    iget-object v13, v8, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v13, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v13

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move-object/from16 v19, v15

    const-string v15, "getChildrenAnimatorSet -- childCount = "

    invoke-static {v15, v2, v12}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderTransDistance(Landroid/graphics/Rect;)[I

    move-result-object v1

    const/4 v15, 0x0

    if-nez v1, :cond_de

    const/16 v20, 0x0

    goto :goto_e0

    :cond_de
    aget v20, v1, v15

    :goto_e0
    move/from16 v15, v20

    const/16 v20, 0x1

    if-nez v1, :cond_ea

    move/from16 v22, v14

    const/4 v14, 0x0

    goto :goto_f0

    :cond_ea
    aget v21, v1, v20

    move/from16 v22, v14

    move/from16 v14, v21

    :goto_f0
    if-nez v1, :cond_f5

    const/16 v21, 0x0

    goto :goto_f9

    :cond_f5
    const/16 v21, 0x2

    aget v21, v1, v21

    :goto_f9
    move-object/from16 v23, v12

    move/from16 v12, v21

    const/16 v21, 0x3

    if-nez v1, :cond_103

    const/4 v1, 0x0

    goto :goto_105

    :cond_103
    aget v1, v1, v21

    :goto_105
    aget v0, v0, v20

    int-to-float v0, v0

    move/from16 v21, v1

    iget-object v1, v8, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    const v24, 0x3f0ccccd  # 0.55f

    mul-float v1, v1, v24

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11b

    move/from16 v24, v20

    goto :goto_11e

    :cond_11b
    const/4 v0, 0x0

    move/from16 v24, v0

    :goto_11e
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v8

    :goto_121
    if-ge v1, v2, :cond_433

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v8, v25

    check-cast v8, Lcom/android/launcher3/BubbleTextView;

    move-object/from16 v25, v5

    instance-of v5, v8, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v5, :cond_143

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->hasShadowLayer()Z

    move-result v26

    if-eqz v26, :cond_13e

    invoke-virtual {v5}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_13e
    iget-object v5, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-virtual {v5, v1, v8}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->addPreviewDrawableToBubble(ILcom/android/launcher3/BubbleTextView;)V

    :cond_143
    const/4 v5, -0x1

    move/from16 v26, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v5, v2}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v2

    if-nez v2, :cond_175

    move/from16 v41, v3

    move/from16 v33, v4

    move-object/from16 v35, v6

    move/from16 v34, v9

    move/from16 v31, v11

    move/from16 v27, v12

    move/from16 v38, v14

    move/from16 v36, v15

    move-object/from16 v3, v19

    move/from16 v28, v21

    move/from16 v30, v22

    move-object/from16 v29, v23

    move-object/from16 v14, v25

    move-object/from16 v6, p0

    move/from16 v23, v1

    move-object/from16 v25, v7

    move/from16 v22, v10

    move/from16 v19, v13

    move-object/from16 v7, v18

    goto/16 :goto_40b

    :cond_175
    iget v5, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    move-object/from16 v27, v7

    iget v7, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    move-object/from16 v28, v8

    check-cast v28, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/OplusBubbleTextView;->isLayoutHorizontal()Z

    move-result v28

    if-eqz v28, :cond_1a3

    move/from16 v28, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v1, v1, v29

    int-to-float v1, v1

    move/from16 v29, v12

    iget v12, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    goto :goto_1a8

    :cond_1a3
    move/from16 v28, v1

    move/from16 v29, v12

    const/4 v1, 0x0

    :goto_1a8
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/CellLayout$LayoutParams;

    move/from16 v30, v14

    iget-object v14, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v31, 0x40000000  # 2.0f

    div-float v14, v14, v31

    move/from16 v32, v15

    int-to-float v15, v10

    div-float v15, v15, v31

    sub-float/2addr v14, v15

    iget v15, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    iget-object v15, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    int-to-float v15, v4

    move/from16 v33, v4

    int-to-float v4, v9

    move/from16 v34, v9

    iget v9, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v4, v9

    sub-float/2addr v15, v4

    div-float v15, v15, v31

    add-float v15, v15, v16

    sub-float/2addr v15, v5

    mul-float/2addr v15, v13

    sub-float/2addr v14, v15

    int-to-float v1, v1

    sub-float/2addr v14, v1

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v31

    int-to-float v4, v11

    div-float v5, v4, v31

    sub-float/2addr v1, v5

    iget v5, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    int-to-float v5, v3

    div-float v5, v5, v31

    iget v9, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v4, v9

    div-float v4, v4, v31

    sub-float/2addr v5, v4

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v17

    iget v9, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v4, v9

    add-float/2addr v4, v5

    add-float v4, v4, v16

    sub-float/2addr v4, v7

    mul-float/2addr v4, v13

    sub-float/2addr v1, v4

    iget-boolean v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v4, :cond_294

    move/from16 v12, v32

    int-to-float v4, v12

    add-float/2addr v4, v14

    move/from16 v15, v30

    int-to-float v5, v15

    add-float/2addr v5, v1

    move/from16 v7, v29

    move/from16 v29, v3

    int-to-float v3, v7

    move/from16 v30, v3

    move/from16 v3, v21

    move/from16 v21, v4

    int-to-float v4, v3

    mul-float/2addr v9, v13

    if-eqz v24, :cond_23c

    div-int/lit8 v31, v28, 0x3

    goto :goto_24a

    :cond_23c
    add-int/lit8 v31, v26, -0x1

    div-int/lit8 v31, v31, 0x3

    mul-int/lit8 v31, v31, 0x3

    add-int/lit8 v31, v31, 0x3

    sub-int v31, v31, v28

    add-int/lit8 v31, v31, -0x1

    div-int/lit8 v31, v31, 0x3

    :goto_24a
    mul-int/lit8 v31, v31, 0x11

    move/from16 v32, v4

    move/from16 v4, v31

    move/from16 v31, v5

    int-to-long v4, v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v35

    if-eqz v35, :cond_281

    const-string v35, "getChildrenAnimatorSet: "

    move-wide/from16 v36, v4

    invoke-static/range {v35 .. v35}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const-string v5, "   scale:"

    move-object/from16 v35, v6

    const-string v6, "    startTransX:"

    invoke-static {v4, v2, v5, v13, v6}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   startTransY:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v23

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_287

    :cond_281
    move-wide/from16 v36, v4

    move-object/from16 v35, v6

    move-object/from16 v6, v23

    :goto_287
    const/high16 v1, 0x3f800000  # 1.0f

    move/from16 v4, v21

    move/from16 v14, v30

    move/from16 v5, v31

    move/from16 v21, v1

    move-wide/from16 v1, v36

    goto :goto_2e5

    :cond_294
    move-object/from16 v35, v6

    move-object/from16 v6, v23

    move/from16 v7, v29

    move/from16 v15, v30

    move/from16 v12, v32

    move/from16 v29, v3

    move/from16 v3, v21

    invoke-virtual {v8}, Landroid/widget/TextView;->getTranslationX()F

    move-result v4

    int-to-float v5, v12

    add-float/2addr v4, v5

    int-to-float v5, v7

    add-float/2addr v14, v5

    invoke-virtual {v8}, Landroid/widget/TextView;->getScaleX()F

    move-result v9

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v2, v13

    const-wide/16 v30, 0x0

    iget-object v5, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    move/from16 v21, v2

    iget-object v2, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5, v2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v2

    if-eqz v2, :cond_2d8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTranslationY()F

    move-result v2

    int-to-float v5, v15

    add-float/2addr v2, v5

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr v2, v5

    move/from16 v23, v2

    int-to-float v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v1, v5

    move/from16 v2, v23

    goto :goto_2e0

    :cond_2d8
    invoke-virtual {v8}, Landroid/widget/TextView;->getTranslationY()F

    move-result v2

    int-to-float v5, v15

    add-float/2addr v2, v5

    int-to-float v5, v3

    add-float/2addr v1, v5

    :goto_2e0
    move/from16 v32, v1

    move v5, v2

    move-wide/from16 v1, v30

    :goto_2e5
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    move/from16 v23, v3

    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move-object/from16 v30, v6

    const/4 v6, 0x0

    if-eqz v3, :cond_30b

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    move-object/from16 v3, v25

    move/from16 v25, v7

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v0, v8, v7, v6}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->onAnimateUpdate(Lcom/android/launcher3/BubbleTextView;IF)V

    invoke-virtual {v8, v6}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    goto :goto_30f

    :cond_30b
    move-object/from16 v3, v25

    move/from16 v25, v7

    :goto_30f
    const/4 v7, 0x2

    new-array v0, v7, [F

    fill-array-data v0, :array_436

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v31, v11

    move/from16 v6, v22

    move/from16 v22, v10

    int-to-long v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v36, v12

    move-object/from16 v12, v19

    invoke-virtual {v0, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move/from16 v19, v13

    new-instance v13, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;

    const/16 v37, 0x0

    move/from16 v38, v15

    move-object v15, v0

    move-object v0, v13

    move-wide/from16 v39, v1

    move/from16 v42, v28

    move/from16 v28, v23

    move/from16 v23, v42

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v41, v29

    move-object/from16 v29, v3

    move v3, v4

    move v4, v14

    move-object/from16 v14, v29

    move-object/from16 v29, v30

    move/from16 v30, v6

    move/from16 v6, v32

    move-object/from16 v32, v12

    move v12, v7

    move-object/from16 v42, v27

    move/from16 v27, v25

    move-object/from16 v25, v42

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFFFLcom/android/launcher3/ShortcutAndWidgetContainer;)V

    invoke-virtual {v15, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v12, [F

    aput v9, v0, v37

    aput v21, v0, v20

    const-string/jumbo v1, "scaleX"

    invoke-static {v8, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v3, v32

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v12, [F

    aput v9, v4, v37

    aput v21, v4, v20

    const-string/jumbo v5, "scaleY"

    invoke-static {v8, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;

    move-object/from16 v6, p0

    invoke-direct {v5, v6, v14, v8}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/BubbleTextView;)V

    move-object/from16 v7, v18

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v5, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v5, :cond_3b3

    new-array v5, v12, [Ljava/lang/Float;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v37

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v20

    goto :goto_3c5

    :cond_3b3
    const/4 v5, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    new-array v10, v12, [Ljava/lang/Float;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v10, v37

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v10, v20

    move-object v5, v10

    :goto_3c5
    instance-of v9, v8, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v9, :cond_3fe

    sget-object v9, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    new-array v10, v12, [F

    aget-object v11, v5, v37

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v10, v37

    aget-object v5, v5, v20

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v10, v20

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x103

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->FLODER_OPEN_TEXT_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v15, v1, v37

    aput-object v0, v1, v20

    aput-object v4, v1, v12

    const/4 v0, 0x3

    aput-object v5, v1, v0

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_40a

    :cond_3fe
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v15, v1, v37

    aput-object v0, v1, v20

    aput-object v4, v1, v12

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_40a
    move-object v0, v6

    :goto_40b
    add-int/lit8 v1, v23, 0x1

    move-object v8, v6

    move-object/from16 v18, v7

    move-object v5, v14

    move/from16 v13, v19

    move/from16 v10, v22

    move-object/from16 v7, v25

    move/from16 v2, v26

    move/from16 v12, v27

    move/from16 v21, v28

    move-object/from16 v23, v29

    move/from16 v22, v30

    move/from16 v11, v31

    move/from16 v4, v33

    move/from16 v9, v34

    move-object/from16 v6, v35

    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v19, v3

    move/from16 v3, v41

    goto/16 :goto_121

    :cond_433
    move-object/from16 v7, v18

    return-object v7

    :array_436
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getFolderBackgroundAnimator()Landroid/animation/Animator;
    .registers 22

    move-object/from16 v15, p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    iget-object v4, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v3

    iget-object v2, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIconCenterLocation()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundLocation()[I

    move-result-object v4

    aget v4, v4, v2

    sub-int v7, v0, v4

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v4, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v4}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_5c

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIconCenterLocation()[I

    move-result-object v0

    aget v0, v0, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundLocation()[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v0, v5

    int-to-float v0, v0

    sget v5, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_69

    :cond_5c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIconCenterLocation()[I

    move-result-object v0

    aget v0, v0, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundLocation()[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v0, v5

    :goto_69
    move v8, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v14, v0, Lcom/android/launcher3/folder/OplusFolder;->mContentAnimationBackground:Landroid/widget/ImageView;

    invoke-direct {v15, v14}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->updateAnimColorFilter(Landroid/widget/ImageView;)V

    invoke-virtual {v14}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {v14}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v11, v0, 0x2

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    invoke-virtual {v14}, Landroid/widget/ImageView;->getTop()I

    move-result v12

    invoke-virtual {v14}, Landroid/widget/ImageView;->getRight()I

    move-result v13

    invoke-virtual {v14}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v6, v12, v13, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    iget-boolean v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_af

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    sub-int v2, v12, v9

    sub-int v6, v13, v10

    add-int v1, v12, v9

    add-int v4, v13, v10

    invoke-virtual {v0, v2, v6, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_af
    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_db

    :cond_ce
    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_db
    move v2, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderBackgroundRoomInProgress()F

    move-result v0

    iget-boolean v1, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move/from16 v18, v4

    if-eqz v1, :cond_10b

    iget v4, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    move/from16 v20, v13

    move-object/from16 v19, v14

    goto :goto_114

    :cond_10b
    move/from16 v20, v13

    move-object/from16 v19, v14

    iget v4, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    :goto_114
    int-to-long v13, v4

    if-eqz v1, :cond_11a

    sget-object v4, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_11c

    :cond_11a
    sget-object v4, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_11c
    if-eqz v1, :cond_129

    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_16c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_139

    :cond_129
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v16, 0x0

    aput v0, v1, v16

    const/4 v0, 0x0

    const/16 v16, 0x1

    aput v0, v1, v16

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_139
    move-object v1, v0

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v14, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;

    move-object v0, v14

    move-object v13, v1

    move-object/from16 v1, p0

    move/from16 v16, v18

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    move-object v15, v13

    move/from16 v13, v20

    move-object/from16 v17, v15

    move-object/from16 v16, v19

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;IFIFFIIIIIIILandroid/widget/ImageView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/folder/OplusFolderAnimationManager$9;

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$9;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_16c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getFolderBackgroundLocation()[I
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_50

    const-string v0, "getBackgroundAnimator -- nextPage = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPageInTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderAnimationManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_50
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v4, v1, v5

    iget v6, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    aput v4, v1, v5

    const/4 v4, 0x1

    aget v6, v1, v4

    iget v3, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    aput v6, v1, v4

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentAnimationBackground:Landroid/widget/ImageView;

    aget v3, v1, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aput v3, v2, v5

    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v2, v4

    return-object v2
.end method

.method private getFolderIconCenterLocation()[I
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    const/4 v1, 0x2

    new-array v4, v1, [I

    if-nez v0, :cond_9f

    new-array v0, v1, [I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v5

    aget v6, v0, v3

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    float-to-int v6, v7

    aput v6, v4, v3

    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v4, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_ab

    const-string v1, "getBackgroundAnimator, folderIconPos:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", left:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offsetX:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offsetY:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderAnimationManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :cond_9f
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v0, v1

    aput v0, v4, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr p0, v1

    aput p0, v4, v2

    :cond_ab
    :goto_ab
    return-object v4
.end method

.method private getFolderTransDistance(Landroid/graphics/Rect;)[I
    .registers 13

    const/4 v0, 0x4

    new-array v0, v0, [I

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_13

    :cond_e
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    move p1, v1

    :goto_13
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_25

    move v2, v4

    goto :goto_26

    :cond_25
    move v2, v5

    :goto_26
    const/4 v3, 0x2

    new-array v6, v3, [I

    const-string v7, "OplusFolderAnimationManager"

    if-nez v2, :cond_b0

    new-array v2, v3, [I

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8, v9, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v8

    aget v9, v2, v5

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v10

    div-int/2addr v1, v3

    add-int/2addr v1, v10

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v9

    float-to-int v1, v1

    aput v1, v6, v5

    aget v1, v2, v4

    int-to-float v1, v1

    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v9

    div-int/2addr p1, v3

    add-int/2addr p1, v9

    int-to-float p1, p1

    mul-float/2addr p1, v8

    add-float/2addr p1, v1

    float-to-int p1, p1

    aput p1, v6, v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_bc

    const-string p1, "getBackgroundAnimator, folderIconPos:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", left:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetX:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_b0
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v1, v3

    aput v1, v6, v5

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr p1, v3

    aput p1, v6, v4

    :cond_bc
    :goto_bc
    new-array p1, v3, [F

    new-array v1, v3, [I

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-nez v2, :cond_10a

    const-string p1, "getBackgroundAnimator -- nextPage = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentPage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pageCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isPageInTransition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_10a
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v2, v7, p1, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v7, p1, v5

    iget v8, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, p1, v5

    aget v7, p1, v4

    iget v2, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v2, v2

    add-float/2addr v7, v2

    aput v7, p1, v4

    aget v2, p1, v5

    iget-object v7, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/2addr v7, v3

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v1, v5

    aget p1, p1, v4

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    aput p1, v1, v4

    iget-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v2, 0x3

    if-eqz p1, :cond_15d

    aget p0, v6, v5

    aget p1, v1, v5

    sub-int/2addr p0, p1

    aput p0, v0, v5

    aget p0, v6, v4

    aget p1, v1, v4

    sub-int/2addr p0, p1

    aput p0, v0, v4

    aput v5, v0, v3

    aput v5, v0, v2

    goto :goto_17d

    :cond_15d
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, v5

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    aput p0, v0, v4

    aget p0, v6, v5

    aget p1, v1, v5

    sub-int/2addr p0, p1

    aput p0, v0, v3

    aget p0, v6, v4

    aget p1, v1, v4

    sub-int/2addr p0, p1

    aput p0, v0, v2

    :goto_17d
    return-object v0
.end method

.method private getFolderWarpperLocation()[I
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_51

    const-string v0, "getBackgroundAnimator -- nextPage = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPageInTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderAnimationManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_51
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v4, v1, v5

    iget v6, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    aput v4, v1, v5

    const/4 v4, 0x1

    aget v6, v1, v4

    iget v3, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    aput v6, v1, v4

    aget v3, v1, v5

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aput v3, v2, v5

    aget v1, v1, v4

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v2, v4

    return-object v2
.end method

.method private updateAnimColorFilter(Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    check-cast p0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mColorFilterWhenBright:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1d

    :cond_16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_1d
    return-void
.end method


# virtual methods
.method public createFolderBackgroundAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_13
    const-string v0, "createFolderBackgroundAnimatorSet isShow"

    const-string v2, "OplusFolderAnimationManager"

    invoke-static {v0, p1, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_37

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_37

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-object v1

    :cond_37
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_4c

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_4c
    aput v0, v3, v4

    const-string v0, "alpha"

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_77

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->updateBackgroundMargin()V

    goto :goto_7c

    :cond_77
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_7c
    :goto_7c
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v1
.end method

.method public getAnimator()Landroid/animation/AnimatorSet;
    .registers 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-static {v2, v3}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightFolderContentAnimation(ZLcom/android/launcher3/folder/Folder;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_a0

    :cond_1a
    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v3, 0x1

    if-nez v2, :cond_76

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v2

    if-gt v2, v3, :cond_76

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v2, :cond_76

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v4, :cond_6c

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v2

    if-ne v2, v3, :cond_6c

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getChildrenAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5c
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_a0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_a0

    :cond_6c
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-static {v2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getCloseFolderDisbandAnimation(Lcom/android/launcher3/folder/Folder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_a0

    :cond_76
    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getChildrenAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_91
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_a0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_a0
    :goto_a0
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_b7

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_c3

    :cond_b7
    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_c3

    :cond_ba
    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_c1

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_c3

    :cond_c1
    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_c3
    new-instance v3, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0
.end method

.method public isOpening()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    return p0
.end method
