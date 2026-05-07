.class public Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UxThirdThemeIconHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getClippedThemedIcon(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const-class v0, Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstalledThirdThemeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const-class v0, Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getThirdThemeIcon(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const-class v0, Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    invoke-static {p1}, Lcom/oplus/theme/OplusAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThirdThemeIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UxThirdThemeIconHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3a

    invoke-static {v1}, Lcom/oplus/theme/OplusAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v1, "icons"

    invoke-static {p2, p1, v1, p0}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_3e

    :cond_3a
    invoke-static {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_40

    :goto_3e
    monitor-exit v0

    return-object p0

    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method
