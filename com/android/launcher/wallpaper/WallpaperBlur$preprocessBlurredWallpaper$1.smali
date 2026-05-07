.class public final Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;
.super Lcom/android/launcher3/popup/EffectResultCallbackImp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/WallpaperBlur;->preprocessBlurredWallpaper(Landroid/graphics/Bitmap;Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/wallpaper/WallpaperBlur;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/WallpaperBlur;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-direct {p0}, Lcom/android/launcher3/popup/EffectResultCallbackImp;-><init>()V

    return-void
.end method


# virtual methods
.method public effectDone(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->access$getMBlurCache$p(Lcom/android/launcher/wallpaper/WallpaperBlur;)Lcom/android/launcher/wallpaper/BlurCache;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/wallpaper/BlurCache;->setBlurredWallpaper(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
