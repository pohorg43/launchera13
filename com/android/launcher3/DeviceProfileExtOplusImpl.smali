.class public Lcom/android/launcher3/DeviceProfileExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/IDeviceProfileExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/IDeviceProfileExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/IDeviceProfileExt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/IDeviceProfileExt;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/IDeviceProfileExt;

    move-result-object p0

    return-object p0
.end method

.method public getFolderBottomPanelSize(ZZLandroid/content/res/Resources;)I
    .registers 6

    const-string/jumbo v0, "res"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f07063c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->getMarginTopResId(ZZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    const v0, 0x7f070626

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DeviceProfileExtOplusImpl;->getPaddingBottomResId(ZZ)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getMarginTopResId(ZZ)I
    .registers 3

    const p0, 0x7f0705fe

    return p0
.end method

.method public getPaddingBottomResId(ZZ)I
    .registers 3

    const p0, 0x7f070621

    return p0
.end method

.method public isTablet(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 3

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowBounds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result p0

    return p0
.end method

.method public isTwoPanel(Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 2

    const-string/jumbo p0, "windowBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public needUpdateFolderCellSize()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public shouldScale(F)Z
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
