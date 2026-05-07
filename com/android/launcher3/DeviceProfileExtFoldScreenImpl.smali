.class public final Lcom/android/launcher3/DeviceProfileExtFoldScreenImpl;
.super Lcom/android/launcher3/DeviceProfileExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarginTopResId(ZZ)I
    .registers 3

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    const p0, 0x7f0705ff

    goto :goto_c

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->getMarginTopResId(ZZ)I

    move-result p0

    :goto_c
    return p0
.end method

.method public getPaddingBottomResId(ZZ)I
    .registers 3

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    const p0, 0x7f070622

    goto :goto_c

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->getPaddingBottomResId(ZZ)I

    move-result p0

    :goto_c
    return p0
.end method

.method public isTablet(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 3

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowBounds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isTwoPanel(Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 3

    const-string/jumbo p0, "windowBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "LayoutUpgrade"

    const-string/jumbo p1, "support layout upgrade but has no config, use old layout"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_16
    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    iget-object v0, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p1, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result p0

    return p0
.end method

.method public needUpdateFolderCellSize()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public shouldScale(F)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
