.class public Lcom/oplus/splitscreen/SplitScreenDragUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_FLAG:I = -0x1

.field private static final DRAG_PANEL_HEIGHT_FOLDER:I = 0x339

.field private static final DRAG_PANEL_WIDTH_FOLDER:I = 0x1ef

.field private static final DROP_SCALE_MAX_RATIO_OF_WIDTH_OR_HEIGHT:F = 0.8f

.field public static final DROP_TO_BOTTOM:I = 0x4

.field public static final DROP_TO_LEFT:I = 0x1

.field public static final DROP_TO_RIGHT:I = 0x3

.field public static final DROP_TO_TOP:I = 0x2

.field public static final DROP_UNKNOWN:I = -0x1

.field private static final EXTRA_SMART_SIDE_BAR_RECT:Ljava/lang/String; = "android.intent.extra.SMART_SIDE_BAR_RECT"

.field private static final EXTRA_WRITTING_PEN_LAUNCH:Ljava/lang/String; = "android.intent.extra.WRITTING_PEN_LAUNCH"

.field private static final INNER_DRAG_PANEL_ANIM_HEIGHT_SCALE:F = 0.3006f

.field private static final INNER_DRAG_PANEL_ANIM_WIDTH_SCALE:F = 0.093600005f

.field private static final OUT_DRAG_PANEL_ANIM_HEIGHT_SCALE:F = 0.14479999f

.field private static final OUT_DRAG_PANEL_ANIM_WIDTH_SCALE:F = 0.3632f

.field public static final SMART_SIDE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.oplus.splitscreen.SplitScreenDragUtils"

.field public static final WRITTING_PEN_FLAG:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPosToDirection(ZI)I
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_f

    if-nez p1, :cond_b

    move v0, v1

    goto :goto_16

    :cond_b
    if-ne p1, v1, :cond_16

    const/4 v0, 0x3

    goto :goto_16

    :cond_f
    if-nez p1, :cond_13

    const/4 v0, 0x2

    goto :goto_16

    :cond_13
    if-ne p1, v1, :cond_16

    const/4 v0, 0x4

    :cond_16
    :goto_16
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertPosToDirection  targetDirection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isLandScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getApplicationName(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_7

    :cond_6
    move-object p0, v0

    :goto_7
    if-eqz p0, :cond_b

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_b
    invoke-static {v0, p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getApplicationNameByPkgName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationNameByPkgName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    const-string v1, "getApplicationNameByPkgName error:"

    invoke-static {v1, p0, p1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static getDragPackName(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_1d

    :cond_1c
    move-object p0, v0

    :goto_1d
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0
.end method

.method public static hookPositionWithDeviceType(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)I
    .registers 11

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result p0

    goto :goto_29

    :cond_28
    move p0, v4

    :goto_29
    if-nez v0, :cond_2d

    if-eqz v1, :cond_3b

    :cond_2d
    if-eqz v0, :cond_31

    if-eqz v2, :cond_3b

    :cond_31
    if-eqz v1, :cond_35

    if-eqz p0, :cond_3b

    :cond_35
    if-eqz v0, :cond_40

    if-eqz v2, :cond_40

    if-nez v3, :cond_40

    :cond_3b
    const/4 v3, 0x1

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_41

    :cond_40
    const/4 v3, -0x1

    :goto_41
    sget-object v5, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDrop::hookPosition()  needHook="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",newPos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",defPos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",isFoldDev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isInner="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isTablet"

    const-string v7, ",isLand="

    invoke-static {v6, v2, v0, v1, v7}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_81

    return v3

    :cond_81
    return p1
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v0

    :goto_11
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_17
    const/4 p0, 0x0

    if-eqz v0, :cond_1d

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_1e

    :cond_1d
    move v1, p0

    :goto_1e
    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_25

    const/4 p0, 0x1

    :cond_25
    sget-object v1, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDarkMode() isDark="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isEncryptAndNoPassApp(Landroid/app/PendingIntent;I)Z
    .registers 9

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isPrivacySwitchStateEnable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getDragPackName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    move v2, v1

    :cond_22
    :goto_22
    sget-object v3, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    const-string v4, "isEncryptAndNoPassApp() noPass="

    const-string v5, ",isEnable="

    const-string v6, ",isEncryptedPackage="

    invoke-static {v4, v1, v5, v0, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",packName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",userId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isPrivacySwitchStateEnable(I)Z
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    const-string v1, "type_encrypt"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlEnabled(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception p0

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    const-string v1, "queryPrivacyAppList ex"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static parseDragFlag(Landroid/view/DragEvent;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    :try_start_3
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    goto :goto_b

    :catch_8
    move-exception p0

    goto :goto_32

    :cond_a
    move-object p0, v0

    :goto_b
    if-eqz p0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    goto :goto_14

    :cond_13
    move-object p0, v0

    :goto_14
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :cond_1a
    if-eqz v0, :cond_26

    const-string p0, "android.intent.extra.SMART_SIDE_BAR_RECT"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    if-eqz v0, :cond_48

    const-string p0, "android.intent.extra.WRITTING_PEN_LAUNCH"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_8

    if-eqz p0, :cond_48

    const/4 p0, 0x2

    return p0

    :goto_32
    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDragFlag()  parse extra failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/4 p0, -0x1

    return p0
.end method

.method public static queryPrivacyAppList(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    const-string v2, "type_encrypt"

    invoke-virtual {v1, v2, p0}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_19

    :catch_29
    move-exception p0

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    const-string v2, "queryPrivacyAppList ex"

    invoke-static {v2, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_31
    return-object v0
.end method


# virtual methods
.method public getDropTargetPosition(Lcom/oplus/splitscreen/DropAnimatorInfo;IIII)Lcom/oplus/splitscreen/DropAnimatorInfo;
    .registers 11

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez v0, :cond_2d

    if-eqz p0, :cond_2b

    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    goto :goto_2d

    :cond_2b
    move p0, v3

    goto :goto_30

    :cond_2d
    :goto_2d
    const p0, 0x3f4ccccd  # 0.8f

    :goto_30
    const/4 v0, 0x2

    if-eq p2, v0, :cond_60

    const/4 v1, 0x4

    if-ne p2, v1, :cond_37

    goto :goto_60

    :cond_37
    const/4 v1, 0x1

    if-eq p2, v1, :cond_40

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 p3, 0x0

    goto :goto_80

    :cond_40
    :goto_40
    int-to-float v2, p4

    mul-float v4, v2, p0

    float-to-int v4, v4

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/oplus/splitscreen/DropAnimatorInfo;->posHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/oplus/splitscreen/DropAnimatorInfo;->posWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    div-int/2addr p4, v0

    if-ne p2, v1, :cond_55

    div-int/lit8 p3, v2, 0x2

    sub-int/2addr p5, p3

    goto :goto_5a

    :cond_55
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v0, p3

    sub-int p5, v0, p5

    :goto_5a
    new-instance p3, Lcom/oplus/splitscreen/DropAnimatorInfo;

    invoke-direct {p3, p5, p4, v2, v4}, Lcom/oplus/splitscreen/DropAnimatorInfo;-><init>(IIII)V

    goto :goto_80

    :cond_60
    :goto_60
    int-to-float v1, p3

    mul-float/2addr v1, p0

    float-to-int v1, v1

    int-to-float v2, v1

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/oplus/splitscreen/DropAnimatorInfo;->posWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/oplus/splitscreen/DropAnimatorInfo;->posHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    div-int/2addr p3, v0

    if-ne p2, v0, :cond_75

    div-int/lit8 p4, v2, 0x2

    sub-int/2addr p5, p4

    goto :goto_7a

    :cond_75
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v0, p4

    sub-int p5, v0, p5

    :goto_7a
    new-instance p4, Lcom/oplus/splitscreen/DropAnimatorInfo;

    invoke-direct {p4, p3, p5, v1, v2}, Lcom/oplus/splitscreen/DropAnimatorInfo;-><init>(IIII)V

    move-object p3, p4

    :goto_80
    sget-object p4, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDropTargetPosition  startPos="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",endPos="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",targetDirection="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",maxScaleRatio="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public getPanelRect(IIZII)Landroid/graphics/Rect;
    .registers 6

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p3

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result p4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p5

    invoke-virtual {p5}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result p5

    if-eqz p3, :cond_34

    if-eqz p4, :cond_34

    if-nez p5, :cond_34

    int-to-float p1, p1

    const p3, 0x3dbfb15c  # 0.093600005f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p2

    const p2, 0x3e99e83e  # 0.3006f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4d

    :cond_34
    const p3, 0x3eb9f55a  # 0.3632f

    if-ge p1, p2, :cond_3b

    move p4, p1

    goto :goto_3c

    :cond_3b
    move p4, p2

    :goto_3c
    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    iput p3, p0, Landroid/graphics/Rect;->right:I

    const p3, 0x3e144673  # 0.14479999f

    if-le p1, p2, :cond_47

    goto :goto_48

    :cond_47
    move p1, p2

    :goto_48
    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :goto_4d
    return-object p0
.end method

.method public isValidDragMimetype(Landroid/view/DragEvent;)Z
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 p1, 0x0

    if-eqz p0, :cond_1c

    const-string v0, "application/vnd.android.shortcut"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "application/vnd.android.activity"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1b
    const/4 p1, 0x1

    :cond_1c
    return p1
.end method

.method public parseSmartSideBarRegion(Landroid/view/DragEvent;)Landroid/graphics/Rect;
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    :try_start_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    goto :goto_c

    :catch_9
    move-exception p1

    goto :goto_47

    :cond_b
    move-object p1, v0

    :goto_c
    if-eqz p1, :cond_13

    invoke-virtual {p1, p0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    goto :goto_14

    :cond_13
    move-object p1, v0

    :goto_14
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_9

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    const-string v1, "android.intent.extra.SMART_SIDE_BAR_RECT"

    if-eqz p1, :cond_25

    :try_start_20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_9

    goto :goto_26

    :cond_25
    move v2, p0

    :goto_26
    if-eqz v2, :cond_34

    :try_start_28
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_5f

    :catch_31
    move-exception p1

    move p0, v2

    goto :goto_47

    :cond_34
    const-string v1, "android.intent.extra.WRITTING_PEN_LAUNCH"

    if-eqz p1, :cond_3c

    :try_start_38
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_31

    :cond_3c
    if-eqz p0, :cond_5e

    :try_start_3e
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_9

    goto :goto_5e

    :goto_47
    sget-object v1, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSideBarRegion()  parse extra failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_5e
    :goto_5e
    move v2, p0

    :goto_5f
    move p0, v2

    :goto_60
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSmartSideBarRegion  -X  hasRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",sideBarRect="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
