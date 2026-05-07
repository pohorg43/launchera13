.class public Lcom/android/launcher/folder/recommend/bean/IconUrlBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field private static final KEY_PKG:Ljava/lang/String; = "pkg"


# instance fields
.field private mIconUri:Ljava/lang/String;

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)Lcom/android/launcher/folder/recommend/bean/IconUrlBean;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getResult()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;-><init>()V

    :try_start_9
    invoke-static {p0}, Lcom/android/launcher/folder/recommend/bean/JsonHelper;->toJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "pkg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->setPkg(Ljava/lang/String;)V

    const-string v1, "iconUri"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->setIconUri(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_20

    :catchall_20
    return-object v0
.end method

.method public static toJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "iconUri"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    return-object v0
.end method


# virtual methods
.method public getIconUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->mIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public setIconUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->mIconUri:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->mPkg:Ljava/lang/String;

    return-void
.end method
