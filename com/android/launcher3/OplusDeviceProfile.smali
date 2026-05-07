.class public Lcom/android/launcher3/OplusDeviceProfile;
.super Lcom/android/launcher3/DeviceProfile;
.source ""


# static fields
.field public static final DEFAULT_DENSITYDPI_TABLET:I = 0x168

.field private static final FOLD_WORKSPACE_PADDING_LRDP:F = 8.0f

.field public static final ICON_IMAGE_SIZE_50:I = 0x32

.field public static final MAX_ICON_IMAGE_SIZE:I = 0x38

.field public static final MIN_ICON_IMAGE_SIZE:I = 0x28

.field private static final NUM_2_0_5:F = 2.05f

.field private static final NUM_2_1_5:F = 2.15f

.field private static final NUM_FOUR:I = 0x4

.field private static final NUM_SIX:I = 0x6


# instance fields
.field public final isPhysicalLandscape:Z

.field public mAllAppsIconTextSizeBasePx:F

.field private mCellLayoutPaddingPx:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mDensity:F

.field private mDeviceProfileContext:Landroid/content/Context;

.field public mFolderBaselineIconScale:F

.field public mFolderBaselineIconSize:I

.field public mFolderChildIconPaddingTopPx:I

.field public mFolderPageSpacingPx:I

.field public mHotseatMarginBottomPx:I

.field public mIconTextHeight:I

.field public mIconTextSizeBasePx:I

.field public mIconTextSizePxForSuperPower:I

.field public mIconTextSizeScale:F

.field public mIconVisiableSizePx:I

.field public mIsNarBarShowingInNavMode:Z

.field public mIsSimpleMode:Z

.field public mNavBarHeight:I

.field public mNumFolderPreview:I

.field public mPreviewPadding:I

.field public mStyleBoundFactor:F

.field public mStyleBoundOffset:I

.field private mStyleIconSize:I

.field public mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

.field private final mSystemWindowRect:Landroid/graphics/Rect;

.field public mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

.field public mWorkspaceIconPaddingTopPx:I

.field private final mWorkspaceInset:Landroid/graphics/Rect;

.field private mWorkspacePaddingTopPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;ZZZZ)V
    .registers 16

    invoke-direct/range {p0 .. p8}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;ZZZZ)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mSystemWindowRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceInset:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000  # 1.0f

    iput p3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeScale:F

    new-instance p3, Lcom/android/launcher3/icons/OplusDotRenderer;

    const/16 p4, 0x64

    invoke-static {p4}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    iget v5, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    iget v6, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/icons/OplusDotRenderer;-><init>(Landroid/content/Context;Landroid/graphics/Path;IIFI)V

    iput-object p3, p0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    sget-boolean p3, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p3, :cond_58

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p3

    if-nez p3, :cond_44

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p3

    if-eqz p3, :cond_58

    :cond_44
    sget-object p3, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p3}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result p3

    if-eqz p3, :cond_58

    iget p3, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 p4, 0x6

    if-ne p3, p4, :cond_58

    iget-object p3, p0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    check-cast p3, Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-virtual {p3}, Lcom/android/launcher3/icons/OplusDotRenderer;->changeDotBranchSearchSupport()V

    :cond_58
    new-instance p3, Lcom/android/launcher/SwitchStateRenderer;

    iget p4, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget p5, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-direct {p3, p1, p4, p5}, Lcom/android/launcher/SwitchStateRenderer;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    iget p2, p2, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    iput p2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mNumFolderPreview:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusDeviceProfile;->updateFolderIconLayoutRule(Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->isPhysicalLandscape:Z

    return-void
.end method

.method public static calculateHotseatCellWidth(III)I
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result v0

    sub-int/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p1, p2

    sub-int/2addr p0, p1

    div-int/2addr p0, p2

    return p0

    :cond_11
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    div-int/2addr p0, p2

    return p0
.end method

.method public static calculateTextHeightIgnoreFontPadding(F)I
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private updateFolderIconLayoutRule(Landroid/content/res/Resources;)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const v3, 0x7f070628

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const v4, 0x7f070627

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mPreviewPadding:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mNumFolderPreview:I

    add-int/lit8 v0, p1, -0x1

    mul-int/2addr v0, v3

    sub-int/2addr v1, v0

    div-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mFolderBaselineIconSize:I

    int-to-float p1, v1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mFolderBaselineIconScale:F

    return-void
.end method

.method private updateOplusFolderCellSize(FLandroid/content/res/Resources;)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    if-nez v1, :cond_19

    new-instance v1, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    invoke-direct {v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->folderChildIconPaddingTopDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mFolderChildIconPaddingTopPx:I

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->landscapeFolderPageMarginLRDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_4d

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->folderPageMarginLRDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    :goto_4d
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->iconDrawablePaddingDp:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    sub-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    div-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_84

    sget v3, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    div-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    :cond_84
    iget-boolean p1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_bb

    const p1, 0x7f07063c

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0705fe

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    const p1, 0x7f070626

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    const v0, 0x7f070621

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    const p1, 0x7f070d75

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    div-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    goto/16 :goto_189

    :cond_bb
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_dc

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result p1

    if-eqz p1, :cond_c8

    goto :goto_f9

    :cond_c8
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInSmall()Z

    move-result p1

    if-eqz p1, :cond_f9

    sget-object p1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/FontManager;

    invoke-virtual {p1}, Lcom/android/common/util/FontManager;->getTextScalePosForFolderTextHeight()I

    goto :goto_f9

    :cond_dc
    sget-boolean p1, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz p1, :cond_f5

    sget-object p1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/FontManager;

    iget p1, p1, Lcom/android/common/util/FontManager;->mTextScalePos:I

    if-le p1, v2, :cond_f5

    const p1, 0x7f07057c

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto :goto_f9

    :cond_f5
    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    :cond_f9
    :goto_f9
    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mFolderChildIconPaddingTopPx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    add-int/2addr p1, v0

    const v0, 0x7f0705fd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_125

    iget-object p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    :cond_125
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_189

    const-string p1, "folderCellWidthPx-HeightPx "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", folderChildIconSizePx = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", folderChildDrawablePaddingPx = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mTextScalePos = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p2

    if-eqz p2, :cond_16e

    sget-object p2, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    invoke-virtual {p0}, Lcom/android/common/util/FontManager;->getTextScalePosForFolderTextHeight()I

    move-result p0

    goto :goto_17a

    :cond_16e
    sget-object p2, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextScalePos:I

    :goto_17a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", hasNavigationBar = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    const-string p2, "DeviceProfile"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_189
    :goto_189
    return-void
.end method


# virtual methods
.method public adjustToHideWorkspaceLabelsForColor()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    :cond_10
    return-void
.end method

.method public allAppsHasDifferentNumColumns()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public autoResizeAllAppsCells()V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    int-to-float v4, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_20

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v3

    :cond_20
    add-int/2addr v1, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    return-void
.end method

.method public copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDeviceProfile;->getHotseatLayoutPaddingWindowInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getHotseatLayoutPaddingWindowInsets()Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const-string v1, "Hotseat"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_af

    :cond_14
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    int-to-float v0, v0

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v3

    if-eqz v3, :cond_9c

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0706f6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0706f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result v0

    add-int/2addr v0, v3

    sget v3, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v0, v3, 0x2

    const-string v3, "getHotseatLayoutPaddingWindowInsets - calculate padding on expanded screen , screen width : "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    const-string v5, " paddingHorizontal : "

    invoke-static {v3, v4, v5, v0, v1}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_96

    :cond_7f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0706f5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_96
    :goto_96
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_af

    :cond_9c
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-virtual {v3, v5, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_af
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-eqz v0, :cond_10b

    const-string v0, "hotseat - hotseatBarSidePaddingStartPx : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hotseatBarSidePaddingEndPx : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " inv.numColumns : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " inv.numShownHotseatIcons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " widthPx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isVerticalBarLayout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSeascape: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getHotseatLayoutPadding"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getIconTextSizePxForSuperPower()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizePxForSuperPower:I

    return p0
.end method

.method public getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 7

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/high16 v1, 0x41000000  # 8.0f

    iput v1, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspacePaddingLRDp:F

    :cond_15
    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p0, v0}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/launcher3/OplusDeviceProfile;->calculateTextHeightIgnoreFontPadding(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceIconPaddingTopPx:I

    goto :goto_4f

    :cond_41
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    :goto_4f
    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5d

    invoke-virtual {p1}, Lcom/android/launcher3/OplusDeviceProfile;->adjustToHideWorkspaceLabelsForColor()V

    :cond_5d
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-string v2, "getMultiWindowProfile(), availablePx="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", availableSize="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", appWidgetScale="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DeviceProfile"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_103

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p0

    if-eqz p0, :cond_d3

    const/high16 p0, 0x3fc00000  # 1.5f

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_103

    :cond_d3
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_103

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iget p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    :cond_103
    :goto_103
    iget-object p0, p1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    return-object p1
.end method

.method public getSystemWindowRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mSystemWindowRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getUnifyWidgetCellSize(IIII)Landroid/graphics/Point;
    .registers 11

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_38

    iget v3, v1, Landroid/graphics/Point;->x:I

    const v4, 0x7f070d6e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Point;->y:I

    goto :goto_5a

    :cond_38
    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, v1, Landroid/graphics/Point;->x:I

    const v4, 0x7f070d6f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    const v4, 0x7f070d70

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->y:I

    :cond_5a
    :goto_5a
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr p3, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {p3, v3, p1}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result p3

    iput p3, v0, Landroid/graphics/Point;->x:I

    iget p3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p4, p3

    iget-object p3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p3

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p4, p0, p2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_10a

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p3

    if-eqz p3, :cond_c0

    const/4 p0, 0x4

    const/4 p3, 0x5

    if-ne p1, p3, :cond_9d

    const p1, 0x7f070010

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    goto :goto_a8

    :cond_9d
    if-ne p1, p0, :cond_a8

    const p1, 0x7f07000f

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    :cond_a8
    :goto_a8
    if-ne p2, p0, :cond_b4

    const p0, 0x7f070014

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_10a

    :cond_b4
    if-ne p2, p3, :cond_10a

    const p0, 0x7f070015

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_10a

    :cond_c0
    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_10a

    sget p0, Lcom/android/common/config/ScreenInfo;->densityDpi:I

    const p1, 0x7f070013

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    const p1, 0x7f070018

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    const/16 p1, 0x168

    if-eq p0, p1, :cond_10a

    iget p2, v0, Landroid/graphics/Point;->x:I

    if-ge p0, p1, :cond_ea

    const p3, 0x7f070012

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_f1

    :cond_ea
    const p3, 0x7f070011

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_f1
    add-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    if-ge p0, p1, :cond_100

    const p0, 0x7f070017

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_107

    :cond_100
    const p0, 0x7f070016

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_107
    add-int/2addr p2, p0

    iput p2, v0, Landroid/graphics/Point;->y:I

    :cond_10a
    :goto_10a
    return-object v0
.end method

.method public getWorkspaceInsets()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceInset:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hideWorkspaceLabelsIfNotEnoughSpace()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    int-to-float v0, v0

    const-class v1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p0, v1}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/android/launcher3/OplusDeviceProfile;->calculateTextHeightIgnoreFontPadding(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceIconPaddingTopPx:I

    goto :goto_35

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    :goto_35
    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_51

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const/high16 v1, 0x3f900000  # 1.125f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDeviceProfile;->autoResizeAllAppsCells()V

    :cond_51
    invoke-virtual {p0}, Lcom/android/launcher3/OplusDeviceProfile;->adjustToHideWorkspaceLabelsForColor()V

    return-void
.end method

.method public injectBuildDeviceProfileContext(Landroid/content/Context;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000  # 160.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    iput-object p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    goto :goto_54

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspacePaddingLRDp:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_52

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_52

    :cond_46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07022e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_53

    :cond_52
    :goto_52
    move v3, v2

    :goto_53
    add-int/2addr v1, v3

    :goto_54
    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_5e

    move v1, v2

    goto :goto_7c

    :cond_5e
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspacePaddingTop:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v3, :cond_7a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7b

    :cond_7a
    move v3, v2

    :goto_7b
    add-int/2addr v1, v3

    :goto_7c
    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspacePaddingTopPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->cellLayoutPadding:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mCellLayoutPaddingPx:I

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->isNarBarShowingInNavMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    const v1, 0x7f070620

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mFolderPageSpacingPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->landscapeIconDrawablePaddingPx:F

    goto :goto_b1

    :cond_ad
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->iconDrawablePaddingPx:F

    :goto_b1
    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->gridCellPadding:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatPaddingTopDp:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatPaddingBottomDp:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_e7

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    goto :goto_ee

    :cond_e7
    const v1, 0x7f0705b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_ee
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    goto :goto_fa

    :cond_f9
    move v0, v2

    :goto_fa
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    add-int/2addr v0, v1

    goto :goto_123

    :cond_117
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatHeightDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    :goto_123
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->allAppsCellHeightDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->iconTextHeightDp:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/FontManager;

    iget p1, p1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeScale:F

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_165

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_161

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_161
    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    :cond_165
    return-void
.end method

.method public injectBuildDeviceProfileDisplayInfo(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;)V
    .registers 5

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->updateDefaultDisplayContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget-object p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    iget p2, p0, Landroid/util/DisplayMetrics;->density:F

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v0, v1, :cond_21

    :cond_1b
    iput p2, p1, Landroid/util/DisplayMetrics;->density:F

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_21
    return-void
.end method

.method public injectUpdateAvailableDimensions(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/config/ScreenInfo;->isNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    add-int/2addr p1, p0

    :cond_21
    return p1
.end method

.method public injectUpdateAvailableFolderCellDimensions(I)[F
    .registers 6

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr p1, v2

    int-to-float p1, p1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget-object v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->landscapeFolderPageMarginLRDp:F

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, p0}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_35

    :cond_27
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget-object v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->folderPageMarginLRDp:F

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, p0}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p0

    :goto_35
    mul-int/2addr p0, v3

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, p1

    new-array p1, v3, [F

    const/4 v1, 0x0

    aput p0, p1, v1

    const/4 p0, 0x1

    aput v0, p1, p0

    return-object p1
.end method

.method public injectUpdateIconSize(FLandroid/content/res/Resources;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIsSimpleMode:Z

    iget v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeScale:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_24

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_24
    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    const-string v2, "DeviceProfile"

    if-eqz v0, :cond_5d

    :try_start_2c
    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerFromSimpleModeFirstEnter(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizePxForSuperPower:I

    iget-object v3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v3, v5, v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->setSuperPowerFromSimpleMode(Landroid/content/Context;ZI)V

    goto :goto_5d

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerFromSimpleModeTextSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizePxForSuperPower:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_48

    goto :goto_5d

    :catch_48
    move-exception v0

    const-string v3, "exception : "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v3, 0x43200000  # 160.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconVisualSize(Landroid/content/res/Resources;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    cmpl-float v0, p1, v4

    if-lez v0, :cond_86

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    int-to-float p2, p2

    div-float/2addr p2, p1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p2, v3}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p2

    invoke-static {v0, p2}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveIconSize(Landroid/content/Context;F)V

    :cond_86
    const-string/jumbo p2, "updateIconSize, isSimpleMode = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIsSimpleMode:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", iconTextSizePx = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIconTextSizePxForSuperPower = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizePxForSuperPower:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIconTextSizeScale = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeScale:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mIconTextSizeBasePx = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIconVisiableSizePx = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scale = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-boolean p1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_f4

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDeviceProfile;->allAppsHasDifferentNumColumns()Z

    move-result p1

    if-eqz p1, :cond_f4

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mAllAppsIconTextSizeBasePx:F

    goto :goto_f9

    :cond_f4
    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mAllAppsIconTextSizeBasePx:F

    :goto_f9
    return-void
.end method

.method public injectUpdateIconSizeByCellHeightPx(F)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspaceIconPaddingTopPx:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceIconPaddingTopPx:I

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatMarginBottomPx:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_bc

    const-string/jumbo v2, "updateIconSize, vertical = "

    const-string v3, ", mul = "

    invoke-static {v2, v0, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", wIPTPx = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceIconPaddingTopPx:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clHPx = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    const-string v3, ", clSY = "

    const-string v4, ", aWPx = "

    invoke-static {v2, p1, v3, v1, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", aHPx = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", textSize = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", textSp:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", inv.wo = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", metrics:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", inv.iconTextHeightDp = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->iconTextHeightDp:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mIconTextHeight = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    const-string v3, "DeviceProfile"

    invoke-static {v2, p1, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_bc
    if-nez v0, :cond_dc

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    if-le p1, v1, :cond_dc

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_dc

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceIconPaddingTopPx:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    :cond_dc
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_109

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-nez p1, :cond_f4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p1

    if-eqz p1, :cond_109

    :cond_f4
    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result p1

    if-eqz p1, :cond_109

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_109

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    :cond_109
    return-void
.end method

.method public injectUpdateIconSizeByStyleAttr(Landroid/content/res/Resources;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isSupportIconStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconVisualSize(Landroid/content/res/Resources;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleIconSize:I

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result p1

    if-eqz p1, :cond_31

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleIconSize:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    goto :goto_59

    :cond_31
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleIconSize:I

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float v2, p1, v0

    :cond_3f
    iput v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleIconSize:I

    sub-int/2addr p1, v0

    div-int/lit8 v1, p1, 0x2

    :cond_4e
    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    goto :goto_59

    :cond_51
    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleIconSize:I

    iput v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    iput v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    :goto_59
    const-string/jumbo p1, "mStyleBoundFactor = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundFactor:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mStyleBoundOffset = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mStyleIconSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleIconSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", iconSizePx = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIconVisiableSizePx = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", folderIconSizePx = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDensity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    const-string v0, "DeviceProfile"

    invoke-static {p1, p0, v0}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void
.end method

.method public injectUpdateWorkspacePadding(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    goto :goto_16

    :cond_12
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    :goto_16
    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_33

    :cond_1e
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-boolean v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    add-int/2addr v1, v0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    add-int/2addr v1, p0

    goto :goto_31

    :cond_2d
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    add-int v1, p0, v0

    :goto_31
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_33
    return-void
.end method

.method public injectUpdateWorkspacePaddingByPaddingBottom()I
    .registers 14

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/config/ScreenInfo;->isNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget-object v3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v4

    const-string v5, "DeviceProfile"

    if-eqz v4, :cond_a1

    iget-object v3, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070742

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x7f070743

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070746

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f070d71

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f070748

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f070747

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v10, p0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    sget-boolean v11, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v11, :cond_68

    add-int v11, v6, v7

    add-int/2addr v11, v9

    goto :goto_6c

    :cond_68
    add-int v11, v1, v4

    add-int/2addr v11, v8

    add-int/2addr v11, v3

    :goto_6c
    add-int/2addr v10, v11

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_b7

    const-string v11, "injectUpdateWorkspacePaddingByPaddingBottom additionalPaddingBottom: "

    const-string v12, ", hasNavigationBar: "

    invoke-static {v11, v10, v12}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", realNavigationBarHeight: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginBottomWithNav: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", indicatorMarginTopWithNav: "

    const-string v12, ", indicatorMarginBottomWithNav: "

    invoke-static {v11, v6, v1, v9, v12}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", marginBottomWithGestureNav: "

    const-string v6, ", indicatorMarginBottomWithGestureNav: "

    invoke-static {v11, v7, v1, v4, v6}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", indicatorMarginTopWithGestureNav: "

    invoke-static {v11, v8, v1, v3, v5}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_b7

    :cond_a1
    const v1, 0x7f070762

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sget-boolean v1, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-nez v1, :cond_b7

    iget v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    const v4, 0x7f070763

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v10, v3, v1

    :cond_b7
    :goto_b7
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_e2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-nez v1, :cond_cf

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v1

    if-eqz v1, :cond_e2

    :cond_cf
    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_e2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_e2
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    add-int/2addr v1, v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string/jumbo v2, "paddingBottom: "

    const-string v3, ", hotseatBarSizePx: "

    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", workspacePageIndicatorHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    const-string v3, ", additionalPaddingBottom: "

    const-string v4, ", navigationBarHeight: "

    invoke-static {v2, p0, v3, v10, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v2, v0, v5}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_10e
    return v1
.end method

.method public injectUpdateWorkspacePaddingByRect(Landroid/graphics/Rect;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspacePaddingTopPx:I

    invoke-virtual {p1, v0, p0, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public isPhysicalVerticalBarLayout()Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    return p0

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->isPhysicalLandscape:Z

    if-eqz v0, :cond_15

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    const-string v0, "DeviceProfile{largeScreen="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotationHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pyLand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", land="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seascape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ah="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDeviceProfile;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V
    .registers 13

    iget-object v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-eqz v2, :cond_c

    iget v3, v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    if-ne v3, p2, :cond_c

    iget v2, v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    if-eq v2, p1, :cond_81

    :cond_c
    iget-object v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusDeviceProfile;->injectBuildDeviceProfileContext(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAreaWidgetConfigIfNeed: col = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceProfile"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v2

    if-eqz v2, :cond_62

    new-instance v8, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget-object v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    int-to-float v3, p1

    int-to-float v4, p2

    iget v5, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    move-object v0, v8

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;-><init>(Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;II)V

    iput-object v8, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    goto :goto_81

    :cond_62
    new-instance v8, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget-object v2, p0, Lcom/android/launcher3/OplusDeviceProfile;->mDeviceProfileContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    int-to-float v3, p1

    int-to-float v4, p2

    iget v5, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    move-object v0, v8

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;-><init>(Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;II)V

    iput-object v8, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    :cond_81
    :goto_81
    return-void
.end method

.method public updateColorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWorkspaceInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mSystemWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateFolderCellSize(FLandroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusDeviceProfile;->updateOplusFolderCellSize(FLandroid/content/res/Resources;)V

    return-void
.end method
