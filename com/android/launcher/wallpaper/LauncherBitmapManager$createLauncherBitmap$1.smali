.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$createLauncherBitmap$1"
    f = "LauncherBitmapManager.kt"
    l = {
        0xd7,
        0xec
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->createLauncherBitmap(Lcom/android/launcher3/Launcher;)V
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
.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

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
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->label:I

    const-string v2, "LauncherBitmapManager"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1f

    if-eq v1, v4, :cond_1b

    if-ne v1, v3, :cond_13

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_a8

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_1f
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    const-wide/16 v5, 0xbb8

    iput v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->label:I

    invoke-static {v5, v6, p0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    const-string p1, "image/launcher_first_screen_normal_image.jpg"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    aget-object v1, v1, v7

    invoke-static {v5, v6, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$isImageFileExist(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ae

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_ae

    new-instance v1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    invoke-direct {v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;-><init>()V

    new-array v5, v3, [Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v8, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "launcher.applicationContext"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "com.android.launcher.file_provider"

    invoke-virtual {v6, v8, v10, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildUriByFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v5, v7

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "image/launcher_first_screen_reserve_image.jpg"

    invoke-virtual {p1, v6, v10, v8}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildUriByFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v5, v4

    const/16 p1, 0xa0

    invoke-virtual {v1, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setHotseatAlpha(I)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    move-result-object p1

    aget-object v6, v5, v7

    invoke-virtual {p1, v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setNormalFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    move-result-object p1

    aget-object v4, v5, v4

    invoke-virtual {p1, v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setBlackFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;

    invoke-virtual {v5, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;->create(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v1

    iput v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->label:I

    invoke-static {p1, v4, v1, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$buildLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a8

    return-object v0

    :cond_a8
    :goto_a8
    const-string p0, "createLauncherBitmap, need create launcher bitmap."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :cond_ae
    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$createLauncherBitmap$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    const-string p1, "createLauncherBitmap, state = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c1
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
