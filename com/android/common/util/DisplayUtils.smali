.class public Lcom/android/common/util/DisplayUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MIN_WIDTH_FOR_FLIP_DEVICE_SMALL_SCREEN:I = 0x1f4

.field private static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field private static final SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final SYSTEM_FOLDING_MODE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayUtils"

.field private static sMinWidthForSmallScreen:I = 0x7fffffff


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfNeedUpdate(Lcom/android/launcher/Launcher;II)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;II)Z

    move-result p0

    return p0
.end method

.method private static checkIfNeedUpdate(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;II)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "DisplayUtils"

    if-eqz p0, :cond_a2

    if-nez p1, :cond_9

    goto/16 :goto_a2

    :cond_9
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, p2, :cond_37

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v3, p3, :cond_37

    sget v3, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    if-ne v3, p2, :cond_37

    sget v3, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    if-ne v3, p3, :cond_37

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ne v3, p2, :cond_37

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ne v3, p3, :cond_37

    invoke-static {p2, p3}, Lcom/android/common/util/OplusFoldStateHelper;->isFoldingModeMismatchSizeInfo(II)Z

    move-result p2

    if-eqz p2, :cond_a1

    :cond_37
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_9f

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "checkIfNeedUpdate"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ", Bounds: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", DisplayInfo.realSize: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->realSize:Landroid/graphics/Point;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", ScreenInfo.realW-H: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", DeviceProfile.W-H: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isFoldScreenExpanded: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    const/4 p0, 0x1

    return p0

    :cond_a1
    return v0

    :cond_a2
    :goto_a2
    const-string p0, "checkIfNeedUpdate failed, launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getMinWidthForSmallScreen()I
    .registers 2

    sget v0, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/DisplayUtils;->initSmallScreenSizeForMultiScreen(Landroid/content/Context;)V

    :cond_e
    sget v0, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    return v0
.end method

.method private static initSmallScreenSizeForMultiScreen(Landroid/content/Context;)V
    .registers 5

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_2d

    aget-object v2, p0, v1

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget v3, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    if-ge v2, v3, :cond_2a

    sput v2, Lcom/android/common/util/DisplayUtils;->sMinWidthForSmallScreen:I

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2d
    return-void
.end method

.method public static isFlipDeviceSubScreenProfile(Lcom/android/launcher3/DeviceProfile;)Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_14

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ge p0, v2, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static isSmallScreen()Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "oplus_system_folding_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1d

    move v1, v3

    :cond_1d
    return v1
.end method

.method public static updateDisplayInfoIfNeeded(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->realSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->realSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1, v1, v2}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;II)Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "DisplayUtils"

    const-string/jumbo p1, "updateDisplayInfoIfNeeded(), DisplayInfo not right, need notify displayChanged!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->onDisplayChanged()V

    :cond_36
    return-void
.end method

.method public static updateIDPAndRebindIfNeeded(Lcom/android/launcher/Launcher;Z)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v1, "DisplayUtils"

    if-nez p1, :cond_31

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {p0, v2, v3}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;II)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_31

    :cond_16
    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result p1

    if-nez p1, :cond_51

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string p0, "Hotseat_expand"

    const-string/jumbo p1, "no need update idp,setEnableUpdateExpandFlag true"

    invoke-static {p0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "updateIDPAndRebindIfNeeded(), DeviceProfile not right, need updateIdp! forceUpdateIdp: "

    invoke-static {v2, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_3d
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->initTargetIdpGrid()V

    iget-object p1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    :cond_51
    :goto_51
    return-void
.end method

.method public static updateScreenInfoIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget v0, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    sget v1, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;II)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "DisplayUtils"

    const-string/jumbo v1, "updateScreenInfoIfNeeded(), ScreenInfo not right, need initScreenData!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    :cond_22
    return-void
.end method
