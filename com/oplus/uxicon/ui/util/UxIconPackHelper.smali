.class public Lcom/oplus/uxicon/ui/util/UxIconPackHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized applyIconPack(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .registers 4

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v1, p0, p1}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->applyIconPack(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getIconPackAllIcons(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getIconPackAllIcons(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getIconPackItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getIconPackItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getIconPackList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v1, p0}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getIconPackList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v1, p0}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getOriginalIcon(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    sget-object v2, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, p1, p0, v3, v1}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_14
    .catchall {:try_start_4 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1b

    :catch_14
    move-exception p0

    :try_start_15
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_1b
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadDrawableFromIconPack(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->loadDrawableFromIconPack(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadDrawableFromIconPack(Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->loadDrawableFromIconPack(Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
