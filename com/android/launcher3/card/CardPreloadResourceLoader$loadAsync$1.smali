.class final Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.CardPreloadResourceLoader$loadAsync$1"
    f = "CardPreloadResourceLoader.kt"
    l = {
        0x78,
        0x8c
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardPreloadResourceLoader;->loadAsync(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lq3/i1;
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
.field public final synthetic $item:Lcom/android/launcher3/card/LauncherCardInfo;

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $nameCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $previewCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $userUnlockCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Ljava/util/function/Consumer;Lcom/android/launcher3/card/CardPreloadResourceLoader;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lb3/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/card/CardPreloadResourceLoader;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    iput-object p2, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iput-object p5, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$nameCallback:Ljava/util/function/Consumer;

    iput-object p6, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$previewCallback:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 11
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

    new-instance p1, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;

    iget-object v1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v2, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    iget-object v4, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iget-object v5, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$nameCallback:Ljava/util/function/Consumer;

    iget-object v6, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$previewCallback:Ljava/util/function/Consumer;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Ljava/util/function/Consumer;Lcom/android/launcher3/card/CardPreloadResourceLoader;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->label:I

    const-string v3, "MAIN_EXECUTOR"

    const/4 v4, 0x2

    const-string v5, "LauncherCard-CardPreloadResourceLoader"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2e

    if-eq v2, v6, :cond_20

    if-ne v2, v4, :cond_18

    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_1e0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->I$0:I

    iget-object v6, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Resources;

    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    move-object v8, v6

    move-object/from16 v6, p1

    goto/16 :goto_160

    :cond_2e
    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3c

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_3c
    sget-object v8, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/pm/UserCache;

    const/4 v9, 0x0

    if-nez v8, :cond_48

    goto :goto_56

    :cond_48
    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v10}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v8

    if-ne v8, v6, :cond_56

    move v8, v6

    goto :goto_57

    :cond_56
    :goto_56
    move v8, v9

    :goto_57
    if-nez v8, :cond_85

    iget-object v8, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    if-eqz v8, :cond_85

    const-string v1, "loadAsync, but "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_85
    const-string v8, "load preload resource for "

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.appcard.action.APPCARD_UPDATE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v10, v8}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$queryCardProviders(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v8

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_dc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ProviderInfo;

    invoke-static {v10, v12}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getMetaKeys(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/pm/ProviderInfo;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_c2
    :goto_c2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v10, v12, v15}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$parseCardProvider(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ly2/m;

    move-result-object v15

    if-eqz v15, :cond_c2

    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    :cond_d8
    invoke-static {v11, v14}, Lz2/p;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_a9

    :cond_dc
    iget-object v8, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_101

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ly2/m;

    iget-object v12, v12, Ly2/m;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget v13, v8, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v12, v13, :cond_fd

    move v12, v6

    goto :goto_fe

    :cond_fd
    move v12, v9

    :goto_fe
    if-eqz v12, :cond_e2

    goto :goto_102

    :cond_101
    move-object v11, v7

    :goto_102
    check-cast v11, Ly2/m;

    if-nez v11, :cond_109

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_109
    iget-object v8, v11, Ly2/m;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    iget-object v10, v11, Ly2/m;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v12, "name resId "

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v11}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPackageManager(Lcom/android/launcher3/card/CardPreloadResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v7, v11, v9

    invoke-virtual {v2, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13d

    goto :goto_167

    :cond_13d
    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$nameCallback:Ljava/util/function/Consumer;

    sget-object v11, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lq3/b1;

    invoke-direct {v12, v11}, Lq3/b1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v11, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;

    invoke-direct {v11, v10, v9, v7}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;Lb3/d;)V

    iput-object v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->I$0:I

    iput v6, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->label:I

    invoke-static {v12, v11, v0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_15b

    return-object v1

    :cond_15b
    move/from16 v16, v8

    move-object v8, v2

    move/from16 v2, v16

    :goto_160
    check-cast v6, Ly2/p;

    move-object/from16 v16, v8

    move v8, v2

    move-object/from16 v2, v16

    :goto_167
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v9, "preview resId "

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :try_start_17a
    sget-object v6, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v6, v2}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_185

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_185
    iget-object v6, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v6}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v6

    iget-object v8, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v8}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v10}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v10}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v11}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v11}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v2, v6, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1b9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17a .. :try_end_1b9} :catch_1ba

    goto :goto_1c1

    :catch_1ba
    const-string/jumbo v2, "oom creating bitmap"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    :goto_1c1
    if-nez v2, :cond_1c4

    goto :goto_1e0

    :cond_1c4
    iget-object v5, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$previewCallback:Ljava/util/function/Consumer;

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lq3/b1;

    invoke-direct {v3, v6}, Lq3/b1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v6, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$4$1;

    invoke-direct {v6, v5, v2, v7}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$4$1;-><init>(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;Lb3/d;)V

    iput-object v7, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->label:I

    invoke-static {v3, v6, v0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1e0

    return-object v1

    :cond_1e0
    :goto_1e0
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0
.end method
