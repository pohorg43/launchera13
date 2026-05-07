.class final Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.WallpaperLoader$determineToLoadWallpaper$1"
    f = "WallpaperLoader.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $release:Z

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/WallpaperLoader;ZLb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/WallpaperLoader;",
            "Z",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iput-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->$release:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->$release:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;ZLb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    const-string p1, "Wallpapers"

    const-string v1, "WallpaperLoader"

    const-string v3, "initWallpaperBrightness failed cellLayout is null, try again after delay sometime"

    invoke-static {p1, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x14

    iput v2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->label:I

    invoke-static {v3, v4, p0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->$release:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
