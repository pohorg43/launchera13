.class public Lcom/android/launcher/folder/recommend/bean/AppStatBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_PKG:Ljava/lang/String; = "pkg"

.field private static final KEY_POS:Ljava/lang/String; = "pos"


# instance fields
.field private mPkg:Ljava/lang/String;

.field private mPos:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->mPkg:Ljava/lang/String;

    iput p2, p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->mPos:I

    return-void
.end method

.method public static createAppStatBean(Lorg/json/JSONObject;)Lcom/android/launcher/folder/recommend/bean/AppStatBean;
    .registers 3

    new-instance v0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPkg(Ljava/lang/String;)V

    const-string/jumbo v1, "pos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPos(I)V

    return-object v0
.end method

.method public static createAppStatBeanList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/AppStatBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/folder/recommend/bean/JsonHelper;->toJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->createAppStatBean(Lorg/json/JSONObject;)Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method public static toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/AppStatBean;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getPos()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->mPos:I

    return p0
.end method

.method public setPkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->mPkg:Ljava/lang/String;

    return-void
.end method

.method public setPos(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->mPos:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "pos"

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->getPos()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "pkg"

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->getPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1d

    :catchall_1d
    return-object v0
.end method
