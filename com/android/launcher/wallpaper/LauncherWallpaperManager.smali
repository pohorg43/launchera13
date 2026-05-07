.class public final Lcom/android/launcher/wallpaper/LauncherWallpaperManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;
.implements Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;,
        Lcom/android/launcher/wallpaper/LauncherWallpaperManager$WallpaperChangeReceiver;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;

.field private static final DELAY_TO_USER_PRESENT:J = 0xbb8L

.field public static final LAUNCHER_TEXT_COLOR_VALUE:Ljava/lang/String; = "launcher_text_appearance"

.field private static final TAG:Ljava/lang/String; = "LauncherWallpaperManager"


# instance fields
.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

.field private final mWallpaperChangeReceiver$delegate:Ly2/e;

.field private mWallpaperHolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/wallpaper/WallpaperHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

.field private mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->Companion:Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    sget-object v0, Ly2/g;->c:Ly2/g;

    new-instance v1, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mWallpaperChangeReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mWallpaperChangeReceiver$2;-><init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperChangeReceiver$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/WallpaperBlur;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-direct {v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic access$getMUserPresentReceiver$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static final synthetic access$getMWallpaperHolderList$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getMWallpaperChangeReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperChangeReceiver$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private final registerUserPresentReceiver(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isGcWhenUserPresent()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {p1}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    new-instance v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;-><init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final unregisterUserPresentReceiver(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isGcWhenUserPresent()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :goto_11
    return-void
.end method


# virtual methods
.method public final getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectResultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V

    return-void
.end method

.method public final initTextThemeColor(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->initTextThemeColor(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public final isChildrenModeWpBright()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isChildrenModeWpBright()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public final isLiveWallpaper()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->isLiveWallpaper()Z

    move-result p0

    return p0
.end method

.method public final isStatusBarWpBright()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isStatusBarWpBright()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 4

    const-string/jumbo p1, "onColorsChanged, "

    const-string v0, "LauncherWallpaperManager"

    invoke-static {p2, p1, v0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    :cond_15
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p1, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setWallBitValue(I)V

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->tryLoadWallpaper(Z)V

    :cond_29
    return-void
.end method

.method public final onLauncherDestroy(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->getMWallpaperChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->unregisterUserPresentReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->removeColorsChangeListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/wallpaper/WallpaperHolder;

    invoke-interface {v0}, Lcom/android/launcher/wallpaper/WallpaperHolder;->onDestroy()V

    goto :goto_1a

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onLauncherResumed()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->reloadWallpaper(Z)V

    return-void
.end method

.method public final recycleWallpaperBlurCache()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    return-void
.end method

.method public final registerWallpaperChangeReceiver(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->getMWallpaperChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->addOnColorsChangedListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->registerUserPresentReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V

    return-void
.end method

.method public final setWallpaperBlurToCache(Landroid/graphics/Bitmap;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->setWallpaperBlurToCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final tryLoadWallpaper(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {v0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->ensureLoadWallpaper()V

    return-void
.end method

.method public wallpaperLoadSuccess(Landroid/graphics/Bitmap;ZLcom/android/launcher/Launcher;)V
    .registers 5

    const-string/jumbo v0, "wallpaperBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWallpaperBrightness(Landroid/graphics/Bitmap;Z)V

    invoke-static {p3}, Lcom/android/launcher3/folder/big/BigFolderUtil;->saveBigFolderBgParameter(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p2, p3}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWallpaperColor(Lcom/android/launcher/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher/wallpaper/WallpaperBlur;->preprocessBlurredWallpaper(Landroid/graphics/Bitmap;Lcom/android/launcher/Launcher;)V

    monitor-enter p1

    :try_start_1e
    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p0, p1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1

    throw p0
.end method
