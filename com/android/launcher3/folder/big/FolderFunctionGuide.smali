.class public final Lcom/android/launcher3/folder/big/FolderFunctionGuide;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BIG_FOLDER_CONVERT_TIP:Ljava/lang/String; = "big_folder_convert_tip_key"

.field private static final BIG_FOLDER_SCROLL_TIP:Ljava/lang/String; = "big_folder_scroll_tip_key"

.field private static final BIG_FOLDER_SCROLL_TIP_ROTATION:F = 90.0f

.field private static final DEBUG_GUIDE:Z = false

.field private static final FOLDER_LONG_CLICK_DELAY:J = 0xc8L

.field private static final FOLDER_LONG_CLICK_TIP:Ljava/lang/String; = "folder_long_click_tip_key"

.field private static final FOLDER_POP_CLICK_TIP:Ljava/lang/String; = "folder_pop_click_tip_key"

.field public static final INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

.field private static final alarm:Lcom/android/launcher3/Alarm;

.field private static volatile hasInitial:Z

.field private static isSomethingShowing:Z

.field private static final stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

.field private static tipBigFolderConvert:Z

.field private static tipBigFolderScroll:Z

.field private static tipFolderLongClick:Z

.field private static tipFolderPopClick:Z

.field private static final tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    new-instance v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderConvertTip$lambda-5$lambda-4(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method public static final synthetic access$getStateListener$p()Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderPopClickTip$lambda-3$lambda-2(Landroid/content/Context;)V

    return-void
.end method

.method private static final bigFolderConvertTip$lambda-5$lambda-4(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 5

    const-string v0, "$bigFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const-string v1, "getLauncher(context).dragLayer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    sget-object p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string v2, "bigFolder.info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2c

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_2c
    return-void
.end method

.method private static final bigFolderScrollTip$lambda-7$lambda-6(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 4

    const-string v0, "$bigFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const-string v1, "getLauncher(context).dragLayer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip$lambda-7$lambda-6(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method private static final checkLongClickFolderTip$lambda-0(Landroid/view/View;Lcom/android/launcher3/Alarm;)V
    .registers 6

    const/4 p1, 0x0

    if-nez p0, :cond_5

    move-object v0, p1

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v2

    const-string v3, "BigFolderGuide"

    if-eqz v2, :cond_1f

    const-string p0, "checkLongClickFolderTip, but isPageInTransition"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string p0, "checkLongClickFolderTip, but is not normal"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_39

    const-string p0, "checkLongClickFolderTip, but is not resume"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    instance-of v1, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_50

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_51

    :cond_50
    move-object p0, p1

    :goto_51
    if-nez p0, :cond_54

    goto :goto_58

    :cond_54
    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->getFirstFolderIcon(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p1

    :goto_58
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->longClickFolderTip(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    :cond_5b
    return-void
.end method

.method public static synthetic d(Landroid/view/View;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkLongClickFolderTip$lambda-0(Landroid/view/View;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private static final folderPopClickTip$lambda-3$lambda-2(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const-string v1, "getLauncher(context).dragLayer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    return-void
.end method

.method private final getFirstFolderIcon(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 9

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lez v1, :cond_43

    :goto_11
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1b

    move-object v4, p1

    goto :goto_1f

    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    :goto_1f
    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_26

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_27

    :cond_26
    move-object v4, p1

    :goto_27
    if-eqz v4, :cond_3e

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3e

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v4, v2, :cond_3e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.launcher3.folder.OplusFolderIcon"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0

    :cond_3e
    if-lt v3, v1, :cond_41

    goto :goto_43

    :cond_41
    move v0, v3

    goto :goto_11

    :cond_43
    :goto_43
    return-object p1
.end method

.method private final removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V
    .registers 4

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1e

    :goto_b
    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v1, :cond_19

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1e

    :cond_19
    if-gez v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move p0, v0

    goto :goto_b

    :cond_1e
    :goto_1e
    return-void
.end method

.method private final showJsonAnim(Landroid/view/View;Ljava/lang/String;)V
    .registers 12

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    new-instance v3, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {v3, v1}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x5e2a29fb

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e6

    const v5, -0x2da73d83

    const-string v7, "dragLayer"

    const v8, 0x7f070186

    if-eq v4, v5, :cond_9d

    const v5, -0x1a15a0c5

    if-eq v4, v5, :cond_3f

    goto/16 :goto_ee

    :cond_3f
    const-string v4, "big_folder_scroll_tip_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto/16 :goto_ee

    :cond_49
    instance-of p2, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p2, :cond_50

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_50
    if-nez v6, :cond_53

    return-void

    :cond_53
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p2, 0x7f070189

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getBgRectInDragLayer(Lcom/android/launcher3/dragndrop/DragLayer;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v5, p2

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_81

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr p2, v4

    div-int/lit8 p1, p1, 0x2

    goto :goto_87

    :cond_81
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    div-int/lit8 p1, p1, 0x2

    :goto_87
    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const p1, 0x7f110004

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    if-eqz v1, :cond_96

    const/high16 p1, -0x3d4c0000  # -90.0f

    goto :goto_98

    :cond_96
    const/high16 p1, 0x42b40000  # 90.0f

    :goto_98
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_145

    :cond_9d
    const-string v4, "big_folder_convert_tip_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    goto :goto_ee

    :cond_a6
    instance-of p2, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p2, :cond_ad

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_ad
    if-nez v6, :cond_b0

    return-void

    :cond_b0
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v0, p1, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getBgRectInDragLayer(Lcom/android/launcher3/dragndrop/DragLayer;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v4, p1

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_d6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    goto :goto_dc

    :cond_d6
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    sub-int v1, p2, p1

    :goto_dc
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const p1, 0x7f110003

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_145

    :cond_e6
    const-string v4, "folder_pop_click_tip_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fb

    :goto_ee
    const-string/jumbo p0, "showJsonAnim, error key: "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigFolderGuide"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_fb
    instance-of p2, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p2, :cond_102

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    :cond_102
    if-nez v6, :cond_105

    return-void

    :cond_105
    const p1, 0x7f070187

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {p2, p1, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v6, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    const v5, 0x7f070188

    if-eqz v1, :cond_12f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v6, p1

    sub-int/2addr v1, v6

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_13a

    :cond_12f
    iget v1, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_13a
    iget p1, v4, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const p1, 0x7f110002

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    move-object v0, p2

    :goto_145
    const/4 p1, -0x1

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iput-boolean p0, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method private final updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    invoke-static {p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_56

    goto :goto_49

    :sswitch_d
    const-string p2, "folder_long_click_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_49

    :cond_16
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_55

    :sswitch_1c
    const-string p2, "big_folder_scroll_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_49

    :cond_25
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_55

    :sswitch_2b
    const-string p2, "big_folder_convert_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_49

    :cond_34
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_55

    :sswitch_3a
    const-string p2, "folder_pop_click_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_49

    :cond_43
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_55

    :goto_49
    const-string/jumbo p0, "updateAndRecordPref, error key: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigFolderGuide"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        -0x5e2a29fb -> :sswitch_3a
        -0x2da73d83 -> :sswitch_2b
        -0x1a15a0c5 -> :sswitch_1c
        0x430183f2 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public final bigFolderConvertTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 7

    const-string v0, "bigFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    const-string v3, "bigFolder.info"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v0

    if-le v0, v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_1e
    return-void

    :cond_1f
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_32

    goto :goto_41

    :cond_32
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_41

    :cond_39
    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v2

    if-ne v2, v1, :cond_41

    move v2, v1

    goto :goto_42

    :cond_41
    :goto_41
    move v2, v3

    :goto_42
    if-eqz v2, :cond_4c

    const-string p0, "BigFolderGuide"

    const-string p1, "bigFolderConvertTip, but isPageInTransition."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    new-instance v2, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12011e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    new-instance v3, Lcom/android/launcher3/folder/big/g;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/launcher3/folder/big/g;-><init>(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    const-string v1, "big_folder_convert_tip_key"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->showJsonAnim(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 8

    const-string v0, "bigFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_17

    goto :goto_21

    :cond_17
    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_21

    move v4, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v4, v3

    :goto_22
    const-string v5, "BigFolderGuide"

    if-eqz v4, :cond_2c

    const-string p0, "bigFolderScrollTip, but launcher is other state."

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v4

    if-nez v4, :cond_33

    return-void

    :cond_33
    if-nez v1, :cond_36

    goto :goto_45

    :cond_36
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-nez v1, :cond_3d

    goto :goto_45

    :cond_3d
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-ne v1, v2, :cond_45

    move v1, v2

    goto :goto_46

    :cond_45
    :goto_45
    move v1, v3

    :goto_46
    if-eqz v1, :cond_4e

    const-string p0, "bigFolderScrollTip, but isPageInTransition."

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120121

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    new-instance v2, Lcom/android/launcher3/folder/big/g;

    invoke-direct {v2, v0, p1, v3}, Lcom/android/launcher3/folder/big/g;-><init>(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    const-string v1, "big_folder_scroll_tip_key"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->showJsonAnim(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapHalfPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    const-string p1, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final checkLongClickFolderTip(Landroid/view/View;)V
    .registers 4

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    instance-of p0, p1, Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/CellLayout;

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-nez p0, :cond_12

    goto :goto_1a

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1a
    const-string p0, "checkLongClickFolderTip, screenId = "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BigFolderGuide"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher/folder/download/a;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/download/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    return-void
.end method

.method public final folderPopClickTip(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    goto :goto_2a

    :cond_1c
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_2a

    :cond_23
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-ne v1, v2, :cond_2a

    move v3, v2

    :cond_2a
    :goto_2a
    if-eqz v3, :cond_34

    const-string p0, "BigFolderGuide"

    const-string p1, "folderPopClickTip, but isPageInTransition."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120215

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    new-instance v2, Lcom/android/launcher/guide/j;

    invoke-direct {v2, v0}, Lcom/android/launcher/guide/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    new-instance v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide$folderPopClickTip$1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$folderPopClickTip$1;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string v1, "folder_pop_click_tip_key"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->showJsonAnim(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final getLifecycleObserver()Lcom/android/launcher/ILauncherLifecycleObserver;
    .registers 1

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    return-object p0
.end method

.method public final hasShowAllGuide()Z
    .registers 2

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    or-int/2addr p0, v0

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    or-int/2addr p0, v0

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasInitial:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_39

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasInitial:Z

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    const-string v1, "folder_long_click_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    const-string v1, "folder_pop_click_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    const-string v1, "big_folder_convert_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    const-string v1, "big_folder_scroll_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isSomethingShowing()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    return p0
.end method

.method public final longClickFolderTip(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    :cond_1b
    :goto_1b
    move v4, v3

    goto :goto_2b

    :cond_1d
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_1b

    :cond_24
    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-ne v4, v2, :cond_1b

    move v4, v2

    :goto_2b
    if-eqz v4, :cond_35

    const-string p0, "BigFolderGuide"

    const-string p1, "longClickFolderTip, but isPageInTransition"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    sget-object v4, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_48

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_48

    :cond_46
    move v4, v3

    goto :goto_49

    :cond_48
    :goto_48
    move v4, v2

    :goto_49
    if-nez v4, :cond_4c

    return-void

    :cond_4c
    new-instance v4, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v5, 0x7f12020d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_af

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v5

    const/high16 v7, 0x3f800000  # 1.0f

    cmpg-float v5, v5, v7

    if-nez v5, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v3

    :goto_7d
    if-nez v2, :cond_af

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {v4, p1, v6}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_b2

    :cond_af
    invoke-virtual {v4, p1, v6}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    :goto_b2
    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {p1, v4}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    invoke-virtual {p1, v4}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    const-string p1, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "folder_long_click_tip_key"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final resetInitState()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasInitial:Z

    return-void
.end method

.method public final setSomethingShowing(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    return-void
.end method

.method public final snapHalfPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapHalfPage()V

    :cond_16
    return-void
.end method

.method public final snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    move p0, v0

    :goto_1c
    if-nez p0, :cond_25

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(I)V

    :cond_25
    return-void
.end method
