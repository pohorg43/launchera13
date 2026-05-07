.class public Lcom/android/launcher/folder/recommend/bean/DataBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field private static final KEY_JUMP_ULR:Ljava/lang/String; = "jumpUrl"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final KEY_RECOMMEND_APPS_LIST:Ljava/lang/String; = "recommendAppsList"

.field private static final KEY_STAT_MAP:Ljava/lang/String; = "statMap"

.field private static final MSG_NOT_RETURN_MARKET:Ljava/lang/String; = "&goback=1"


# instance fields
.field private mAppId:J

.field private mAppName:Ljava/lang/String;

.field private mDownloaded:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconUrl:Ljava/lang/String;

.field private mJumpUrl:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mStatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/folder/recommend/bean/ApiResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getResult()Ljava/lang/Object;

    move-result-object p0

    :try_start_4
    invoke-static {p0}, Lcom/android/launcher/folder/recommend/bean/JsonHelper;->toJsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_51

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-direct {v4}, Lcom/android/launcher/folder/recommend/bean/DataBean;-><init>()V

    const-string v5, "appId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setAppId(J)V

    const-string v5, "appName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setAppName(Ljava/lang/String;)V

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setPkgName(Ljava/lang/String;)V

    const-string v5, "iconUri"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setIconUrl(Ljava/lang/String;)V

    const-string v5, "jumpUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher/folder/recommend/bean/DataBean;->setJumpUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_52

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_51
    return-object v0

    :catchall_52
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppId()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mAppId:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getJumpUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mJumpUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mStatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public isDownloaded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mDownloaded:Z

    return p0
.end method

.method public setAppId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mAppId:J

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setDownloaded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mDownloaded:Z

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setJumpUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&goback=1"

    invoke-static {p1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mJumpUrl:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setStatMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mStatMap:Ljava/util/HashMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "DataBean{pkgName=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mPkgName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", appName=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mAppName:Ljava/lang/String;

    const-string v3, ", mDrawable="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/DataBean;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
