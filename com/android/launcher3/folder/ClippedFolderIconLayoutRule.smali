.class public Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENTER_INDEX:I = -0x3

.field public static final EXIT_INDEX:I = -0x2

.field public static final ICON_OVERLAP_FACTOR:F = 1.125f

.field private static final ITEM_RADIUS_SCALE_FACTOR:F = 1.15f

.field public static MAX_NUM_ITEMS_IN_PREVIEW:I = 0x9

.field private static final MAX_RADIUS_DILATION:F = 0.25f

.field private static final MAX_SCALE:F = 0.51f

.field private static final MIN_NUM_ITEMS_IN_PREVIEW:I = 0x2

.field private static final MIN_SCALE:F = 0.44f


# instance fields
.field public mAvailableSpace:F

.field public mBaselineIconScale:F

.field public mIconSize:F

.field public mIsRtl:Z

.field private mRadius:F

.field private mTmpPoint:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    mul-int/2addr v0, v0

    sput v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    return-void
.end method

.method private getGridPosition(II[F)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    aget v2, p3, v0

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x3

    invoke-direct {p0, v5, v1, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    aget p0, p3, v0

    sub-float/2addr p0, v2

    aget v1, p3, v3

    sub-float/2addr v1, v4

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, v2

    aput p2, p3, v0

    int-to-float p0, p1

    mul-float/2addr p0, v1

    add-float/2addr p0, v4

    aput p0, p3, v3

    return-void
.end method

.method private getPosition(II[F)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    move/from16 v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-boolean v4, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_13

    move-wide v7, v5

    goto :goto_18

    :cond_13
    const-wide v7, 0x400921fb54442d18L  # Math.PI

    :goto_18
    const/4 v9, 0x1

    if-eqz v4, :cond_1d

    move v4, v9

    goto :goto_1e

    :cond_1d
    const/4 v4, -0x1

    :goto_1e
    const/4 v10, 0x4

    const/4 v11, 0x3

    if-ne v3, v11, :cond_28

    const-wide v5, 0x3ff921fb54442d18L  # 1.5707963267948966

    goto :goto_2f

    :cond_28
    if-ne v3, v10, :cond_2f

    const-wide v5, 0x3fe921fb54442d18L  # 0.7853981633974483

    :cond_2f
    :goto_2f
    int-to-double v12, v4

    mul-double/2addr v5, v12

    add-double/2addr v5, v7

    if-ne v3, v10, :cond_38

    if-ne v1, v11, :cond_38

    move v1, v2

    goto :goto_3d

    :cond_38
    if-ne v3, v10, :cond_3d

    if-ne v1, v2, :cond_3d

    move v1, v11

    :cond_3d
    :goto_3d
    iget v4, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v8, 0x3e800000  # 0.25f

    add-int/lit8 v10, v3, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, v8

    instance-of v8, v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-static {v8}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v8

    sub-int/2addr v8, v2

    int-to-float v2, v8

    div-float/2addr v10, v2

    add-float/2addr v10, v7

    mul-float/2addr v10, v4

    int-to-double v1, v1

    const-wide v7, 0x401921fb54442d18L  # 6.283185307179586

    int-to-double v14, v3

    div-double/2addr v7, v14

    mul-double/2addr v7, v1

    mul-double/2addr v7, v12

    add-double/2addr v7, v5

    iget v1, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v2, v1

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v4, v1

    float-to-double v5, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    div-double/2addr v11, v5

    double-to-float v11, v11

    add-float/2addr v4, v11

    sub-float/2addr v4, v2

    aput v4, p3, v3

    iget v0, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v0, v1

    neg-float v1, v10

    float-to-double v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    div-double/2addr v7, v5

    double-to-float v1, v7

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    aput v0, p3, v9

    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 9

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne p1, v4, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v3, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_37

    :cond_10
    const/4 v4, -0x3

    if-ne p1, v4, :cond_19

    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_37

    :cond_19
    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v1

    if-lt p1, v1, :cond_32

    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p2, v1

    iget v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v4, v0

    div-float/2addr v4, v1

    sub-float/2addr p2, v4

    aput p2, p1, v2

    aput p2, p1, v3

    goto :goto_37

    :cond_32
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    :goto_37
    iget-object p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget p1, p0, v3

    aget p0, p0, v2

    if-nez p3, :cond_45

    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, p1, p0, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_48

    :cond_45
    invoke-virtual {p3, p1, p0, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_48
    return-object p3
.end method

.method public getIconSize()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    return p0
.end method

.method public init(IFZ)V
    .registers 6

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const v0, 0x3f933333  # 1.15f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    iput p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    iput-boolean p3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/high16 p3, 0x3f800000  # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    return-void
.end method

.method public scaleForItem(I)F
    .registers 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    const p1, 0x3f028f5c  # 0.51f

    goto :goto_a

    :cond_7
    const p1, 0x3ee147ae  # 0.44f

    :goto_a
    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr p1, p0

    return p1
.end method
