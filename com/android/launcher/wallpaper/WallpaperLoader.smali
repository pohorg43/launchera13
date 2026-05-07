.class public final Lcom/android/launcher/wallpaper/WallpaperLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/WallpaperHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;,
        Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;,
        Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

.field private static final DEBUG:Z

.field private static final DELAY_TO_SCREENSHOT_WALLPAPER:J = 0x5dcL

.field private static final ENSURE_DELAY:J = 0x7d0L

.field private static final LARGE_AND_SMALL_SCREEN_THRESHOLD_IN_FOLD_DEVICE:D = 1.5

.field private static final LOAD_WALLPAPER_RETRY_INTERVAL:J = 0x14L

.field public static final SAMPLE_SIZE:I = 0x4

.field public static final SETTINGS_WALLPAPER_LAYER:Ljava/lang/String; = "LAYER_WALLPAPER"

.field private static final TAG:Ljava/lang/String; = "WallpaperLoader"


# instance fields
.field private final mDetermineToLoadWallpaperRunnable$delegate:Ly2/e;

.field private mIsLiveWallpaper:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLoadWallpaperRunnable$delegate:Ly2/e;

.field private mWallpaperLoadSuccessImp:Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadSuccessImp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Ly2/g;->c:Ly2/g;

    new-instance v1, Lcom/android/launcher/wallpaper/WallpaperLoader$mDetermineToLoadWallpaperRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$mDetermineToLoadWallpaperRunnable$2;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mDetermineToLoadWallpaperRunnable$delegate:Ly2/e;

    new-instance v1, Lcom/android/launcher/wallpaper/WallpaperLoader$mLoadWallpaperRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$mLoadWallpaperRunnable$2;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperRunnable$delegate:Ly2/e;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/oplus/util/OplusExecutors;->WALLPAPER_MANAGER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-string v0, "WALLPAPER_MANAGER_EXECUTOR.handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWallpaperLoadSuccessImp:Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper$lambda-0(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V

    return-void
.end method

.method public static final synthetic access$getLauncher(Lcom/android/launcher/wallpaper/WallpaperLoader;)Lcom/android/launcher/Launcher;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadWallpaperBitmap(Lcom/android/launcher/wallpaper/WallpaperLoader;Lcom/android/launcher/Launcher;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader;->loadWallpaperBitmap(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method private static final determineToLoadWallpaper$lambda-0(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V
    .registers 5

    const-string v0, "$cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWallpaperBrightness onGlobalLayout , cellLayout2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WallpaperLoader"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    invoke-virtual {p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V

    return-void
.end method

.method private final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method private final getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mDetermineToLoadWallpaperRunnable$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperRunnable$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    return-object p0
.end method

.method public static final isFlipDeviceClosed(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final loadWallpaperBitmap(Lcom/android/launcher/Launcher;Z)V
    .registers 15

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    if-eqz p2, :cond_1a

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    :cond_1a
    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    const-class v0, Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-static {p2, v0}, Lcom/android/launcher/wallpaper/WallpaperBitmapManager;->notifyWallpaperChanged(ZLjava/lang/Class;)V

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    const-string v0, "WallpaperLoader"

    if-eqz p2, :cond_2e

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    const-string v1, "initWallpaperInfo -- mIsLiveWallpaper = "

    invoke-static {p2, v1, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    const-string p0, "loadWallpaperBitmap is not allowed running in main thread"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-virtual {p2, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4b

    return-void

    :cond_4b
    const-wide/16 v4, 0x8

    const-string p2, "loadWallpaper"

    invoke-static {v4, v5, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    if-eqz p2, :cond_5e

    const p2, 0x3e4ccccd  # 0.2f

    invoke-static {p1, p2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_6b

    :cond_5e
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getStaticWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_6b
    const-string v1, "loadWallpaperBitmap result, "

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7d

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_eb

    :cond_7d
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v7, v1

    int-to-float v8, v6

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000  # 1.0f

    cmpg-float v8, v7, v8

    if-nez v8, :cond_a8

    move v8, v3

    goto :goto_a9

    :cond_a8
    move v8, v2

    :goto_a9
    if-nez v8, :cond_e4

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff8000000000000L  # 1.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_b3

    move v2, v3

    :cond_b3
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v8

    if-eqz v2, :cond_bb

    if-eqz v8, :cond_bf

    :cond_bb
    if-nez v2, :cond_e4

    if-eqz v8, :cond_e4

    :cond_bf
    const-string p1, "loadWallpaperBitmap abort, for bitmap fold state: "

    const-string p2, " and real fold state: "

    const-string v4, " are not in a consistent state， factor "

    invoke-static {p1, v2, p2, v8, v4}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", max "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  min "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Wallpapers"

    invoke-static {p1, v6, p2, v0}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_e4
    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWallpaperLoadSuccessImp:Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    invoke-interface {v0, p2, p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;->wallpaperLoadSuccess(Landroid/graphics/Bitmap;ZLcom/android/launcher/Launcher;)V

    :goto_eb
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private final startLoadWallpaper(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->setNeedRelease(Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :cond_21
    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMLoadWallpaperRunnable()Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->run()V

    :goto_28
    return-void
.end method


# virtual methods
.method public final addOnColorsChangedListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WallpaperLoader"

    const-string v1, "addOnColorsChangedListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final determineToLoadWallpaper(Z)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const-string v1, "Wallpapers"

    const-string v2, "WallpaperLoader"

    if-nez v0, :cond_14

    const-string p0, "initWallpaperBrightness failed,  mLauncher is null"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    if-nez v3, :cond_20

    const-string p0, "initWallpaperBrightness failed ,workspace is null"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    if-gez v4, :cond_2c

    const-string p0, "initWallpaperBrightness index <0"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-virtual {v3, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_44

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;ZLb3/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :cond_44
    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    sget-boolean v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->DEBUG:Z

    if-eqz v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWallpaperBrightness , cellLayout1 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", parent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v0

    if-lez v0, :cond_7f

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    if-lez v0, :cond_7f

    const-string v0, "initWallpaperBrightness no need to wait"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader;->startLoadWallpaper(Z)V

    goto :goto_87

    :cond_7f
    new-instance v0, Lcom/android/launcher/wallpaper/b;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/launcher/wallpaper/b;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusCellLayout;->setOnLayoutFinishListener(Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;)V

    :goto_87
    return-void
.end method

.method public final ensureLoadWallpaper()V
    .registers 4

    const-string v0, "WallpaperLoader"

    const-string v1, "ensureLoadWallpaper"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final isLiveWallpaper()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mIsLiveWallpaper:Z

    return p0
.end method

.method public onDestroy()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onWallpaperChanged()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->reloadWallpaper(Z)V

    return-void
.end method

.method public final reloadWallpaper(Z)V
    .registers 7

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    iget-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    const-string/jumbo v2, "reloadWallpaper, canReload = "

    const-string v3, ", reloadForResume = "

    const-string v4, "WallpaperLoader"

    invoke-static {v2, v1, v3, p1, v4}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_45

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->getMDetermineToLoadWallpaperRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader;->mLoadWallpaperFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_45
    return-void
.end method

.method public final removeColorsChangeListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "WallpaperLoader"

    const-string/jumbo v0, "removeColorsChangeListener"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    return-void
.end method
