.class public final Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/wallpaper/WallpaperLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadWallpaperRunnable"
.end annotation


# instance fields
.field private mNeedRelease:Z

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-static {v0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->access$getLauncher(Lcom/android/launcher/wallpaper/WallpaperLoader;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "Wallpapers"

    const-string v0, "WallpaperLoader"

    const-string v1, "initWallpaperBrightness failed,  mLauncher is null"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->mNeedRelease:Z

    invoke-static {v1, v0, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->access$loadWallpaperBitmap(Lcom/android/launcher/wallpaper/WallpaperLoader;Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method public final setNeedRelease(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$LoadWallpaperRunnable;->mNeedRelease:Z

    return-void
.end method
