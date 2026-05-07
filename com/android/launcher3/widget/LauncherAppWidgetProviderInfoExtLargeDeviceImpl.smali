.class public final Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtLargeDeviceImpl;
.super Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initSpans(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-le v0, v1, :cond_11

    move v0, v1

    :cond_11
    iput v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v0, v1, :cond_1a

    move v0, v1

    :cond_1a
    iput v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtOplusImpl;->getMHost()Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWrapper()Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;->setIsMinSizeFulfilled(Z)V

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz p0, :cond_46

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/WidgetUtils;->isOPMarketWidget(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_46

    iget p0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p2, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iput p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput p2, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    goto :goto_58

    :cond_46
    iget p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-le p0, v0, :cond_4d

    move p0, v0

    :cond_4d
    iput p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le p0, p2, :cond_56

    move p0, p2

    :cond_56
    iput p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    :goto_58
    return-void
.end method

.method public initSpansBeforeGetCellSize(Landroid/graphics/Point;Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 4

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceProfile"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/android/launcher/CellLayoutHelper;->getLargeDeviceCellSize(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;)Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    return-void
.end method
