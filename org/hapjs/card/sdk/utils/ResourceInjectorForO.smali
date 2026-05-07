.class Lorg/hapjs/card/sdk/utils/ResourceInjectorForO;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceInjectorForO"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1}, Lorg/hapjs/card/sdk/utils/ResourceInjectorForO;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    array-length v1, p0

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    if-eqz p0, :cond_17

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    aput-object p1, v2, v1

    return-object v2
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    move v1, v0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public static inject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getInstance()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResourceImpls"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {v0}, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->getAssets(Ljava/lang/Object;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3d} :catch_3f

    goto :goto_24

    :cond_3e
    return-void

    :catch_3f
    move-exception p1

    const-string v0, "ResourceInjectorForO"

    const-string v1, "Fail to addAssetPathAboveO"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {p0, p2}, Lorg/hapjs/card/sdk/utils/ResourceInjectorForO;->injectPlatformAsset(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetForMainAssetPath(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static injectPlatformAsset(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/hapjs/card/sdk/utils/ResourceInjectorForO;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/reflect/ContextImplClass;->getPackageInfo(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->getSplitResDirs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/hapjs/card/sdk/utils/ResourceInjectorForO;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->setSplitResDirs(Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method
