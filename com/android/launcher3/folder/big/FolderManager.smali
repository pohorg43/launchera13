.class public final Lcom/android/launcher3/folder/big/FolderManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

.field public static final RESIZE_FOLDER_ICON_ENABLE:Z = false

.field private static final SNAP_ADDED_PAGE_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "FolderManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/big/FolderManager;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolder$lambda-1(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->fillEmptyCellIfNeed$lambda-6(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolderForHotseat$lambda-5(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method private final checkPageToSmall(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    if-lez v0, :cond_24

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/z;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMScrollEndRunnable(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    goto :goto_27

    :cond_24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/FolderManager;->toSmallFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    :goto_27
    return-void
.end method

.method private static final checkPageToSmall$lambda-2(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 5

    const-string v0, "$bigFolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->toSmallFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method public static final convertFolder(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v1

    const-string v2, "FolderManager"

    if-nez v1, :cond_15

    const-string p0, "convertFolder: nonsupport convert"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    sget-object v1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v1}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v1

    if-nez v1, :cond_23

    const-string p0, "convertFolder, shortClick, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    iput-boolean v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3c

    move-object v3, v4

    goto :goto_40

    :cond_3c
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_40
    instance-of v5, v3, Lcom/android/launcher3/CellLayout;

    if-eqz v5, :cond_47

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/CellLayout;

    :cond_47
    if-nez v4, :cond_4a

    return-void

    :cond_4a
    const-string v3, "folderInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "oppositeInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/big/FolderManager;->refreshFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v3

    if-eqz v3, :cond_65

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/launcher3/folder/big/FolderManager;->checkPageToSmall(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    goto :goto_8c

    :cond_65
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x65

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_6f

    move v3, v7

    goto :goto_70

    :cond_6f
    move v3, v6

    :goto_70
    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v5, v7, :cond_75

    move v6, v7

    :cond_75
    and-int/2addr v3, v6

    if-eqz v3, :cond_7c

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolderForHotseat(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    goto :goto_81

    :cond_7c
    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolder(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    :goto_81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/statistics/LauncherStatistics;->statBigFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_8c
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->checkPageToSmall$lambda-2(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/FolderManager;->toSmallFolder$lambda-4(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method

.method public static final fillEmptyCellIfNeed(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/Launcher;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_8

    return-void

    :cond_8
    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const-string v0, "launcher.workspace.getSc…folderIcon.info.screenId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/seed/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDragLayer;->getDragAnim()Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_3c

    const/4 p0, 0x0

    goto :goto_4c

    :cond_3c
    const-string p1, "FolderManager"

    const-string v1, "fillEmptyCellIfNeed, dragAnim is Running."

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/folder/big/FolderManager$fillEmptyCellIfNeed$lambda-8$$inlined$doOnEnd$1;

    invoke-direct {p1, v0}, Lcom/android/launcher3/folder/big/FolderManager$fillEmptyCellIfNeed$lambda-8$$inlined$doOnEnd$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object p0, p1

    :goto_4c
    if-nez p0, :cond_51

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/a;->run()V

    :cond_51
    return-void
.end method

.method private static final fillEmptyCellIfNeed$lambda-6(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    const-string v0, "$cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FolderManager"

    const-string v1, "fillEmptyAfterCreateOrAddToFolder."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_16
    return-void
.end method

.method private final findCellAndAddBigFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;ILcom/android/launcher3/OplusWorkspace;)Z
    .registers 11

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "FolderManager"

    const/4 v2, 0x0

    if-nez v0, :cond_28

    const-string p0, "findCellAndAddBigFolder, cl is null! screen = "

    const-string p1, ", count = "

    invoke-static {p0, p3, p1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    invoke-virtual {p4, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result p3

    const/16 v3, -0xc9

    if-ne p3, v3, :cond_3c

    invoke-virtual {p4}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p3

    :cond_3c
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_88

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_87

    aget v0, v3, v2

    if-ltz v0, :cond_87

    const/4 v0, 0x1

    aget v4, v3, v0

    if-ltz v4, :cond_87

    aget v2, v3, v2

    iput v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v0, v3, v0

    iput v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/16 p3, -0x64

    iput p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-nez p1, :cond_66

    goto :goto_69

    :cond_66
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateFolderName(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_69
    if-nez p1, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_6f
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "toString(this)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "findCellAndAddBigFolder cellXY = "

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :cond_87
    return v2

    :array_88
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static final folderNameSwitchOff()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    if-nez v0, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_f

    :cond_d
    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    :goto_f
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static final getDistanceForBg(Landroid/graphics/Rect;FF)F
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bgRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p1, p1

    float-to-double v0, p0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    :cond_4
    move v2, v1

    goto :goto_c

    :cond_6
    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_c
    if-eqz v2, :cond_13

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public static final isSmallFolderIcon(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_d

    goto :goto_14

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result p0

    if-ne p0, v1, :cond_14

    move v0, v1

    :cond_14
    :goto_14
    return v0
.end method

.method public static final longClickEnable(Lcom/android/launcher3/folder/big/BigFolderIcon;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object p0

    if-nez p0, :cond_14

    move p0, v1

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result p0

    :goto_18
    if-nez p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private final refreshFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    return-void
.end method

.method private final startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V
    .registers 13

    const-string p0, ", toBig = "

    const-string/jumbo v0, "startConvertAnim: title = "

    const-string v1, "FolderManager"

    if-eqz p3, :cond_49

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_38

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-nez p0, :cond_2f

    goto :goto_38

    :cond_2f
    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_38
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    if-nez p0, :cond_3f

    goto :goto_88

    :cond_3f
    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_88

    :cond_49
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-nez p0, :cond_6a

    goto :goto_78

    :cond_6a
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-nez p0, :cond_6f

    goto :goto_78

    :cond_6f
    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_78
    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    if-nez p0, :cond_7f

    goto :goto_88

    :cond_7f
    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_88
    new-instance p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    const/4 v0, 0x0

    aget v5, p4, v0

    const/4 v0, 0x1

    aget v6, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;ZII)V

    new-instance p1, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;

    invoke-direct {p1, p5}, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->setCompleteAction(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->setConvertAnimating(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildConvertAnimator()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static final supportBigFolder()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const-string v1, "getInstance().curLauncherMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder(Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static final supportBigFolder(Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "targetMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isBigFolderDisabled()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq p0, v0, :cond_1a

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportBigFolder()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private final toBigFolder(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 24

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int v4, v2, v3

    if-le v4, v0, :cond_1e

    sub-int v2, v0, v3

    :cond_1e
    move v14, v2

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int v3, v0, v2

    if-le v3, v1, :cond_29

    sub-int v0, v1, v2

    :cond_29
    move v15, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iput v14, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v15, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v14, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v15, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v8, v10}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toBigFolder: targetCellX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetCellY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folderInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v5, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_126

    const/16 v16, 0x1

    move-object/from16 v0, p4

    move v1, v14

    move-object/from16 v17, v2

    move v2, v15

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    move/from16 v17, v13

    move-object v13, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10e

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput v14, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v15, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v15, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v13, v9}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    if-nez v2, :cond_cb

    goto :goto_ce

    :cond_cb
    invoke-virtual {v2, v13}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :goto_ce
    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_d5

    goto :goto_e1

    :cond_d5
    iput-object v9, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    if-nez v3, :cond_de

    goto :goto_e1

    :cond_de
    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :goto_e1
    const-string v2, "launcher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v9}, Lcom/android/launcher3/folder/big/FolderManager;->updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v0, v11, v9, v8, v1}, Lcom/android/launcher/Launcher;->addConvertedFolder(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Z)Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {v11, v1}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_f7
    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v4, v0, [I

    const/4 v5, 0x0

    aput v12, v4, v5

    aput v17, v4, v1

    new-instance v5, Lcom/android/launcher3/folder/big/b;

    invoke-direct {v5, v13, v0}, Lcom/android/launcher3/folder/big/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/big/FolderManager;->startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V

    goto :goto_124

    :cond_10e
    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iput v12, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    move/from16 v1, v17

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual/range {p1 .. p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    :goto_124
    return-void

    nop

    :array_126
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method private static final toBigFolder$lambda-1(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    const-string v0, "$bigFolderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderConvertTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method private final toBigFolderForHotseat(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 12

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    const-string/jumbo v5, "workspace"

    const/4 v6, 0x0

    const-string v7, "bigFolderInfo"

    if-eqz v2, :cond_50

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_4e

    :goto_3a
    add-int/lit8 v9, v2, 0x1

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/launcher3/folder/big/FolderManager;->findCellAndAddBigFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;ILcom/android/launcher3/OplusWorkspace;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_68

    :cond_49
    if-lt v9, v8, :cond_4c

    goto :goto_68

    :cond_4c
    move v2, v9

    goto :goto_3a

    :cond_4e
    move v2, v6

    goto :goto_68

    :cond_50
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/launcher3/folder/big/FolderManager;->findCellAndAddBigFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;ILcom/android/launcher3/OplusWorkspace;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolderForHotseat(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    :cond_68
    :goto_68
    const-string/jumbo v3, "toBigFolderForHotseat: screenId = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", folderInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FolderManager"

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_9e

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/folder/big/FolderManager;->updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v6}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    new-instance p0, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {p0, v1, v4}, Lcom/android/launcher3/dragndrop/m;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9e
    return-void
.end method

.method private static final toBigFolderForHotseat$lambda-5(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private final toSmallFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 14

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v5, 0x1

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const-string/jumbo v6, "toSmallFolder, folderInfo = "

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FolderManager"

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/Launcher;

    const/4 v7, 0x0

    invoke-virtual {v6, p3, p2, p1, v7}, Lcom/android/launcher/Launcher;->addConvertedFolder(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Z)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v8

    invoke-virtual {p3, p1}, Lcom/android/launcher3/OplusCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    invoke-virtual {p3, v8}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-virtual {p3, v5}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_37
    new-instance v9, Lcom/android/launcher/c;

    invoke-direct {v9, v6, p2, p1, v8}, Lcom/android/launcher/c;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setOppositeView(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v2

    const-string v0, "folderIcon.oppositeView"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [I

    aput v3, v8, v7

    aput v4, v8, v5

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/big/FolderManager;->startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final toSmallFolder$lambda-4(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 6

    const-string v0, "$folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    const-string v1, "launcher"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderManager;->updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    invoke-virtual {p3, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setVisibility(I)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :goto_38
    invoke-virtual {p3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-nez p0, :cond_3f

    goto :goto_4b

    :cond_3f
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :goto_4b
    return-void
.end method

.method private final updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 12

    const-string/jumbo p0, "updateDatabase: folderInfo = "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FolderManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    return-void
.end method


# virtual methods
.method public final updateFolderName(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 4

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_1a

    :cond_11
    sget-object p1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_1a
    return-void
.end method
