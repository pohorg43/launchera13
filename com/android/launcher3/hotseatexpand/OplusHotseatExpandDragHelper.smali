.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;

.field private static final TAG:Ljava/lang/String; = "OplusHotseatExpandDragHelper"

.field private static dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHotseatExpandAreaPositionX(Lcom/android/launcher3/OplusHotseat;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerView()Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusHotseat;->getFirstExpandItem(I)Landroid/view/View;

    move-result-object p0

    :goto_15
    move-object v1, p0

    :cond_16
    if-nez v1, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_1c
    aget p0, v0, v2

    return p0

    nop

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final hotseatExpandAreaShouldNotAcceptDropAndToast(Lcom/android/launcher3/DropTarget$DragObject;FLcom/android/launcher3/CellLayout;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dragObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setAddedDividerForDragInFlag(Z)V

    if-eqz p2, :cond_57

    instance-of p2, p2, Lcom/android/launcher3/OplusHotseat;

    if-eqz p2, :cond_57

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->getHotseatExpandAreaPositionX(Lcom/android/launcher3/OplusHotseat;)I

    move-result p2

    if-lez p2, :cond_57

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_57

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p2, -0x65

    if-ne p1, p2, :cond_46

    sput-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_46
    const p0, 0x7f120266

    invoke-static {v0, p0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    const-string p0, "Hotseat_expand"

    const-string p1, "OplusHotseatExpandDragHelper"

    const-string p2, "not support drag to expand area!"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_57
    return v1
.end method

.method public static final hotseatExpandAreaShouldNotReorderAlarm(FLcom/android/launcher3/CellLayout;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    if-eqz p1, :cond_31

    instance-of p1, p1, Lcom/android/launcher3/OplusHotseat;

    if-eqz p1, :cond_31

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->getHotseatExpandAreaPositionX(Lcom/android/launcher3/OplusHotseat;)I

    move-result p1

    if-lez p1, :cond_31

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1
.end method

.method public static final hotseatExpandItemShouldNotDragOutAndToast(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    if-eqz p0, :cond_45

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0xca

    const/4 v4, 0x1

    if-ne v2, v3, :cond_25

    move v2, v4

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    if-eqz v2, :cond_31

    if-eqz p1, :cond_30

    const p0, 0x7f120267

    invoke-static {v0, p0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_30
    return v4

    :cond_31
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x65

    if-ne p0, p1, :cond_45

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-nez p0, :cond_3e

    goto :goto_45

    :cond_3e
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result p0

    if-ne p0, v4, :cond_45

    move v1, v4

    :cond_45
    :goto_45
    return v1
.end method

.method public static final hotseatNormalAreaOutOfSpace(Lcom/android/launcher3/OplusHotseat;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result p0

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->getHotseatNormalItemMaxCount()I

    move-result v0

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public static final isDragHotseatExpandItem(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    :goto_e
    if-nez p0, :cond_11

    return v1

    :cond_11
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p0, v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static final isDragOverDockerExpandArea(Lcom/android/launcher3/OplusHotseat;F)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->getHotseatExpandAreaPositionX(Lcom/android/launcher3/OplusHotseat;)I

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    :cond_18
    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_28

    const-string p0, "Hotseat_expand"

    const-string p1, "OplusHotseatExpandDragHelper"

    const-string v0, "drag over expand area!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static final isInterceptDragDuringExpandAnimating(Lcom/android/launcher/Launcher;Landroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    :cond_13
    instance-of p1, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p1, :cond_18

    return v1

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public static final noNeedAnimForDragFromHotseatToExpandArea()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final rectifySameView(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;)Landroid/view/View;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_11

    return-object p1

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "rectifySameView:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandDragHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v3, "container.getChildAt(i)"

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    const/4 v5, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_68

    move v6, v5

    :goto_32
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_63

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    sget-object v10, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v10, :cond_52

    :cond_50
    move v9, v5

    goto :goto_57

    :cond_52
    iget v10, v10, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v9, v10, :cond_50

    const/4 v9, 0x1

    :goto_57
    if-eqz v9, :cond_63

    const-string p0, "rectify dragFromHotseatToExpandAreaItem SameView:"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_63
    if-lt v7, v0, :cond_66

    goto :goto_68

    :cond_66
    move v6, v7

    goto :goto_32

    :cond_68
    :goto_68
    instance-of v0, p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-eqz v0, :cond_ac

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-eqz v0, :cond_ac

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_ac

    :goto_7f
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a7

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v9, v0, :cond_a7

    if-eq p1, v5, :cond_a7

    const-string p0, "rectify dividerView SameView:"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_a7
    if-lt v7, v6, :cond_aa

    goto :goto_ac

    :cond_aa
    move v5, v7

    goto :goto_7f

    :cond_ac
    :goto_ac
    return-object p1
.end method

.method public static final resetDragFromHotseatToExpandAreaItem()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final getDragFromHotseatToExpandAreaItem()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final setDragFromHotseatToExpandAreaItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->dragFromHotseatToExpandAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method
