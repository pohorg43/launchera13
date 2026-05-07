.class Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hapjs/card/common/utils/CardClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLoadRulesHelper"
.end annotation


# static fields
.field private static final KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final KEY_HOST_PREFERRED_PKGS:Ljava/lang/String; = "hostPreferredPkgs"

.field private static final KEY_PLATFORM_PREFERRED_PKGS:Ljava/lang/String; = "platformPreferredPkgs"

.field private static final PACKAGE_LOAD_RULES:Ljava/lang/String; = "hap/package_load_rules.json"

.field private static final PLATFORM:Ljava/lang/String; = "platform"


# instance fields
.field private mPlatformByDefault:Z

.field private mRulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mRulesMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mPlatformByDefault:Z

    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->initRules(Landroid/content/Context;)Z

    move-result p2
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_16} :catch_19

    if-eqz p2, :cond_21

    return-void

    :catch_19
    move-exception p2

    const-string v0, "CardClassLoader"

    const-string v1, "failed to update rules"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    invoke-direct {p0, p1}, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->initRules(Landroid/content/Context;)Z

    return-void
.end method

.method public static synthetic access$000(Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->isOurPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private initRules(Landroid/content/Context;)Z
    .registers 11

    const-string v0, "platform"

    const-string v1, "hostPreferredPkgs"

    const-string v2, "platformPreferredPkgs"

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v4, "hap/package_load_rules.json"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lorg/hapjs/card/common/utils/FileUtils;->readStreamAsString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_44

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :goto_2f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3f

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_3f
    iget-object p1, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mRulesMap:Ljava/util/Map;

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_69

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_54
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_64

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_64
    iget-object p1, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mRulesMap:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    const-string p1, "default"

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mPlatformByDefault:Z
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_75} :catch_76
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_75} :catch_76

    return v4

    :catch_76
    move-exception p0

    const-string p1, "CardClassLoader"

    const-string v0, "fail to init rules"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private isOurPackage(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mRulesMap:Ljava/util/Map;

    const-string v1, "platformPreferredPkgs"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_24
    iget-object v0, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mRulesMap:Ljava/util/Map;

    const-string v1, "hostPreferredPkgs"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 p0, 0x0

    return p0

    :cond_48
    iget-boolean p0, p0, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->mPlatformByDefault:Z

    return p0
.end method
