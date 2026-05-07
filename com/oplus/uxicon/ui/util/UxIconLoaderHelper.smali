.class public Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sIconLoader:Lcom/oplus/uxicon/ui/util/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/uxicon/ui/util/g;->a()Lcom/oplus/uxicon/ui/util/g;

    move-result-object v0

    sput-object v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultThemeIcon(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

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

.method public static declared-synchronized getDrawable(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->b(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

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

.method public static declared-synchronized getIconThemeDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

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

.method public static declared-synchronized getLocalSpecialDrawable(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

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

.method public static declared-synchronized getStyledNormalThemeDrawable(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

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

.method public static declared-synchronized getStyledParkDrawable(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .registers 12

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized handleFileIcon(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->b(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

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

.method public static declared-synchronized handleIconForDefaultRadius(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 6

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

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

.method public static declared-synchronized handleIconFromPack(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

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

.method public static declared-synchronized handleIconThemeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/IconThemedUtil;->getColors(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/helper/IconConfig;[I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized handleThirdPartyIcon(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

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

.method public static declared-synchronized hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized hasTransparentPixels(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z
    .registers 5

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static releaseRelatedRes()V
    .registers 1

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/g;->d()V

    return-void
.end method

.method public static declared-synchronized setEnableDarkMode(Z)V
    .registers 3

    const-class v0, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->sIconLoader:Lcom/oplus/uxicon/ui/util/g;

    invoke-virtual {v1, p0}, Lcom/oplus/uxicon/ui/util/g;->a(Z)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method
