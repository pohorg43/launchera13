.class Lcom/android/launcher/guide/appguide/AppGuideHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static final BASE_COLOR:I = -0x1000000

.field private static final IMAGE_OPLUS_SAMPLE:F = 8.0f

.field private static final KEY_SETTINGS_APP_GUIDE_SHOWED:Ljava/lang/String; = "key_settings_app_guide_showed"

.field private static final NUM_3:I = 0x3

.field private static final SCALE_X_1:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "AppGuideHelper"


# instance fields
.field private mAppGuideData:Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

.field private mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

.field private mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuideData:Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    new-instance p1, Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-direct {p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->setupListeners()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->lambda$setupListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->lambda$setupListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->lambda$setupListeners$0(Landroid/view/View;)V

    return-void
.end method

.method private closeAppGuide()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->hide()V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->markAppGuideShowed(Landroid/content/Context;)V

    return-void
.end method

.method public static createWindowAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3eb

    const v4, -0x7efffc00

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v1, 0x802

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const-string v2, "AppGuideHelper"

    if-eqz v1, :cond_53

    :try_start_1b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "layoutInDisplayCutoutMode"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3e

    goto :goto_53

    :catchall_3e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAppGuideView e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    :try_start_53
    sget v0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v6, v0}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_58
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_72

    :catch_59
    move-exception v0

    const-string/jumbo v1, "setHomeAndMenuKeyState e:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_72
    const-string v0, "PopupWindow: AppGuide"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public static synthetic d(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->lambda$setupListeners$3(Landroid/view/View;)V

    return-void
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000  # 8.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x3e000000  # 0.125f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->release()V

    return-object v0
.end method

.method public static getImageSampleColor(Landroid/graphics/Bitmap;)I
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_54

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_17

    move v9, v2

    goto :goto_18

    :cond_17
    move v9, v1

    :goto_18
    invoke-static {p0, v0, v0, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    mul-int p0, v8, v9

    new-array v1, p0, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_2c
    if-ge v0, p0, :cond_43

    aget v8, v1, v0

    ushr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v2, v9

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v4, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_43
    int-to-long v0, p0

    div-long/2addr v2, v0

    long-to-int p0, v2

    div-long/2addr v4, v0

    long-to-int v2, v4

    div-long/2addr v6, v0

    long-to-int v0, v6

    const/high16 v1, -0x1000000

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    :cond_54
    :goto_54
    return v0
.end method

.method private synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideClickIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->launchAppAndHide()V

    return-void
.end method

.method private synthetic lambda$setupListeners$1(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideClickClose(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->closeAppGuide()V

    return-void
.end method

.method private synthetic lambda$setupListeners$2(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideClickCard(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->launchAppAndHide()V

    return-void
.end method

.method private synthetic lambda$setupListeners$3(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideClickOutSide(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->closeAppGuide()V

    return-void
.end method

.method private launchAppAndHide()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->closeAppGuide()V

    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getIconView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static markAppGuideShowed(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_settings_app_guide_showed"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setupListeners()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setOnStateChangedListener(Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    new-instance v1, Lcom/android/launcher/guide/appguide/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/a;-><init>(Lcom/android/launcher/guide/appguide/AppGuideHelper;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setOnClickAppIconListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    new-instance v1, Lcom/android/launcher/guide/appguide/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/a;-><init>(Lcom/android/launcher/guide/appguide/AppGuideHelper;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setOnClickCloseBtnListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    new-instance v1, Lcom/android/launcher/guide/appguide/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/a;-><init>(Lcom/android/launcher/guide/appguide/AppGuideHelper;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setOnClickImageCardListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    new-instance v1, Lcom/android/launcher/guide/appguide/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/a;-><init>(Lcom/android/launcher/guide/appguide/AppGuideHelper;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static shouldShowAppGuide(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_settings_app_guide_showed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method


# virtual methods
.method public closeAppGuideView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->hideGuideView()V

    return-void
.end method

.method public getAppGuideData()Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuideData:Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    return-object p0
.end method

.method public getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideClickOutSide(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->closeAppGuide()V

    return-void
.end method

.method public initWithLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setLauncher(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public isPageShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onHided()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;->onHided(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->release()V

    return-void
.end method

.method public onShowed()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideShow(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;->onShowed(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    :cond_1a
    return-void
.end method

.method public onSizeChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;->onSizeChanged(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;->onReleased(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuideData:Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->getImageSource()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public setAnchor(Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setAnchor(Lcom/android/launcher3/OplusBubbleTextView;)V

    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuideData:Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    invoke-virtual {v1}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuideData:Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    invoke-virtual {v1}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->getImageSource()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;->mAppGuidePage:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->show()V

    return-void
.end method
