.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$inverseLauncherBitmap$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x18f
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->inverseLauncherBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
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

.field public final synthetic $screenBitmap:Landroid/graphics/Bitmap;

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/graphics/Bitmap;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 6
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

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;Lb3/d;)V

    iput-object p1, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_12

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_14d

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lq3/f0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$dealOPWeatherWidget(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V

    :cond_37
    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v3

    const-string/jumbo v10, "uri.path"

    const/4 v11, 0x0

    if-nez v3, :cond_4a

    goto :goto_86

    :cond_4a
    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMNormalFileNameUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_86

    if-eqz v4, :cond_86

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMNormalFileNameUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_60

    move-object v3, v11

    goto :goto_6b

    :cond_60
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getImagePath(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_6b
    if-nez v3, :cond_70

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_70
    sget-object v6, Lq3/q0;->c:Lq3/b0;

    new-instance v7, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$1$1;

    invoke-direct {v7, v5, v3, v4, v11}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$1$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;Lb3/d;)V

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Lq3/g;->a(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/k0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    :goto_86
    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    const-string v5, "inverseBitmap"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, v9}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$dealWithCellLayout(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v3

    if-nez v3, :cond_9b

    goto :goto_d8

    :cond_9b
    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMBlackFileNameUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_d8

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMBlackFileNameUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_ad

    move-object v3, v11

    goto :goto_b8

    :cond_ad
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getImagePath(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_b8
    if-nez v3, :cond_bd

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_bd
    invoke-static {v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMInvertBitmapDefers$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    sget-object v5, Lq3/q0;->c:Lq3/b0;

    new-instance v6, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;

    invoke-direct {v6, v4, v3, v9, v11}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;Lb3/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, v5

    move v5, v10

    invoke-static/range {v3 .. v8}, Lq3/g;->a(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/k0;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    :goto_d8
    iput-object v9, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->label:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e5

    sget-object p1, Lz2/u;->a:Lz2/u;

    goto :goto_149

    :cond_e5
    new-instance p1, Lq3/c;

    const/4 v3, 0x0

    new-array v4, v3, [Lq3/k0;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lq3/k0;

    invoke-direct {p1, v1}, Lq3/c;-><init>([Lq3/k0;)V

    new-instance v4, Lq3/l;

    invoke-static {p0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lq3/l;-><init>(Lb3/d;I)V

    invoke-virtual {v4}, Lq3/l;->u()V

    array-length v1, v1

    new-array v2, v1, [Lq3/c$a;

    move v5, v3

    :goto_109
    if-ge v5, v1, :cond_122

    iget-object v6, p1, Lq3/c;->a:[Lq3/k0;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lq3/i1;->start()Z

    new-instance v7, Lq3/c$a;

    invoke-direct {v7, p1, v4}, Lq3/c$a;-><init>(Lq3/c;Lq3/k;)V

    invoke-interface {v6, v7}, Lq3/i1;->o(Lkotlin/jvm/functions/Function1;)Lq3/s0;

    move-result-object v6

    iput-object v6, v7, Lq3/c$a;->f:Lq3/s0;

    aput-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_109

    :cond_122
    new-instance v5, Lq3/c$b;

    invoke-direct {v5, p1, v2}, Lq3/c$b;-><init>(Lq3/c;[Lq3/c$a;)V

    :goto_127
    if-ge v3, v1, :cond_131

    aget-object p1, v2, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v5}, Lq3/c$a;->u(Lq3/c$b;)V

    goto :goto_127

    :cond_131
    invoke-virtual {v4}, Lq3/l;->w()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-virtual {v5}, Lq3/c$b;->b()V

    goto :goto_13e

    :cond_13b
    invoke-virtual {v4, v5}, Lq3/l;->j(Lkotlin/jvm/functions/Function1;)V

    :goto_13e
    invoke-virtual {v4}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_149

    const-string v1, "frame"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_149
    :goto_149
    if-ne p1, v0, :cond_14c

    return-object v0

    :cond_14c
    move-object v0, v9

    :goto_14d
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {p0, v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
