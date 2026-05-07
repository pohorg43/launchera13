.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$makeLauncherBitmap$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x1fd
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->makeLauncherBitmap(Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Lcom/android/launcher3/Launcher;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$initCommonState(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMScreenWidth$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMScreenHeight$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherBitmap$2;->label:I

    invoke-static {v3, v4, v1, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$makeLauncherRootView(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_49

    return-object v0

    :cond_49
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_4c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_56

    :cond_55
    const/4 p0, 0x0

    :goto_56
    return-object p0
.end method
