.class public Lcom/nearme/instant/xcard/CardUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HAP_PACKAGE_NAME:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static TAG:Ljava/lang/String; = "CardUtils"

.field private static classLoader:Ljava/lang/ClassLoader;

.field private static hapContext:Landroid/content/Context;

.field private static mInitTrace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nearme/instant/xcard/CardUtils;->mInitTrace:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTrace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/nearme/instant/xcard/CardUtils;->mInitTrace:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .registers 5

    const-string v0, "com.nearme.instant.platform"

    sget-object v1, Lcom/nearme/instant/xcard/CardUtils;->classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_5b

    sget-object v1, Lcom/nearme/instant/xcard/CardUtils;->TAG:Ljava/lang/String;

    const-string v2, "init classLoader "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_12
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1a} :catch_3f

    invoke-static {p0}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->init(Landroid/content/Context;)V

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpToDate(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->init64So(Landroid/content/Context;)V

    new-instance v0, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/nearme/instant/xcard/UtilsKt;->getDexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->getNativeLibraryDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/nearme/instant/xcard/CardUtils;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_5b

    :catch_3f
    move-exception p0

    sget-object v0, Lcom/nearme/instant/xcard/CardUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getClassLoader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :cond_5b
    :goto_5b
    sget-object p0, Lcom/nearme/instant/xcard/CardUtils;->classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static getHapContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    sget-object v0, Lcom/nearme/instant/xcard/CardUtils;->hapContext:Landroid/content/Context;

    if-nez v0, :cond_2e

    :try_start_4
    const-string v0, "com.nearme.instant.platform"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nearme/instant/xcard/CardUtils;->hapContext:Landroid/content/Context;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_28

    :catch_e
    move-exception v0

    sget-object v1, Lcom/nearme/instant/xcard/CardUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHapContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_28
    sget-object v0, Lcom/nearme/instant/xcard/CardUtils;->hapContext:Landroid/content/Context;

    if-nez v0, :cond_2e

    sput-object p0, Lcom/nearme/instant/xcard/CardUtils;->hapContext:Landroid/content/Context;

    :cond_2e
    sget-object p0, Lcom/nearme/instant/xcard/CardUtils;->hapContext:Landroid/content/Context;

    return-object p0
.end method

.method public static putTrace(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/nearme/instant/xcard/CardUtils;->mInitTrace:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    sget-object p0, Lcom/nearme/instant/xcard/CardUtils;->mInitTrace:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method

.method public static restore()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nearme/instant/xcard/CardUtils;->hapContext:Landroid/content/Context;

    sput-object v0, Lcom/nearme/instant/xcard/Compatible64Bit;->sSoLibPath:Ljava/lang/String;

    return-void
.end method
