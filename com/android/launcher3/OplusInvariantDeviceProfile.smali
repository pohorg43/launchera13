.class public Lcom/android/launcher3/OplusInvariantDeviceProfile;
.super Lcom/android/launcher3/InvariantDeviceProfile;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;,
        Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;
    }
.end annotation


# static fields
.field public static final CHANGE_FLAG_MANUAL:I = 0x8

.field public static final CHANGE_FLAG_TO_FIRST_PAGE:I = 0x10

.field public static final GENERAL_GRID_OPTION_NAME:Ljava/lang/String; = "General"

.field private static final NUM_ALL_APP_COLUMNS_FOUR:I = 0x4

.field private static final NUM_BIG_SIMPLE_FOLDER_ROW:I = 0x3

.field private static final NUM_SIMPLE_FOLDER_COLUMN:I = 0x3

.field private static final NUM_SIMPLE_FOLDER_ROW:I = 0x4

.field public static final SIMPLE_GRID_OPTION_NAME:Ljava/lang/String; = "Simple"


# instance fields
.field public allAppsCellHeightDp:F

.field public cellLayoutPadding:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public currentStandardModeNumHotseatIcons:I

.field public folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

.field public gridCellPadding:F

.field public hotseatHeightDp:F

.field public hotseatMarginBottomPx:I

.field public hotseatPaddingBottomDp:F

.field public hotseatPaddingTopDp:F

.field public iconDrawablePaddingPx:F

.field public iconTextHeightDp:F

.field public indicatorHeightPx:I

.field public indicatorNumberTextSizePx:I

.field public indicatorSpacingPx:I

.field public indicatorWidthPx:I

.field public landscapeIconDrawablePaddingPx:F

.field public mAdjustPaddingBottomForEnterMultiMode:I

.field private mAllDisplayOption:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;"
        }
    .end annotation
.end field

.field public mFastScrollerWidth:I

.field private mInitChangeFlags:I

.field private mNavModeMonitor:Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;

.field public numFolderPreview:I

.field public systemShortcutItemHeight:I

.field public textStyleBold:Z

.field public workspaceIconPaddingTopPx:I

.field public workspacePaddingLRDp:F

.field public workspacePaddingTop:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAllDisplayOption:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAllDisplayOption:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAllDisplayOption:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAllDisplayOption:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/OplusInvariantDeviceProfile;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->lambda$setCurrentGridManual$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static injectDisplayOptionAttr(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-class v0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;

    invoke-static {p2, v0}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    check-cast p2, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_f
    :goto_f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_3b

    :cond_1c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder-display-option"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {v1, p2, p0, v2}, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->setFolder(Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;)V

    goto :goto_f

    :cond_3b
    return-void
.end method

.method private synthetic lambda$setCurrentGridManual$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->onConfigChangedManual(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private onConfigChangedManual(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBestDeviceProfile(Z)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 6

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p1, :cond_2f

    int-to-float p1, v2

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0

    :cond_2f
    int-to-float p1, v0

    int-to-float v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getHotSeatMaxIconNum()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    return p0
.end method

.method public getLandscapeProfile()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getBestDeviceProfile(Z)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getPortraitProfile()Lcom/android/launcher3/OplusDeviceProfile;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getBestDeviceProfile(Z)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspaceMaxIconNum()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getWorkspacePageAndHotSeatMaxIconNum()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public initGridEnd()V
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    :cond_c
    const-string v0, "initGridEnd updateHotseatNumsIfNeeded numShownHotseatIcons:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    const-string v1, "Hotseat_expand"

    const-string v2, "IDP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public injectDeviceProfileBuilder(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;
    .registers 5

    new-instance v0, Lcom/android/launcher3/DeviceProfile$Builder;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeviceProfile$Builder;->setUseTwoPanels(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p0

    return-object p0
.end method

.method public injectInitGrid(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {p1, v1, v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutXY(Landroid/content/Context;II)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_29

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    goto :goto_2c

    :cond_29
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    :goto_2c
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    :cond_2e
    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    goto :goto_6b

    :cond_35
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_41
    invoke-static {p1}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object p1

    const-string v0, "initGridOption -- layout = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDP"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    :cond_65
    iget p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    :goto_6b
    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    return-void
.end method

.method public injectInitGridForCustomAttr(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V
    .registers 7

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderPreview:I

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->fastScrollerWidth:I

    iput p2, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mFastScrollerWidth:I

    iget p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {p2, v0}, Lcom/android/launcher/UiConfig;->setColsAndRows(II)V

    iget-object p2, p3, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    const-class p3, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;

    invoke-static {p4, p3}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p3

    const-string v0, "IDP"

    if-eqz p3, :cond_cd

    check-cast p4, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$000(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->gridCellPadding:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$100(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspacePaddingLRDp:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$200(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspacePaddingTop:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$300(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->cellLayoutPadding:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$400(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatPaddingTopDp:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$500(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatPaddingBottomDp:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$600(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->landscapeIconDrawablePaddingPx:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$700(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->iconDrawablePaddingPx:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$800(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->allAppsCellHeightDp:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$900(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatHeightDp:F

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1000(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorWidthPx:I

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1100(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorHeightPx:I

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1200(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorSpacingPx:I

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1300(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorNumberTextSizePx:I

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1400(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1500(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->systemShortcutItemHeight:I

    iget-object p3, p4, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    if-eqz p3, :cond_a1

    iput-object p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    :cond_a1
    const-string p3, "folderDisplayOption: "

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->folderDisplayOption:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1600(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->workspaceIconPaddingTopPx:I

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1700(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    invoke-static {p3, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->hotseatMarginBottomPx:I

    invoke-static {p4}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->access$1800(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->iconTextHeightDp:F

    :cond_cd
    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string p4, "layout_cellcount_x"

    invoke-interface {p3, p4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_e4

    const-string p4, "layout_cellcount_y"

    invoke-interface {p3, p4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_e4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    :cond_e4
    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher/operators/Customizer;->getWorkspaceXmlResId(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_f0

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    :cond_f0
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_120

    const-string p1, "Cols: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Rows: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Icon size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    return-void
.end method

.method public injectOnConfigChanged(I)I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    if-eqz v0, :cond_8

    or-int/2addr p1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    :cond_8
    return p1
.end method

.method public isNavigationModeChanged()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNavigationModeChanged(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isScreenSizeChanged(Landroid/content/Context;)Z
    .registers 7

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_36

    move p1, v2

    goto :goto_37

    :cond_36
    move p1, v3

    :goto_37
    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getLandscapeProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-eq p0, v1, :cond_4b

    goto :goto_4c

    :cond_42
    invoke-virtual {p0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getPortraitProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-eq p0, v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :goto_4c
    const-string p0, "isScreenSizeChanged,"

    const-string v3, ",landScape:"

    const-string v4, ", smallside:"

    invoke-static {p0, v2, v3, p1, v4}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", largeSide:"

    const-string v3, "IDP"

    invoke-static {p0, v0, p1, v1, v3}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method public setCurrentGrid(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mInitChangeFlags:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentGridManual(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/InvariantDeviceProfile;->getGridOptionName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/t0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/t0;-><init>(Lcom/android/launcher3/OplusInvariantDeviceProfile;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateNumShownHotseatIcons(I)Z
    .registers 8

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    :cond_e
    const-string/jumbo v2, "updateNumShownHotseatIcons,numShownHotseatIcons:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    const-string v4, ",correctNumShownHotseatIcons:"

    const-string v5, ",foldingMode:"

    invoke-static {v2, v3, v4, v0, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Hotseat_expand"

    invoke-static {v2, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-eq p1, v0, :cond_31

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method
