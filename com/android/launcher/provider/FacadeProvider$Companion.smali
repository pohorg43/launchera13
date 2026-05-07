.class final Lcom/android/launcher/provider/FacadeProvider$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/provider/FacadeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->post$lambda-0(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColumns(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getColumns(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHotseatCells(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getHotseatCells(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRow(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getRow(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getScreenSize(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getScreenSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$post(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->post(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postAndReload(Lcom/android/launcher/provider/FacadeProvider$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->postAndReload(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postInternal(Lcom/android/launcher/provider/FacadeProvider$Companion;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->postInternal(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$reloadLauncher(Lcom/android/launcher/provider/FacadeProvider$Companion;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->reloadLauncher()V

    return-void
.end method

.method private final getApp()Lcom/android/launcher3/LauncherAppState;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getApp$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getColumns(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    const-string v0, "layout_cellcount_y"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final getHotseatCells(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    return p0
.end method

.method private static synthetic getLAUNCHER_COMPONENT_NAME$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getModel()Lcom/android/launcher3/LauncherModel;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getApp()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method private static synthetic getModel$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getRow(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    const-string v0, "layout_cellcount_x"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final getSHandler()Landroid/os/Handler;
    .registers 1

    invoke-static {}, Lcom/android/launcher/provider/FacadeProvider;->access$getSHandler$delegate$cp()Ly2/e;

    move-result-object p0

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private static synthetic getSHandler$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getScreenSize(Landroid/content/Context;)I
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "container = -100"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_34

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    :try_start_1e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_39

    goto :goto_1e

    :cond_31
    invoke-static {p1, v0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_34
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :catchall_39
    move-exception p0

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    invoke-static {p1, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final post(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/launcher/provider/a;

    invoke-direct {v1, p1}, Lcom/android/launcher/provider/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->postInternal(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final post$lambda-0(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 2

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final postAndReload(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher/provider/FacadeProvider$Companion$postAndReload$1;

    invoke-direct {v0, p1}, Lcom/android/launcher/provider/FacadeProvider$Companion$postAndReload$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->post(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final postInternal(Ljava/lang/Runnable;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getSHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final reloadLauncher()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "FacadeProvider"

    const-string/jumbo v1, "reloadLauncher#"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :goto_12
    return-void
.end method
