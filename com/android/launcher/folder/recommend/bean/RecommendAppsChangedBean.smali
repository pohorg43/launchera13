.class public Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_SELECT_PKG:Ljava/lang/String; = "selectPkg"


# instance fields
.field private mSelectPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getResult()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;-><init>()V

    :try_start_9
    invoke-static {p0}, Lcom/android/launcher/folder/recommend/bean/JsonHelper;->toJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "selectPkg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;->setSelectPkg(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_17

    :catchall_17
    return-object v0
.end method

.method public static toJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "selectPkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    :catchall_b
    return-object v0
.end method


# virtual methods
.method public getSelectPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;->mSelectPkg:Ljava/lang/String;

    return-object p0
.end method

.method public setSelectPkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;->mSelectPkg:Ljava/lang/String;

    return-void
.end method
