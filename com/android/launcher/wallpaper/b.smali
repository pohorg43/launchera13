.class public final synthetic Lcom/android/launcher/wallpaper/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic b:Lcom/android/launcher/wallpaper/WallpaperLoader;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/b;->a:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/b;->b:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iput-boolean p3, p0, Lcom/android/launcher/wallpaper/b;->c:Z

    return-void
.end method


# virtual methods
.method public final onLayoutFinish()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/wallpaper/b;->a:Lcom/android/launcher3/OplusCellLayout;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/b;->b:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/b;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->a(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/wallpaper/WallpaperLoader;Z)V

    return-void
.end method
