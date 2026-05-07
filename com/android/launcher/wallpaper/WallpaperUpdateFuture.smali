.class public final Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HANDLE_WALLPAPER_CHANGED_DELAY_TIME:J = 0x5dcL

.field public static final INSTANCE:Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;

.field private static final TAG:Ljava/lang/String; = "WallpaperUpdateFuture"

.field private static final sWaitRefresh:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;-><init>()V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->INSTANCE:Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->sWaitRefresh:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkLauncherRefreshState()V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "WallpaperUpdateFuture"

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->sWaitRefresh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_43

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :try_start_13
    const-string/jumbo v1, "wait for Launcher refresh."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x5dc

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_29
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_43

    :cond_30
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_42

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkLauncherRefreshState Exception, e : "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    throw v1

    :cond_43
    :goto_43
    return-void
.end method

.method public static final completeLauncherRefresh()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->sWaitRefresh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_16

    const-string v1, "WallpaperUpdateFuture"

    const-string v2, "complete Launcher refresh."

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method


# virtual methods
.method public final getSWaitRefresh()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->sWaitRefresh:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public final resetLauncherRefreshState()V
    .registers 3

    sget-object p0, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->sWaitRefresh:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
