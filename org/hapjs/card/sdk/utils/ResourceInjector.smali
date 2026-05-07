.class public Lorg/hapjs/card/sdk/utils/ResourceInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceInjector"

.field private static final sInjectedContexts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/ResourceInjector;->sInjectedContexts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAssetPathAboveL(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eq v0, p0, :cond_b

    invoke-static {v0, p1}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->addAssetPathAboveL(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    :try_start_f
    invoke-static {p0, p1}, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_12} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_12} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception p0

    const-string p1, "ResourceInjector"

    const-string v0, "Fail to addAssetPathAboveL"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static addAssetPathAboveO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/hapjs/card/sdk/utils/ResourceInjectorForO;->inject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception p0

    const-string p1, "ResourceInjector"

    const-string p2, "Fail to addAssetPathAboveO"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static getResourcesKey(Landroid/content/Context;)Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->getResourcesImplNoThrow(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized inject(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const-class v0, Lorg/hapjs/card/sdk/utils/ResourceInjector;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->getResourcesKey(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    const-string p1, "ResourceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key is null. context="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_8b

    monitor-exit v0

    return v2

    :cond_22
    :try_start_22
    sget-object v3, Lorg/hapjs/card/sdk/utils/ResourceInjector;->sInjectedContexts:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    const-string p1, "ResourceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resources already injected. context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_8b

    monitor-exit v0

    return v4

    :cond_43
    :try_start_43
    invoke-static {p0}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    const-string p0, "ResourceInjector"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to inject resource, platform package: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_8b

    monitor-exit v0

    return v2

    :cond_65
    :try_start_65
    invoke-static {p0, v1, p1}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->addAssetPathAboveO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->getResourcesKey(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_86

    const-string p1, "ResourceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newKey is null. context="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_65 .. :try_end_84} :catchall_8b

    monitor-exit v0

    return v2

    :cond_86
    :try_start_86
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8b

    monitor-exit v0

    return v4

    :catchall_8b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
