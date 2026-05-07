.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$inverseLauncherBitmap$2$2$1"
    f = "LauncherBitmapManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic $inverseBitmap:Landroid/graphics/Bitmap;

.field public final synthetic $reserveFile:Ljava/io/File;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->$reserveFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->$inverseBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->$reserveFile:Ljava/io/File;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->$inverseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->label:I

    if-nez v0, :cond_13

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->$reserveFile:Ljava/io/File;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;->$inverseBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$saveBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
