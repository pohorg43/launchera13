.class public Lcom/android/launcher3/icons/IconCacheExtImplV2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/IIconCacheExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/icons/IIconCacheExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/icons/IIconCacheExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_FANCY_ICON_CACHE_CAPACITY:I = 0x5

.field private static final SAVE_BITMAP_TO_LOCAL:Z = false

.field public static final TAG:Ljava/lang/String; = "IconCacheExtImplV2"


# instance fields
.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher/FancyIconKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/launcher3/icons/IconCache;

.field private mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

.field public mIconBitmapSize:I

.field private final mPromiseAppInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Lcom/android/launcher/model/data/PromiseAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;

    invoke-direct {v0}, Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mPromiseAppInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p0, "IconCacheExtImplV2"

    const-string v0, "oplus interface constrated end "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCacheExtImplV2;->lambda$getIcon$0(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 5

    iget v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIconBitmapSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setHwFeaturesInSwModeEnabled(Z)V

    iget p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIconBitmapSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static synthetic lambda$getIcon$0(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .registers 1

    return-object p0
.end method


# virtual methods
.method public applyCacheEntryNeedUpdateTitle(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .registers 2

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p0, :cond_27

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketRecommendAppClassName"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public attach(Lcom/android/launcher3/icons/IconCache;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    return-void
.end method

.method public cleanFancyIconEngine()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    return-void
.end method

.method public clearFancyDrawable()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v2, :cond_a

    check-cast v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onCleanUp()V

    goto :goto_a

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/icons/IIconCacheExt;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/android/launcher3/icons/IconCache;

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/IconCacheExtImplV2;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/icons/IIconCacheExt;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public getFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_10

    new-instance v0, Lcom/android/launcher/FancyIconKey;

    invoke-direct {v0, p1}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFancyIcons()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher/FancyIconKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public declared-synchronized getIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/Bitmap;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/icons/i;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, Lcom/android/launcher3/icons/i;-><init>(Landroid/content/pm/LauncherActivityInfo;I)V

    iget-object p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    iget-object v4, p1, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSpecificIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->getSpecificIconList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7f

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/android/launcher/layout/OplusAutoInstallParser;->Companion:Lcom/android/launcher/layout/OplusAutoInstallParser$Companion;

    const/4 v5, 0x1

    aget-object v6, v2, v5

    const/4 v7, 0x2

    aget-object v8, v2, v7

    iget-object v9, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    iget-object v9, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/launcher/layout/OplusAutoInstallParser$Companion;->getDrawableFromSpecificPartition(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string p1, "Using icon from "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v0, v2, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v3

    const-string v1, "IconCacheExtImplV2"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v4}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7f
    return-object v0
.end method

.method public declared-synchronized getTitleAndIconForPromiseAppInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    .registers 12
    .param p1  # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher/model/data/PromiseAppInfo;",
            ">;ZZ)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mPromiseAppInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p3, p2, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadFancyIconCache(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mHost:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/OplusUIEngine;->createAppsIconsCtrl(Landroid/content/Context;)Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    :cond_12
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    if-eqz p0, :cond_1b

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;->getIcon(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFancyIconCache packageName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " drawable = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconCacheExtImplV2"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public putFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    new-instance v0, Lcom/android/launcher/FancyIconKey;

    invoke-direct {v0, p1}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string p1, "putFancyIcon mFancyCache size is = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconCacheExtImplV2"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    if-eqz p1, :cond_1d

    new-instance v0, Lcom/android/launcher/FancyIconKey;

    invoke-direct {v0, p1}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v1, :cond_18

    check-cast p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onCleanUp()V

    :cond_18
    iget-object p0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public removeFancyIconAllLocation(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/FancyIconKey;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher/FancyIconKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher/FancyIconKey;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v3, :cond_4f

    check-cast v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onCleanUp()V

    :cond_4f
    iget-object v1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mFancyCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_55
    return-void
.end method

.method public saveDeepShortcutIconToSdcardWhenDebug(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 2

    return-void
.end method

.method public saveIconSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mIconBitmapSize:I

    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCacheExtImplV2;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method
