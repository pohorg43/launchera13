.class public final Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GridOption"
.end annotation


# static fields
.field private static final DEVICE_CATEGORY_ALL:I = 0x7

.field private static final DEVICE_CATEGORY_MULTI_DISPLAY:I = 0x4

.field private static final DEVICE_CATEGORY_PHONE:I = 0x1

.field private static final DEVICE_CATEGORY_TABLET:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "grid-option"


# instance fields
.field private final dbFile:Ljava/lang/String;

.field private final defaultLayoutId:I

.field private final demoModeLayoutId:I

.field private final devicePaddingId:I

.field private final extraAttrs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public final fastScrollerWidth:I

.field private final hotseatColumnSpan:[I

.field public final isEnabled:Z

.field private final isScalable:Z

.field public final name:Ljava/lang/String;

.field public numAllAppsColumns:I

.field public final numColumns:I

.field private final numDatabaseAllAppsColumns:I

.field private final numDatabaseHotseatIcons:I

.field public final numFolderColumns:I

.field public final numFolderPreview:I

.field public final numFolderRows:I

.field public final numHotseatIcons:I

.field public final numRows:I

.field public final numSearchContainerColumns:I

.field private final numShrunkenHotseatIcons:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x4

    new-array v5, v4, [I

    iput-object v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    sget-object v6, Lcom/android/launcher3/R$styleable;->GridDisplayOption:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    const/16 v10, 0xe

    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    const/16 v11, 0x15

    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-ne v3, v11, :cond_49

    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_49

    move v13, v12

    goto :goto_4a

    :cond_49
    move v13, v11

    :goto_4a
    invoke-virtual {v7, v13, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    const/4 v14, 0x3

    invoke-virtual {v7, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    const/16 v13, 0xd

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    const/16 v13, 0xf

    mul-int/2addr v15, v12

    invoke-virtual {v7, v13, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    const/16 v13, 0x13

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    const/16 v15, 0x16

    div-int/lit8 v4, v13, 0x2

    invoke-virtual {v7, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numShrunkenHotseatIcons:I

    const/16 v4, 0x10

    mul-int/2addr v13, v12

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    const/4 v4, 0x7

    invoke-virtual {v7, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    aput v13, v5, v9

    const/16 v13, 0x8

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    aput v13, v5, v11

    const/16 v13, 0x9

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    aput v13, v5, v14

    const/16 v13, 0xa

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    aput v13, v5, v12

    const/16 v5, 0x12

    invoke-virtual {v7, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    const/16 v5, 0x11

    invoke-virtual {v7, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    const/16 v5, 0xb

    invoke-virtual {v7, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    const/4 v5, 0x5

    invoke-virtual {v7, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    const/4 v5, 0x4

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-nez v3, :cond_cc

    and-int/lit8 v5, v4, 0x1

    if-eq v5, v11, :cond_da

    :cond_cc
    if-ne v3, v12, :cond_d2

    and-int/lit8 v5, v4, 0x2

    if-eq v5, v12, :cond_da

    :cond_d2
    if-ne v3, v11, :cond_d9

    const/4 v3, 0x4

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_d9

    goto :goto_da

    :cond_d9
    move v11, v9

    :cond_da
    :goto_da
    iput-boolean v11, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled:Z

    const/16 v3, 0xd

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    const/16 v3, 0x17

    invoke-virtual {v7, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderPreview:I

    const/4 v3, 0x6

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->fastScrollerWidth:I

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v6}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/util/Themes;->createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/launcher3/util/IntArray;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->extraAttrs:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->extraAttrs:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numShrunkenHotseatIcons:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    return-object p0
.end method
