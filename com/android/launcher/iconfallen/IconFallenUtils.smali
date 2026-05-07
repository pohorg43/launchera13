.class public Lcom/android/launcher/iconfallen/IconFallenUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BUBBLEVIEW_RADIO:F = 0.39285713f

.field private static final DEFAULT_SCALE_VALUE:F = 1.0f

.field private static final FOLDER_COLUMN_COUNT_DEFAULT:I = 0x3

.field private static final FOLDER_ICON_FOCUS_OFFSET_RIGHT:I = 0x3c

.field private static final LARGE_ICON_SIZE:I = 0x1482

.field private static final TAG:Ljava/lang/String; = "IconFallenUtils"

.field private static final TRANSFORM_CELL_Y_1:I = 0x1

.field private static final TRANSFORM_CELL_Y_2:I = 0x2

.field private static final TRANSFORM_CELL_Y_3:I = 0x3

.field private static final TRANSFORM_CELL_Y_4:I = 0x4

.field private static final TRANSFORM_CELL_Y_5:I = 0x5

.field private static final TRANSFORM_CELL_Y_6:I = 0x6

.field private static final WORKSPACE_COLUMN_COUNT_DEFAULT:I = 0x4

.field private static final WORKSPACE_ICON_FOCUS_OFFSET_LEFT:I = 0x18

.field private static final WORKSPACE_ICON_FOCUS_OFFSET_RIGHT:I = 0x21

.field private static sCurColumns:I

.field public static sEndPosition56X:[F

.field public static sEndPosition56Y:[F

.field public static sFallenIconPivotY:F

.field public static sFallenIconPivotYRowGrid4:F

.field private static sFirstLine:I

.field private static sFocusXOffset:[I

.field private static sFolderFocusCalculateOffset:I

.field public static sIconPressAnimating:Z

.field private static sLastLine:I

.field private static sLines:I

.field private static sMaxWorkspaceUpOffset:F

.field private static sMinWorkspaceUpOffset:F

.field public static sNavigationOffset:F

.field public static sOffset56X:[F

.field public static sOffsetY:[F

.field public static sOffsetYHotset:F

.field public static sOffsetYWorkSpace:F

.field private static sOpenFolder:Lcom/android/launcher3/folder/Folder;

.field public static sOriginalPositionX:[F

.field public static sOriginalPositionY:[F

.field private static sPaddingBottom:F

.field private static sPaddingTop:F

.field public static sPositionX:[[I

.field public static sPositionY:[[I

.field public static sThresholdValue:F

.field public static sTransformCellX:I

.field public static sTransformCellY:I

.field private static sWorkspaceFocusCalculateXEndOffset:I

.field private static sWorkspaceFocusCalculateXStartOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-class v0, I

    const/4 v1, 0x6

    new-array v2, v1, [F

    sput-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    const/4 v2, 0x5

    new-array v3, v2, [F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    new-array v3, v1, [F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    new-array v3, v2, [F

    sput-object v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    new-array v1, v1, [F

    sput-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    new-array v1, v2, [F

    sput-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_44

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[I

    new-array v2, v1, [I

    fill-array-data v2, :array_4c

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionY:[[I

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    sput v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    return-void

    nop

    :array_44
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_4c
    .array-data 4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bottomBoundaryCheck()V
    .registers 4

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    invoke-static {v1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v1

    aget v0, v0, v1

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingBottom:F

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_35

    cmpl-float v2, v0, v1

    if-nez v2, :cond_15

    goto :goto_35

    :cond_15
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_21

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v2, v0, v1

    goto :goto_27

    :cond_21
    cmpg-float v3, v0, v1

    if-gez v3, :cond_27

    sub-float v2, v1, v0

    :cond_27
    :goto_27
    const/4 v0, 0x0

    :goto_28
    const/4 v1, 0x6

    if-ge v0, v1, :cond_35

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v3, v1, v0

    add-float/2addr v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_35
    :goto_35
    return-void
.end method

.method private static boundaryCheck(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->topBoundaryCheck(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->bottomBoundaryCheck()V

    :cond_9
    return-void
.end method

.method public static getEndPos(Landroid/view/View;)[I
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p0, :cond_35

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[I

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v3

    aget v2, v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionY:[[I

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v3

    aget-object v2, v2, v3

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result p0

    aget p0, v2, p0

    aput p0, v0, v1

    :cond_35
    return-object v0
.end method

.method public static getIconFocusOffsetX(Landroid/view/View;)[I
    .registers 6

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_3f

    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3f

    :cond_11
    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sCurColumns:I

    add-int/lit8 v3, v2, -0x3

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFolderFocusCalculateOffset:I

    mul-int/2addr v3, v4

    aput v3, p0, v0

    rsub-int/lit8 v0, v2, 0x3

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v4

    aput v0, p0, v1

    goto :goto_3f

    :cond_29
    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXStartOffset:I

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sCurColumns:I

    add-int/lit8 v4, v3, -0x4

    mul-int/lit8 v4, v4, 0x18

    add-int/2addr v4, v2

    aput v4, p0, v0

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXEndOffset:I

    rsub-int/lit8 v2, v3, 0x4

    mul-int/lit8 v2, v2, 0x21

    add-int/2addr v2, v0

    aput v2, p0, v1

    :cond_3f
    :goto_3f
    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    return-object p0
.end method

.method public static getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F
    .registers 9

    const-string v0, "IconFallenUtils"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v3, 0x0

    if-nez v2, :cond_19

    instance-of p1, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez p1, :cond_19

    instance-of p1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez p1, :cond_19

    instance-of p1, v1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p1, :cond_a8

    :cond_19
    const/4 p1, 0x1

    if-nez p3, :cond_1e

    const/4 v2, -0x1

    goto :goto_1f

    :cond_1e
    move v2, p1

    :goto_1f
    if-nez p3, :cond_27

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 v4, v4, 0x5

    sub-int/2addr v4, p1

    goto :goto_2d

    :cond_27
    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    :goto_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_46

    if-ne p3, p1, :cond_3f

    iget p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 p0, p0, 0x5

    sub-int/2addr p0, p1

    goto :goto_45

    :cond_3f
    iget p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    :goto_45
    move v4, p0

    :cond_46
    int-to-float p0, v2

    mul-float/2addr p0, p2

    :try_start_48
    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget p1, p1, v4

    mul-float v3, p0, p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getItemFallenDistanceX offset:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " sOffset56X["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " title:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_48 .. :try_end_80} :catch_81

    goto :goto_a8

    :catch_81
    move-exception p0

    const-string p1, "catch exception:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",info:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",sTransformCellX:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    return v3
.end method

.method public static getItemFallenDistanceY(Landroid/view/View;F)F
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, p0, Lcom/android/launcher3/BubbleTextView;

    if-nez v1, :cond_13

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_53

    :cond_13
    :goto_13
    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result p0

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aget v1, v1, p0

    mul-float/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemFallenDistance offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " sOffsetY["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " title:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconFallenUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p0, p1

    :goto_53
    return p0
.end method

.method public static getOpenFolder()Lcom/android/launcher3/folder/Folder;
    .registers 1

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method public static getScaleCenterY()F
    .registers 2

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotYRowGrid4:F

    return v0

    :cond_a
    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotY:F

    return v0
.end method

.method public static getsThresholdValue()F
    .registers 1

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    return v0
.end method

.method public static initFallenIconPivotY(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07070e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotY:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07070f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFallenIconPivotYRowGrid4:F

    return-void
.end method

.method public static initItemFallenDistance(Landroid/content/Context;F)V
    .registers 13

    const-string v0, " sTransformCellX="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sTransformCellY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFocusXOffset:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070706

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFolderFocusCalculateOffset:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070713

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXStartOffset:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070712

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sWorkspaceFocusCalculateXEndOffset:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070709

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07070a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07070c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingBottom:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070714

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMaxWorkspaceUpOffset:F

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v2, :cond_b6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070716

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070715

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMinWorkspaceUpOffset:F

    goto :goto_d2

    :cond_b6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070708

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070707

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMinWorkspaceUpOffset:F

    :goto_d2
    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->isCurLargeIconSize(Landroid/content/Context;)Z

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v2, :cond_12c

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07073b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v3

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07073e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v4

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07073f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v7

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07073d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v6

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07073c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v5

    goto :goto_17c

    :cond_12c
    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0706fc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v3

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070702

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v4

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070705

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v7

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070700

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v6

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0706fe

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v5

    :goto_17c
    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0706fb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v3

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070701

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v2, v4

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f070704

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v7

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0706ff

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v6

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0706fd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v5

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070703

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x5

    aput v4, v2, v5

    sget-boolean v2, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    const v4, 0x7f07070d

    if-nez v2, :cond_1f3

    const/4 v2, 0x0

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingTop:F

    goto :goto_20f

    :cond_1f3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f07070b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    add-float/2addr v2, v4

    sput v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingTop:F

    :goto_20f
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr p1, v4

    add-float/2addr p1, v2

    move v2, v3

    :goto_21c
    const/4 v6, 0x6

    const-string v7, "]:"

    if-ge v2, v6, :cond_247

    sget-object v6, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v8, v6, v2

    add-float/2addr v8, p1

    sget v9, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    div-float/2addr v9, v4

    const/high16 v10, 0x40a00000  # 5.0f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v6, v2

    const-string/jumbo v6, "sEndPosition56Y["

    invoke-static {v6, v2, v7}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21c

    :cond_247
    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->boundaryCheck(Landroid/content/Context;)V

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr p0, p1

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    const/high16 v2, 0x40400000  # 3.0f

    mul-float/2addr p1, v2

    add-float/2addr p1, p0

    sput p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMaxWorkspaceUpOffset:F

    cmpg-float v2, p1, p0

    if-gez v2, :cond_25e

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    goto :goto_266

    :cond_25e
    sget p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sMinWorkspaceUpOffset:F

    cmpl-float p1, p1, p0

    if-lez p1, :cond_266

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    :cond_266
    :goto_266
    move p0, v3

    :goto_267
    if-ge p0, v5, :cond_2c9

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    aget v4, v4, p0

    sub-float/2addr v2, v4

    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    aget v4, v4, p0

    sub-float/2addr v2, v4

    aput v2, p1, p0

    const-string p1, "initItemFallenDistance realScreenWidth:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sEndPosition56X["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56X:[F

    aget v2, v2, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",sOriginalPositionX["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    aget v2, v2, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",offset56x["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget v2, v2, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_267

    :cond_2c9
    :goto_2c9
    if-ge v3, v6, :cond_345

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v2, v2, v3

    sub-float/2addr p1, v2

    sget-object v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    aget v2, v2, v3

    sub-float/2addr p1, v2

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    sub-float/2addr p1, v2

    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    sub-float/2addr p1, v2

    aput p1, p0, v3

    const-string p0, "initItemFallenDistance realScreenHeight:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",sEndPosition56Y["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",sOriginalPositionY["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",sOffsetYWorkSpace:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",sNavigationOffset:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sNavigationOffset:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",offsety["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c9

    :cond_345
    return-void
.end method

.method public static initItemFallenDistance(Landroid/content/Context;Landroid/view/View;)V
    .registers 13

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v1

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sCurColumns:I

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sCurColumns:I

    rsub-int/lit8 v1, v1, 0x5

    sput v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    rsub-int/lit8 p0, p0, 0x6

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellY:I

    :cond_3e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    const-string v3, "IconFallenUtils"

    if-eqz v1, :cond_6b

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset icon scale,info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    instance-of v4, p1, Lcom/android/launcher3/card/IAreaWidget;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_ff

    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionY:[F

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v7

    aget v8, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3ec92492

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v4, v7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_cf

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    rsub-int/lit8 v4, v4, 0x4

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v4, v7

    :try_start_a4
    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v8

    aget v9, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v9, p1

    int-to-float p1, v9

    aput p1, v7, v8

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    rsub-int/lit8 v1, v4, 0x4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget-object v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    invoke-static {v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v4

    aget v4, v7, v4

    sub-float/2addr v0, v4

    aput v0, p1, v1
    :try_end_c9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a4 .. :try_end_c9} :catch_ca

    goto :goto_ff

    :catch_ca
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_ff

    :cond_cf
    :try_start_cf
    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v7

    aget v8, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v8, p1

    int-to-float p1, v8

    aput p1, v4, v7

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOriginalPositionX:[F

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v7}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v7

    aget v4, v4, v7

    sub-float/2addr v0, v4

    aput v0, p1, v1
    :try_end_fa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_cf .. :try_end_fa} :catch_fb

    goto :goto_ff

    :catch_fb
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_ff
    :goto_ff
    const-string p1, "initItemFallenDistance BubbleTextView sOriginalPositionY["

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  sOriginalPositionX["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, v6

    invoke-static {p1, p0, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static initItemFallenEndPosition(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_69

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionX:[[I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    aget-object p0, p0, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v2

    const/4 v3, 0x0

    aget v4, v1, v3

    aput v4, p0, v2

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPositionY:[[I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    aget-object p0, p0, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aput v5, p0, v2

    const-string p0, "initItemFallenEndPosition sEndPositionX["

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  sEndPositionY["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v4

    const-string v1, "IconFallenUtils"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_69
    return-void
.end method

.method public static initLinesInfo(III)V
    .registers 3

    sput p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    sput p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    sput p2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    return-void
.end method

.method public static initOpenFolderInfo(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    sput-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    return-void
.end method

.method private static isCurLargeIconSize(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v0
    :try_end_8
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_22

    :catch_9
    move-exception v0

    const-string v1, "getUxIconConfig e:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    const/16 v1, 0x1482

    if-le p0, v1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    return v0
.end method

.method public static setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V
    .registers 8

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetY:[F

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x1

    if-nez p1, :cond_18

    const/4 v2, -0x1

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    if-nez p1, :cond_21

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 v3, v3, 0x5

    sub-int/2addr v3, v1

    goto :goto_27

    :cond_21
    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result v3

    :goto_27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_40

    if-ne p1, v1, :cond_39

    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    rsub-int/lit8 p0, p0, 0x5

    sub-int/2addr p0, v1

    goto :goto_3f

    :cond_39
    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellX(I)I

    move-result p0

    :goto_3f
    move v3, p0

    :cond_40
    int-to-float p0, v2

    sget-object p1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffset56X:[F

    aget p1, p1, v3

    mul-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static topBoundaryCheck(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sPaddingTop:F

    sub-float/2addr p0, v0

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    invoke-static {v1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->transformCellY(I)I

    move-result v1

    aget v0, v0, v1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpg-float v1, v0, p0

    const/4 v2, 0x0

    if-ltz v1, :cond_3b

    cmpl-float p0, v0, p0

    if-nez p0, :cond_2c

    goto :goto_3b

    :cond_2c
    :goto_2c
    const/4 p0, 0x6

    if-ge v2, p0, :cond_39

    sget-object p0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sEndPosition56Y:[F

    aget v1, p0, v2

    sub-float/2addr v1, v0

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_39
    const/4 p0, 0x1

    return p0

    :cond_3b
    :goto_3b
    return v2
.end method

.method private static transformCellX(I)I
    .registers 2

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sTransformCellX:I

    add-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static transformCellY(I)I
    .registers 10

    sget-object v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOpenFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    sget v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    if-ge v0, v1, :cond_c

    add-int/lit8 v0, p0, 0x2

    goto :goto_10

    :cond_c
    add-int/lit8 v0, p0, 0x1

    goto :goto_10

    :cond_f
    move v0, p0

    :goto_10
    sget v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1c

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v5, :cond_aa

    :cond_1c
    if-ne v2, v5, :cond_22

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v5, :cond_aa

    :cond_22
    if-ne v2, v1, :cond_28

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v7, v5, :cond_aa

    :cond_28
    const/4 v7, 0x4

    if-ne v2, v7, :cond_2f

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v6, :cond_aa

    :cond_2f
    if-eq v2, v4, :cond_aa

    if-ne v2, v3, :cond_35

    goto/16 :goto_aa

    :cond_35
    if-ne v2, v6, :cond_3b

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v6, :cond_4d

    :cond_3b
    if-ne v2, v5, :cond_41

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v6, :cond_4d

    :cond_41
    if-ne v2, v1, :cond_47

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v6, :cond_4d

    :cond_47
    if-ne v2, v7, :cond_54

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-nez v8, :cond_54

    :cond_4d
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ge v1, v4, :cond_ab

    add-int/lit8 v0, p0, 0x1

    goto :goto_ab

    :cond_54
    if-ne v2, v6, :cond_5a

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eqz v8, :cond_66

    :cond_5a
    if-ne v2, v5, :cond_60

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eqz v8, :cond_66

    :cond_60
    if-ne v2, v1, :cond_6d

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-nez v8, :cond_6d

    :cond_66
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLastLine:I

    if-ge v1, v7, :cond_ab

    add-int/lit8 v0, p0, 0x2

    goto :goto_ab

    :cond_6d
    if-ne v2, v6, :cond_73

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v1, :cond_79

    :cond_73
    if-ne v2, v5, :cond_80

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-ne v8, v1, :cond_80

    :cond_79
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-lez v1, :cond_ab

    add-int/lit8 v0, p0, -0x1

    goto :goto_ab

    :cond_80
    if-ne v2, v6, :cond_86

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v7, :cond_98

    :cond_86
    if-ne v2, v5, :cond_8c

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v7, :cond_98

    :cond_8c
    if-ne v2, v1, :cond_92

    sget v8, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-eq v8, v1, :cond_98

    :cond_92
    if-ne v2, v7, :cond_9f

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-ne v1, v5, :cond_9f

    :cond_98
    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-le v1, v6, :cond_ab

    add-int/lit8 v0, p0, -0x2

    goto :goto_ab

    :cond_9f
    if-ne v2, v6, :cond_ab

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    if-ne v1, v4, :cond_ab

    if-le v1, v5, :cond_ab

    add-int/lit8 v0, p0, -0x3

    goto :goto_ab

    :cond_aa
    :goto_aa
    move v0, p0

    :cond_ab
    :goto_ab
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lt v0, v3, :cond_db

    const-string/jumbo v1, "transformCellY result error,originalCellY:"

    const-string v2, ",sLines:"

    invoke-static {v1, p0, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sLines:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sFirstLine:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sFirstLine:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",result:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IconFallenUtils"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_db
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
