.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHotseatBgPaddingHorizontal()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDockerExpandDisabled()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static final injectCellLayoutParamsAnimXTypeCommon(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p1, v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr p1, p3

    goto :goto_36

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    sub-int p1, p0, p3

    :goto_36
    return p1
.end method

.method public static final injectCellLayoutParamsAnimXTypeIn(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p1, v0, :cond_2f

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    add-int/2addr p1, p3

    goto :goto_36

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    add-int p1, p0, p3

    :goto_36
    return p1
.end method

.method public static final injectCellLayoutParamsAnimXTypeOut(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p1, v0, :cond_2f

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr p1, p3

    goto :goto_36

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    sub-int p1, p0, p3

    :goto_36
    return p1
.end method

.method public static final injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayoutLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xca

    if-ne p1, v1, :cond_3d

    iget p1, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p2

    add-int/2addr p2, p1

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    sub-int v0, p2, p1

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    div-int/2addr p1, p0

    return p1
.end method

.method public static final injectCellLayoutParamsx(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayoutLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_2a

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    mul-int/2addr p0, p1

    :goto_2a
    return p0
.end method

.method public static final injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_1d

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p1

    :goto_1d
    if-lez p0, :cond_26

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->getHotseatBgPaddingHorizontal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :cond_26
    return p0
.end method

.method public static final injectHotseatTargetWidthTypeToIn(Lcom/android/launcher3/OplusHotseat;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p1

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    goto :goto_1d

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, p0

    :goto_1d
    if-lez p1, :cond_26

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->getHotseatBgPaddingHorizontal()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    :cond_26
    return p1
.end method

.method public static final injectHotseatTargetWidthTypeToOut(Lcom/android/launcher3/OplusHotseat;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerViewInLogic()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    add-int/lit8 p1, p1, -0x2

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_1f

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p0, p1

    :goto_1f
    if-lez p0, :cond_28

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->getHotseatBgPaddingHorizontal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :cond_28
    return p0
.end method

.method public static final injectInitCellLayoutParams(ILandroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "child.tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v0, 0xca

    if-ne p1, v0, :cond_2a

    iput-boolean v1, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    goto :goto_30

    :cond_2a
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_30

    iput-boolean v1, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    :cond_30
    :goto_30
    const/16 p1, -0x65

    if-ne p0, p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    iput-boolean v1, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    return-void
.end method
