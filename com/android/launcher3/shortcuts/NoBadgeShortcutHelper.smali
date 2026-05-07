.class public Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/shortcuts/IDynamicShortcut;


# static fields
.field private static final ENABLED_DYNAMIC_SHORTCUT_APPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ENABLED_DYNAMIC_SHORTCUT_APPS_SIGNATURE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCE_ADD:Ljava/lang/String; = "forceAdd"

.field private static final HOT_GAMES_CLASSNAME:Ljava/lang/String; = "com.oplus.game.empowerment.folder.gamelist.GameListActivity"

.field private static final HOT_GAMES_RECEIVER_PERMISSION:Ljava/lang/String; = "com.oplus.game.empowerment.folder_receiver"

.field public static final INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

.field private static final LAUNCHER_SUPPORT_DYNAMIC_ICON:Ljava/lang/String; = "launcher_support_dynamic_icon"

.field private static final MARKET_HEYTAP_CLASSNAME_HOTAPP:Ljava/lang/String; = "com.oppo.cdo.ui.external.desktop.DeskHotAppActivity"

.field private static final MARKET_HEYTAP_CLASSNAME_HOTGAME:Ljava/lang/String; = "com.oppo.cdo.ui.external.desktop.DeskHotGameActivity"

.field private static final MARKET_HEYTAP_PACKAGENAME:Ljava/lang/String; = "com.heytap.market"

.field private static final MARKET_HEYTAP_PACKAGENAME_SING:Ljava/lang/String; = "289CC3429F496460B66AC2A876C040091AAEF55B5EB942C2CE697EF3B1201459"

.field private static final MARKET_OPPO_CLASSNAME_HOTAPP:Ljava/lang/String; = "com.oppo.cdo.ui.external.desktop.DeskHotAppActivity"

.field private static final MARKET_OPPO_CLASSNAME_HOTGAME:Ljava/lang/String; = "com.oppo.cdo.ui.external.desktop.DeskHotGameActivity"

.field private static final MARKET_OPPO_PACKAGENAME:Ljava/lang/String; = "com.oppo.market"

.field private static final MARKET_OPPO_PACKAGENAME_SING:Ljava/lang/String; = "84D27678ADF5BABDC2A65D89DD2A77F08ABE16A0B76183324CCAA9B3D648465A"

.field private static final NO_CORNER_TYPE:Ljava/lang/String; = "isRealmeNoCornerType"

.field public static final SHORTCUT_CAN_ADDED:I = 0x0

.field public static final SHORTCUT_CAN_NOT_ADDED:I = 0x1

.field private static final SP_NAME_PKG_SHORTCUT_STATUS:Ljava/lang/String; = "heytap_market_shortcut_status"

.field private static final TAG:Ljava/lang/String; = "NoBadgeShortcutHelper"

.field private static final TURE:Ljava/lang/String; = "true"


# instance fields
.field private mLauncherSupportDynamicIcon:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS_SIGNATURE:Ljava/util/Map;

    new-instance v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-direct {v0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->mLauncherSupportDynamicIcon:Ljava/lang/String;

    return-void
.end method

.method private assertWorkerThread()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_d

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_23

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result p0

    return p0

    :cond_b
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->findLastAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result p0

    return p0
.end method

.method private findLastAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_13

    :cond_24
    invoke-virtual {p1, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findLastVacantCell([III)Z

    move-result p0

    return p0
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_13

    :cond_24
    invoke-virtual {p1, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p0

    return p0
.end method

.method public static getEnabledDynamicShortcutSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "NoBadgeShortcutHelper"

    const-string v1, ""

    if-nez p0, :cond_c

    :try_start_6
    const-string p0, "getEnabledDynamicShortcutSignature  context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x8000000

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p0, :cond_20

    const-string p0, "getEnabledDynamicShortcutSignature pkgInfo.signatures is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    const-string p1, "SHA256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3d

    return-object p0

    :catch_3d
    return-object v1
.end method

.method private isDynamicComponent(Landroid/content/ComponentName;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p0, 0x1

    :cond_21
    return p0
.end method

.method private isDynamicShortCutInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isDynamicComponent(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method private isGameShortCutInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_b

    return p0

    :cond_b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.oplus.game.empowerment.folder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "com.oplus.game.empowerment.folder.gamelist.GameListActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p0, 0x1

    :cond_24
    return p0
.end method


# virtual methods
.method public findSpaceForHeytapMarketItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;I)[I
    .registers 16

    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->assertWorkerThread()V

    new-instance p4, Landroid/util/LongSparseArray;

    invoke-direct {p4}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {p5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p6

    monitor-enter p2

    :try_start_15
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_1b

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_63

    :cond_48
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v3, v3

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_5e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v4, v4

    invoke-virtual {p4, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_62
    const/4 v2, 0x0

    :goto_63
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_15 .. :try_end_64} :catchall_cd

    const/4 p2, 0x2

    new-array p6, p2, [I

    invoke-virtual {p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    iget v7, p5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 p5, 0x1

    const/4 v1, 0x0

    if-eqz v2, :cond_7e

    iget p0, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aput p1, p6, v1

    iget p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aput p1, p6, p5

    goto :goto_a6

    :cond_7e
    invoke-virtual {p3}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_86

    move v2, v1

    goto :goto_88

    :cond_86
    add-int/lit8 v2, v0, -0x1

    :goto_88
    if-ge v2, v0, :cond_a5

    invoke-virtual {p3, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p3

    int-to-long v3, p3

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Ljava/util/ArrayList;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->findAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    const-string p0, "NoBadgeShortcutHelper"

    const-string p1, "findSpaceForItem, use last screen index : "

    invoke-static {p1, v2, p0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    move p0, p3

    goto :goto_a6

    :cond_a5
    move p0, v1

    :goto_a6
    const-string p1, "NoBadgeShortcutHelper"

    const-string p3, "screenId = "

    const-string p4, ", x = "

    invoke-static {p3, p0, p4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p4, p6, v1

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", y = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p6, p5

    invoke-static {p3, p4, p1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    aput p0, p1, v1

    aget p0, p6, v1

    aput p0, p1, p5

    aget p0, p6, p5

    aput p0, p1, p2

    return-object p1

    :catchall_cd
    move-exception p0

    :try_start_ce
    monitor-exit p2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0
.end method

.method public hasHotGameShortCutPermission(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_b

    return v0

    :cond_b
    invoke-direct {p0, p2}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isDynamicComponent(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oplus.game.empowerment.folder_receiver"

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method public initHeytapMarketShortcut()V
    .registers 7

    const-string p0, "NoBadgeShortcutHelper"

    const-string v0, "initHeytapMarketShortcut"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_support_dynamic_icon"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.oppo.cdo.ui.external.desktop.DeskHotAppActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.cdo.ui.external.desktop.DeskHotGameActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS:Ljava/util/Map;

    const-string v4, "com.heytap.market"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS_SIGNATURE:Ljava/util/Map;

    const-string v5, "289CC3429F496460B66AC2A876C040091AAEF55B5EB942C2CE697EF3B1201459"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oppo.market"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "84D27678ADF5BABDC2A65D89DD2A77F08ABE16A0B76183324CCAA9B3D648465A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.oplus.game.empowerment.folder.gamelist.GameListActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oplus.game.empowerment.folder"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B0A9BBFC05EEE5E7D0A2C97C030586E15BB3301152078F54473BB82DF6D8C818"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENABLED_DYNAMIC_SHORTCUT_APPS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",ENABLED_DYNAMIC_SHORTCUT_APPS_SIGNATURE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    return-void
.end method

.method public isCanAddedNoCornerShortcutItem(Landroid/content/pm/LauncherApps$PinItemRequest;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_47

    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    if-eqz p0, :cond_47

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "isCanAddedNoCornerShortcutItem className = "

    const-string v2, "NoBadgeShortcutHelper"

    invoke-static {v1, p0, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->readHeytapMarketShortcutStatus(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_47

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isForceAddShortcut(Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->writeHeytapMarketShortcutStatus(Ljava/lang/String;I)V

    :cond_47
    :goto_47
    return v0
.end method

.method public isDynamicSignature(Landroid/content/ComponentName;)Z
    .registers 6

    const/4 p0, 0x0

    const-string v0, "NoBadgeShortcutHelper"

    if-nez p1, :cond_b

    const-string p1, "componentName is NULL"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is not whiteName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_2c
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->getEnabledDynamicShortcutSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_5a

    :cond_41
    sget-object v2, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS_SIGNATURE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string p1, "ENABLED_DYNAMIC_SHORTCUT_APPS_SIGNATURE is NULL"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_4f
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5a
    :goto_5a
    const-string p1, "itemPackageName or itemSignature is empty"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isForceAddShortcut(Landroid/content/pm/ShortcutInfo;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_b

    const-string p1, "NoBadgeShortcutHelper"

    const-string v0, "ShortcutInfo is null at isForceAddShortcut"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v0, "forceAdd"

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :cond_17
    return p0
.end method

.method public isHeytapMarketPopupShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .registers 3

    if-nez p2, :cond_10

    invoke-direct {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isDynamicShortCutInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-direct {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isGameShortCutInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isSupportHeytapMarketShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isDynamicShortCutInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isSupportHeytapMarketShortcut()Z

    move-result p0

    if-nez p0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->ENABLED_DYNAMIC_SHORTCUT_APPS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    move v1, v3

    goto :goto_32

    :cond_31
    move v1, v0

    :goto_32
    if-nez v1, :cond_35

    return v0

    :cond_35
    const/4 v2, 0x0

    monitor-enter p2

    :try_start_37
    iget-object v4, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x64

    if-ne v6, v7, :cond_3d

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    move-object v2, v5

    :cond_6a
    monitor-exit p2

    if-eqz v1, :cond_70

    if-eqz v2, :cond_70

    move v0, v3

    :cond_70
    return v0

    :catchall_71
    move-exception p0

    monitor-exit p2
    :try_end_73
    .catchall {:try_start_37 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "NoBadgeShortcutHelper"

    if-nez p1, :cond_b

    const-string p0, "ShortcutInfo is null at isHeytapMarketShortcutType"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isSupportHeytapMarketShortcut()Z

    move-result v2

    if-nez v2, :cond_17

    const-string p0, "ShortcutInfo is null22 at isHeytapMarketShortcutType"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_24

    const-string p0, "isRealmeNoCornerType"

    invoke-virtual {v2, p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_54

    :cond_24
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_30

    const-string p0, "isHeytapMarketShortcutType false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_30
    const-string v0, "ShortcutInfo componentName packageName = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "className = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isDynamicComponent(Landroid/content/ComponentName;)Z

    move-result p0

    :goto_54
    return p0
.end method

.method public isMarketIconCanReplaceByShortcut(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_3c

    if-nez p2, :cond_6

    goto :goto_3c

    :cond_6
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p1, :cond_3c

    if-nez p2, :cond_13

    goto :goto_3c

    :cond_13
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 p0, 0x1

    :cond_3c
    :goto_3c
    return p0
.end method

.method public isSupportHeytapMarketShortcut()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->mLauncherSupportDynamicIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_support_dynamic_icon"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->mLauncherSupportDynamicIcon:Ljava/lang/String;

    :cond_18
    iget-object p0, p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->mLauncherSupportDynamicIcon:Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public readHeytapMarketShortcutStatus(Ljava/lang/String;)I
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "heytap_market_shortcut_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public sendUpdateShortcutBroadcast()V
    .registers 4

    const-string p0, "NoBadgeShortcutHelper"

    const-string v0, "sendUpdateShortcutBroadcast"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.LAUNCHER_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.oplus.game.empowerment.folder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.oplus.game.empowerment.folder_receiver"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    const-string v0, "onLauncherStarted -- Exception:"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method public writeHeytapMarketShortcutStatus(Ljava/lang/String;I)V
    .registers 5

    const-string p0, "NoBadgeShortcutHelper"

    if-eqz p2, :cond_e

    const/4 v0, 0x1

    if-eq v0, p2, :cond_e

    const-string/jumbo p1, "writeHeytapMarketShortcutStatus status invalid, status = "

    invoke-static {p1, p2, p0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo p1, "writeShortCutStatus keyName is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "heytap_market_shortcut_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
