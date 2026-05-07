.class public final Lcom/android/launcher3/folder/big/SizeSpacingConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;
    }
.end annotation


# static fields
.field public static final COLUMN:I = 0x3

.field public static final Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

.field public static final FACTOR:F = 0.33333334f

.field private static MAX_PREVIEW:I = 0x0

.field public static final PHONE_COL_5:I = 0x5

.field public static final ROW:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SizeSpacingConfig"

.field public static final TOTAL_PERCENT:I = 0x64


# instance fields
.field private final bubbleIconSize:I

.field private final cellCol:I

.field private final cellHeight:F

.field private final cellRow:I

.field private final cellWidth:F

.field private mBgPaddingBottom:I

.field private mBgPaddingHorizontal:I

.field private mBgPaddingTop:I

.field private mBgRadius:F

.field public mCellHeight:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mCellWidth:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mContentPaddingHorizontal:F

.field private mContentPaddingVertical:F

.field private mDotRendererBigFolder:Lcom/android/launcher3/icons/DotRenderer;

.field private mIconUnitSize:I

.field private mIsLandscape:Z

.field private mIsRTL:Z

.field private mTextViewHeight:I

.field private mWorkspaceIconSize:I

.field private final odp:Lcom/android/launcher3/OplusDeviceProfile;

.field private final res:Landroid/content/res/Resources;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    const/16 v0, 0x9

    sput v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;II)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const-string v8, "res"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "odp"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    iput v4, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    iput-object v5, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    iput v6, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    iput v7, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    invoke-static/range {p2 .. p2}, Li1/j;->o(F)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    invoke-static/range {p3 .. p3}, Li1/j;->o(F)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    const v8, 0x7f070723

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v9

    if-eqz v9, :cond_50

    const v9, 0x7f070722

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_57

    :cond_50
    const v9, 0x7f070725

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_57
    const v10, 0x7f070724

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f070180

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f070181

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f070182

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v14

    iput-boolean v14, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsRTL:Z

    const-string v14, "init: cellRow = "

    const-string v15, ", cellCol = "

    move/from16 v16, v13

    const-string v13, ", cellWidth = "

    invoke-static {v14, v6, v15, v7, v13}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", cellHeight = "

    const-string v14, ", bubbleIconSize = "

    invoke-static {v6, v2, v13, v3, v14}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",ROW = 3"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "SizeSpacingConfig"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean v6, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    iput v4, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    sget-object v6, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v6}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_be

    const v14, 0x7f0b0008

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v15, v4

    sub-float/2addr v2, v15

    const/4 v15, 0x2

    int-to-float v15, v15

    div-float/2addr v2, v15

    int-to-float v14, v14

    mul-float/2addr v2, v14

    const/16 v14, 0x64

    int-to-float v14, v14

    div-float/2addr v2, v14

    goto :goto_10c

    :cond_be
    const/4 v2, 0x5

    if-lt v7, v2, :cond_c9

    const v2, 0x7f070177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_112

    :cond_c9
    const v14, 0x7f070176

    if-le v4, v8, :cond_ec

    if-ge v7, v2, :cond_ec

    sub-int v2, v4, v8

    int-to-float v2, v2

    const/high16 v15, 0x3f800000  # 1.0f

    mul-float/2addr v2, v15

    sub-int v15, v9, v8

    int-to-float v15, v15

    div-float/2addr v2, v15

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x7f070178

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v2, v14, v15}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    goto :goto_10c

    :cond_ec
    if-ge v4, v8, :cond_10e

    const/4 v2, 0x5

    if-ge v7, v2, :cond_10e

    sub-int v2, v4, v10

    int-to-float v2, v2

    const/high16 v15, 0x3f800000  # 1.0f

    mul-float/2addr v2, v15

    sub-int v15, v8, v10

    int-to-float v15, v15

    div-float/2addr v2, v15

    const v15, 0x7f070179

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v2, v15, v14}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    :goto_10c
    float-to-int v2, v2

    goto :goto_112

    :cond_10e
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_112
    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    iget v2, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    iget v14, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v15

    if-eqz v15, :cond_135

    iget v15, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    move-object/from16 v17, v13

    iget v13, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    move/from16 v18, v12

    iget v12, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v13, v12

    add-int/2addr v13, v2

    sub-int/2addr v15, v13

    int-to-float v12, v15

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Li1/j;->o(F)I

    move-result v12

    const/4 v13, 0x2

    goto :goto_14e

    :cond_135
    move/from16 v18, v12

    move-object/from16 v17, v13

    iget v12, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    iget v13, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v15, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v13, v15

    add-int/2addr v13, v2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const v13, 0x3eaaaaab

    mul-float/2addr v12, v13

    const/4 v13, 0x2

    int-to-float v15, v13

    mul-float/2addr v12, v15

    invoke-static {v12}, Li1/j;->o(F)I

    move-result v12

    :goto_14e
    iget v15, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v15, v14

    div-int/2addr v15, v13

    iget-boolean v13, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    if-nez v13, :cond_17b

    add-int/2addr v15, v12

    add-int/lit8 v3, v15, 0x0

    const/4 v13, 0x0

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v3

    if-eqz v3, :cond_16f

    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    sub-int/2addr v3, v12

    iget v14, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v3, v14

    sub-int/2addr v3, v2

    add-int/2addr v3, v13

    goto :goto_178

    :cond_16f
    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    sub-int/2addr v3, v15

    sub-int/2addr v3, v14

    add-int/2addr v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_178
    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    goto :goto_186

    :cond_17b
    int-to-float v2, v14

    sub-float v2, v3, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    :goto_186
    const v2, 0x7f07017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v3

    if-eqz v3, :cond_1a9

    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    const v12, 0x7f070185

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v3

    int-to-float v3, v12

    iget v12, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    add-float/2addr v12, v3

    float-to-int v3, v12

    goto :goto_1cc

    :cond_1a9
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v3

    if-eqz v3, :cond_1c1

    const v3, 0x7f070600

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v13, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v14, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v13, v14

    sub-int/2addr v13, v3

    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    sub-int/2addr v3, v12

    sub-int/2addr v3, v13

    goto :goto_1cc

    :cond_1c1
    iget v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    int-to-float v3, v3

    const v12, 0x3eaaaaab

    mul-float/2addr v3, v12

    invoke-static {v3}, Li1/j;->o(F)I

    move-result v3

    :goto_1cc
    iput v3, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    invoke-virtual {v6}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1e3

    :cond_1d9
    const/4 v3, 0x5

    if-lt v7, v3, :cond_1e5

    const v2, 0x7f07017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1e3
    int-to-float v2, v2

    goto :goto_207

    :cond_1e5
    if-ge v4, v8, :cond_205

    if-ge v7, v3, :cond_205

    sub-int v3, v4, v10

    int-to-float v3, v3

    const/high16 v12, 0x3f800000  # 1.0f

    mul-float/2addr v3, v12

    sub-int v12, v8, v10

    int-to-float v12, v12

    div-float/2addr v3, v12

    const v12, 0x7f07017f

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v12, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    goto :goto_207

    :cond_205
    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    :goto_207
    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    const v2, 0x7f07017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgRadius:F

    const/4 v2, 0x5

    if-lt v7, v2, :cond_224

    invoke-virtual {v6}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_224

    const v2, 0x7f070183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_254

    :cond_224
    if-le v4, v8, :cond_23c

    iget-boolean v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    if-nez v2, :cond_23c

    sub-int v2, v4, v8

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    sub-int/2addr v9, v8

    int-to-float v3, v9

    div-float/2addr v2, v3

    int-to-float v3, v11

    move/from16 v4, v18

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    goto :goto_253

    :cond_23c
    if-ge v4, v8, :cond_254

    iget-boolean v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    if-nez v2, :cond_254

    int-to-float v2, v8

    int-to-float v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-int/2addr v8, v10

    int-to-float v3, v8

    div-float/2addr v2, v3

    int-to-float v3, v11

    move/from16 v4, v16

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    :goto_253
    float-to-int v11, v2

    :cond_254
    :goto_254
    iput v11, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    iget-boolean v2, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_272

    iget-boolean v2, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v2, :cond_272

    const/4 v2, 0x1

    int-to-float v2, v2

    iget-object v3, v5, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v2, v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    int-to-float v3, v11

    mul-float/2addr v2, v3

    invoke-static {v2}, Li1/j;->o(F)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    :cond_272
    new-instance v2, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v3

    iget v4, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    iget v5, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;-><init>(Landroid/content/res/Resources;Landroid/graphics/Path;II)V

    iput-object v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mDotRendererBigFolder:Lcom/android/launcher3/icons/DotRenderer;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2be

    const-string v1, "mTextViewHeight = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mIconUnitSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBgPaddingHorizontal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBgPaddingTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBgPaddingBottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    move-object/from16 v2, v17

    invoke-static {v1, v0, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2be
    return-void
.end method

.method public static final synthetic access$getMAX_PREVIEW$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW:I

    return v0
.end method

.method public static final synthetic access$setMAX_PREVIEW$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->MAX_PREVIEW:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/folder/big/SizeSpacingConfig;Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;IIILjava/lang/Object;)Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget p7, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    :cond_2f
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->copy(Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;II)Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/content/res/Resources;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    return p0
.end method

.method public final component5()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    return-object p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    return p0
.end method

.method public final copy(Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;II)Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 16

    const-string p0, "res"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "odp"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;-><init>(Landroid/content/res/Resources;FFILcom/android/launcher3/OplusDeviceProfile;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    iget-object v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    :cond_3d
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    if-eq v1, v3, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    iget-object v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v2

    :cond_4f
    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    iget v3, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    if-eq v1, v3, :cond_56

    return v2

    :cond_56
    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    iget p1, p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    if-eq p0, p1, :cond_5d

    return v2

    :cond_5d
    return v0
.end method

.method public final getBubbleIconSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    return p0
.end method

.method public final getCellCol()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    return p0
.end method

.method public final getCellHeight()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    return p0
.end method

.method public final getCellRow()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    return p0
.end method

.method public final getCellWidth()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    return p0
.end method

.method public final getMBgPaddingBottom()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    return p0
.end method

.method public final getMBgPaddingHorizontal()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    return p0
.end method

.method public final getMBgPaddingTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    return p0
.end method

.method public final getMBgRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgRadius:F

    return p0
.end method

.method public final getMContentPaddingHorizontal()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    return p0
.end method

.method public final getMContentPaddingVertical()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    return p0
.end method

.method public final getMDotRendererBigFolder()Lcom/android/launcher3/icons/DotRenderer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mDotRendererBigFolder:Lcom/android/launcher3/icons/DotRenderer;

    return-object p0
.end method

.method public final getMIconUnitSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    return p0
.end method

.method public final getMIsLandscape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    return p0
.end method

.method public final getMIsRTL()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsRTL:Z

    return p0
.end method

.method public final getMTextViewHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    return p0
.end method

.method public final getMWorkspaceIconSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    return p0
.end method

.method public final getOdp()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    return-object p0
.end method

.method public final getRes()Landroid/content/res/Resources;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setMBgPaddingBottom(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingBottom:I

    return-void
.end method

.method public final setMBgPaddingHorizontal(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingHorizontal:I

    return-void
.end method

.method public final setMBgPaddingTop(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgPaddingTop:I

    return-void
.end method

.method public final setMBgRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mBgRadius:F

    return-void
.end method

.method public final setMContentPaddingHorizontal(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingHorizontal:F

    return-void
.end method

.method public final setMContentPaddingVertical(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mContentPaddingVertical:F

    return-void
.end method

.method public final setMDotRendererBigFolder(Lcom/android/launcher3/icons/DotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mDotRendererBigFolder:Lcom/android/launcher3/icons/DotRenderer;

    return-void
.end method

.method public final setMIconUnitSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIconUnitSize:I

    return-void
.end method

.method public final setMIsLandscape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsLandscape:Z

    return-void
.end method

.method public final setMIsRTL(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mIsRTL:Z

    return-void
.end method

.method public final setMTextViewHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mTextViewHeight:I

    return-void
.end method

.method public final setMWorkspaceIconSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mWorkspaceIconSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SizeSpacingConfig(res="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cellWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cellHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bubbleIconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->bubbleIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", odp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->odp:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cellRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellCol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->cellCol:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
