.class public Lcom/android/launcher/CellLayoutHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutHelper"

.field private static sSmallScreenMaxSize:Landroid/graphics/Point;

.field private static sSmallScreenMinSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellSize(Landroid/content/Context;II)Landroid/graphics/Point;
    .registers 4

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getLargeDeviceCellSize(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;)Landroid/graphics/Point;
    .registers 4

    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {p0, p1, v1, v0}, Lcom/android/launcher/CellLayoutHelper;->getLargeDeviceCellSize(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static getLargeDeviceCellSize(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;II)Landroid/graphics/Point;
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMinSize:Landroid/graphics/Point;

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/android/launcher/CellLayoutHelper;->initSmallScreenSizeForMultiScreen(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMinSize:Landroid/graphics/Point;

    if-nez p0, :cond_1a

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p1, p2, p3, p0, v0}, Lcom/android/launcher3/OplusDeviceProfile;->getUnifyWidgetCellSize(IIII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_1a
    iget-boolean p0, p1, Lcom/android/launcher3/OplusDeviceProfile;->isPhysicalLandscape:Z

    if-eqz p0, :cond_27

    sget-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMaxSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sget-object v0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMinSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_2f

    :cond_27
    sget-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMinSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sget-object v0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMaxSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_2f
    invoke-virtual {p1, p2, p3, p0, v0}, Lcom/android/launcher3/OplusDeviceProfile;->getUnifyWidgetCellSize(IIII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_34
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInSmall()Z

    move-result p0

    if-eqz p0, :cond_43

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p1, p2, p3, p0, v0}, Lcom/android/launcher3/OplusDeviceProfile;->getUnifyWidgetCellSize(IIII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_43
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetCellSize(Landroid/content/Context;II)Landroid/graphics/Point;
    .registers 5

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/launcher/CellLayoutHelper;->getLargeDeviceCellSize(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;II)Landroid/graphics/Point;

    move-result-object p0

    goto :goto_1f

    :cond_17
    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p0

    :goto_1f
    return-object p0
.end method

.method private static initSmallScreenSizeForMultiScreen(Landroid/content/Context;)V
    .registers 5

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    array-length v1, v0

    if-le v1, v3, :cond_69

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/android/launcher3/util/DisplayController$Info;

    aget-object v0, v0, v3

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    new-instance p0, Landroid/graphics/Point;

    iget-object v0, v1, Lcom/android/launcher3/util/DisplayController$Info;->smallestSize:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    sput-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMinSize:Landroid/graphics/Point;

    new-instance p0, Landroid/graphics/Point;

    iget-object v0, v1, Lcom/android/launcher3/util/DisplayController$Info;->largestSize:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    sput-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMaxSize:Landroid/graphics/Point;

    goto :goto_69

    :cond_3c
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_69

    array-length v1, v0

    if-ne v1, v3, :cond_69

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/android/launcher3/util/DisplayController$Info;

    aget-object v0, v0, v1

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    new-instance p0, Landroid/graphics/Point;

    iget-object v0, v2, Lcom/android/launcher3/util/DisplayController$Info;->smallestSize:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    sput-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMinSize:Landroid/graphics/Point;

    new-instance p0, Landroid/graphics/Point;

    iget-object v0, v2, Lcom/android/launcher3/util/DisplayController$Info;->largestSize:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    sput-object p0, Lcom/android/launcher/CellLayoutHelper;->sSmallScreenMaxSize:Landroid/graphics/Point;

    :cond_69
    :goto_69
    return-void
.end method

.method public static invertCellX(IIIZ)I
    .registers 4

    if-eqz p3, :cond_5

    sub-int/2addr p0, p1

    sub-int p1, p0, p2

    :cond_5
    return p1
.end method

.method public static rectToCell(IIIIII)[I
    .registers 10

    const-string v0, "CellLayoutHelper"

    const/4 v1, 0x1

    if-nez p3, :cond_c

    const-string/jumbo p3, "rectToCell, cellHeight is 0!"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v1

    :cond_c
    if-nez p2, :cond_15

    const-string/jumbo p2, "rectToCell, cellWidth is 0!"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v1

    :cond_15
    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p4, p2

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p3, 0x0

    aput p0, p2, p3

    aput p1, p2, v1

    return-object p2
.end method
