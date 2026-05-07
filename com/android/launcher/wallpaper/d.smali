.class public final synthetic Lcom/android/launcher/wallpaper/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/wallpaper/d;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/wallpaper/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/wallpaper/d;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher/wallpaper/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->c(Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher/wallpaper/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->a(Lcom/android/launcher/Launcher;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher/wallpaper/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$mDetermineToLoadWallpaperRunnable$2;->a(Lcom/android/launcher/wallpaper/WallpaperLoader;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
