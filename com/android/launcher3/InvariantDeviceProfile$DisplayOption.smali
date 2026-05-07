.class public Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayOption"
.end annotation


# static fields
.field private static final DONT_INLINE_QSB:I = 0x0

.field private static final INLINE_QSB_FOR_LANDSCAPE:I = 0x2

.field private static final INLINE_QSB_FOR_PORTRAIT:I = 0x1

.field private static final INLINE_QSB_FOR_TWO_PANEL_LANDSCAPE:I = 0x8

.field private static final INLINE_QSB_FOR_TWO_PANEL_PORTRAIT:I = 0x4


# instance fields
.field private final allAppsBorderSpaces:[Landroid/graphics/PointF;

.field private final allAppsCellSize:[Landroid/graphics/PointF;

.field private final allAppsIconSizes:[F

.field public final allAppsIconTextSizes:[F

.field public final borderSpaces:[Landroid/graphics/PointF;

.field public final canBeDefault:Z

.field public folderBorderSpace:F

.field public final grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

.field public final horizontalMargin:[F

.field private final hotseatBorderSpaces:[F

.field public final iconSizes:[F

.field private final inlineQsb:[Z

.field public final minCellSize:[Landroid/graphics/PointF;

.field public final minHeightDps:F

.field public final minWidthDps:F

.field public final textSizes:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    move v2, v1

    :goto_3b
    if-ge v2, v0, :cond_78

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_78
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Z

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    new-array v3, v1, [Landroid/graphics/PointF;

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-array v4, v1, [Landroid/graphics/PointF;

    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-array v5, v1, [F

    iput-object v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    new-array v6, v1, [F

    iput-object v6, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    new-array v7, v1, [F

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    new-array v8, v1, [F

    iput-object v8, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    new-array v9, v1, [Landroid/graphics/PointF;

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-array v10, v1, [F

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    new-array v11, v1, [F

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    new-array v12, v1, [Landroid/graphics/PointF;

    iput-object v12, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    move-object/from16 v13, p1

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    sget-object v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption:[I

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v14, v15, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/16 v15, 0x42

    const/4 v1, 0x0

    invoke-virtual {v13, v15, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    iput v15, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    const/16 v15, 0x41

    invoke-virtual {v13, v15, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    iput v15, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    const/16 v15, 0x26

    const/4 v1, 0x0

    invoke-virtual {v13, v15, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    const/16 v15, 0x37

    invoke-virtual {v13, v15, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    and-int/lit8 v1, v15, 0x1

    const/4 v14, 0x1

    if-ne v1, v14, :cond_67

    move v1, v14

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    :goto_68
    const/16 v16, 0x0

    aput-boolean v1, v2, v16

    and-int/lit8 v1, v15, 0x2

    const/4 v14, 0x2

    if-ne v1, v14, :cond_75

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_78

    :cond_75
    const/4 v1, 0x1

    const/16 v16, 0x0

    :goto_78
    aput-boolean v16, v2, v1

    and-int/lit8 v1, v15, 0x4

    const/4 v14, 0x4

    if-ne v1, v14, :cond_81

    const/4 v1, 0x1

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    const/4 v14, 0x2

    aput-boolean v1, v2, v14

    const/16 v1, 0x8

    and-int/lit8 v14, v15, 0x8

    if-ne v14, v1, :cond_8d

    const/4 v14, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v14, 0x0

    :goto_8e
    const/4 v15, 0x3

    aput-boolean v14, v2, v15

    const/16 v2, 0x3d

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v1, 0x39

    invoke-virtual {v13, v1, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v14, v3, v1

    const/16 v2, 0x3e

    aget-object v14, v3, v1

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v14, 0x3a

    aget-object v15, v3, v1

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v15, v3, v2

    const/16 v2, 0x40

    aget-object v14, v3, v1

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v14, 0x3c

    aget-object v15, v3, v1

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v15, v3, v2

    const/16 v2, 0x3f

    aget-object v14, v3, v1

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v14, 0x3b

    aget-object v15, v3, v1

    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v14, v3, v1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/16 v2, 0x1c

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v14, 0x22

    invoke-virtual {v13, v14, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    const/16 v15, 0x1f

    invoke-virtual {v13, v15, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v17, v6

    const/16 v6, 0x1b

    invoke-virtual {v13, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move-object/from16 v18, v5

    const/16 v5, 0x25

    invoke-virtual {v13, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v19, v11

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/16 v5, 0x1d

    invoke-virtual {v13, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v6, 0x1e

    invoke-virtual {v13, v6, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v6, v4, v2

    const/16 v2, 0x23

    invoke-virtual {v13, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v5, 0x24

    invoke-virtual {v13, v5, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v6, v4, v2

    const/16 v2, 0x20

    invoke-virtual {v13, v2, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v13, v5, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v6, v4, v2

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    const/16 v0, 0x10

    const/4 v2, 0x0

    aget-object v4, v3, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v4, 0xc

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v9, v2

    const/16 v0, 0x11

    aget-object v3, v9, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v3, 0xd

    aget-object v4, v9, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x1

    aput-object v4, v9, v0

    const/16 v0, 0x13

    aget-object v3, v9, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v3, 0xf

    aget-object v4, v9, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/16 v0, 0x12

    aget-object v3, v9, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v3, 0xe

    aget-object v4, v9, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    aput-object v4, v9, v0

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v13, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/16 v3, 0x8

    invoke-virtual {v13, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/4 v5, 0x5

    invoke-virtual {v13, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v13, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    const/16 v11, 0xb

    invoke-virtual {v13, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v9, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v11, v12, v2

    const/4 v0, 0x3

    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v0, 0x4

    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v12, v6

    const/16 v0, 0x9

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/16 v2, 0xa

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x6

    invoke-virtual {v13, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {v13, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/16 v0, 0x2f

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x0

    aput v0, v7, v2

    const/16 v0, 0x30

    aget v3, v7, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x1

    aput v0, v7, v3

    const/16 v0, 0x32

    aget v3, v7, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v7, v3

    const/16 v0, 0x31

    aget v3, v7, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v7, v3

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    if-nez v0, :cond_27d

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-nez v0, :cond_27d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v2

    :cond_27d
    const/16 v0, 0x14

    aget v3, v7, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v10, v2

    aget v0, v10, v2

    const/4 v3, 0x1

    aput v0, v10, v3

    const/16 v0, 0x16

    aget v3, v10, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v10, v3

    const/16 v0, 0x15

    aget v3, v10, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v10, v3

    const/16 v0, 0x33

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v8, v2

    const/16 v0, 0x34

    aget v3, v8, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x1

    aput v0, v8, v3

    const/16 v0, 0x36

    aget v3, v8, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v8, v3

    const/16 v0, 0x35

    aget v3, v8, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v8, v3

    const/16 v0, 0x17

    aget v3, v8, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v19, v2

    aget v0, v19, v2

    const/4 v3, 0x1

    aput v0, v19, v3

    const/16 v0, 0x19

    aget v3, v19, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v19, v3

    const/16 v0, 0x18

    aget v3, v19, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x3

    aput v0, v19, v3

    const/16 v0, 0x27

    const/4 v4, 0x0

    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v18, v2

    const/16 v0, 0x28

    aget v4, v18, v2

    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v4, 0x1

    aput v0, v18, v4

    const/16 v0, 0x29

    aget v4, v18, v2

    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v18, v3

    const/16 v0, 0x2a

    aget v3, v18, v2

    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v3, 0x2

    aput v0, v18, v3

    const/16 v0, 0x2b

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v17, v2

    const/16 v0, 0x2c

    aget v1, v17, v2

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v1, 0x1

    aput v0, v17, v1

    const/16 v0, 0x2d

    aget v1, v17, v2

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v1, 0x3

    aput v0, v17, v1

    const/16 v0, 0x2e

    aget v1, v17, v2

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v1, 0x2

    aput v0, v17, v1

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    return-object p0
.end method


# virtual methods
.method public add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_bd

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    aget-boolean v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    aget-boolean v3, v3, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_bd
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    return-object p0
.end method

.method public multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_71

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_71
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    return-object p0
.end method
