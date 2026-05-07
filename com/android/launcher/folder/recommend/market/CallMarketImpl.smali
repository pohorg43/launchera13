.class public Lcom/android/launcher/folder/recommend/market/CallMarketImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/market/CallMarket;


# static fields
.field private static final DEBUG_JSON:Z = true

.field private static final TAG:Ljava/lang/String; = "CallMarketImpl"


# instance fields
.field private volatile mCurrentTimeStamp:J

.field private mFootController:Lcom/android/launcher/folder/recommend/FooterController;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private preHandleAppDataResponse(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)V
    .registers 8

    const-string/jumbo v0, "preHandleAppDataResponse  code = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", FootController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallMarketImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getCode()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b7

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_65

    packed-switch v0, :pswitch_data_be

    const-string/jumbo p0, "preHandleAppDataResponse no catch the response code: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :pswitch_51  #0xffffff99, 0xffffff9a
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setAppStorePreEnable(Z)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->setCallbackRegisterFailed()V

    goto :goto_bc

    :cond_65
    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appDataList"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getReqTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mCurrentTimeStamp:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9a

    const-string v0, "Timestamp is not match, mCurrentTimeStamp = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mCurrentTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but timestamp of response is = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getReqTimestamp()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_9a
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/bean/DataBean;->parseJson(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->setData(Ljava/util/List;)V

    goto :goto_bc

    :cond_a4
    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "registerRecommendAppsCallback"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bc

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->setCallbackRegisterSuccess()V

    goto :goto_bc

    :cond_b7
    :pswitch_b7  #0xffffff9b
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->notifyNoConnection()V

    :cond_bc
    :goto_bc
    return-void

    nop

    :pswitch_data_be
    .packed-switch -0x67
        :pswitch_51  #ffffff99
        :pswitch_51  #ffffff9a
        :pswitch_b7  #ffffff9b
    .end packed-switch
.end method


# virtual methods
.method public getAppsExposureArg(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/AppStatBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "uri"

    const-string v2, "doRecommendAppsStat"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "statType"

    const-string v3, "exposure"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string/jumbo v2, "statInfoArray"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "biz_type"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "param"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAppsExposureArg: result = "

    const-string v0, "CallMarketImpl"

    invoke-static {p1, p0, v0}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getClickAppsStatUri(Landroid/util/Pair;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;-><init>()V

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPkg(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPos(I)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "uri"

    const-string v1, "doRecommendAppsStat"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "statType"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "statInfo"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "param"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotifyFolderHideUri()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "uri"

    const-string/jumbo v2, "notifyDesktopFolderHide"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz v1, :cond_30

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "biz_type"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotifyFolderHideUri(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "uri"

    const-string/jumbo v1, "notifyDesktopFolderHide"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reqId"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "biz_type"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "param"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNotifyFolderHideUri: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallMarketImpl"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReCommendAppExposureArg(IILjava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/AppStatBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "uri"

    const-string v1, "doRecommendAppsStat"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "statType"

    const-string v2, "exposure"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "biz_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p4}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    const-string/jumbo p4, "statInfoArray"

    invoke-virtual {v0, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p4, "param"

    invoke-virtual {p0, p4, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "page_pos"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "reqId"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getTailAppExposureArg: jsonStr = "

    const-string p2, "CallMarketImpl"

    invoke-static {p1, p0, p2}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getRecommendDataUri()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "uri"

    const-string v2, "getRecommendApps"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mCurrentTimeStamp:J

    iget-wide v1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mCurrentTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "reqTimestamp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz v1, :cond_64

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "biz_type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getPkgListForDeduplication(Lcom/android/launcher3/folder/Folder;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string/jumbo v3, "pkgListForDeduplication"

    const-string/jumbo v4, "param"

    if-eqz v2, :cond_5a

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_64

    :cond_5a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_64
    :goto_64
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegisterCallbackUri()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "uri"

    const-string/jumbo v2, "registerRecommendAppsCallback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz v1, :cond_30

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "biz_type"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTailClickAppStatUri(IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "uri"

    const-string v1, "doRecommendAppsStat"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "statType"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "biz_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo p4, "statInfo"

    invoke-virtual {v0, p4, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p4, "param"

    invoke-virtual {p0, p4, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "page_pos"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "reqId"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getTailClickAppsStatUri: jsonStr = "

    const-string p2, "CallMarketImpl"

    invoke-static {p1, p0, p2}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onRemoteResponse(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->parseJson(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/bean/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteResponse type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallMarketImpl"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8c

    goto :goto_5f

    :sswitch_32
    const-string v2, "iconUri"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_5f

    :cond_3b
    const/4 v1, 0x3

    goto :goto_5f

    :sswitch_3d
    const-string/jumbo v2, "registerRecommendAppsCallback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_5f

    :cond_47
    const/4 v1, 0x2

    goto :goto_5f

    :sswitch_49
    const-string/jumbo v2, "recommendAppInfoChanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_5f

    :cond_53
    const/4 v1, 0x1

    goto :goto_5f

    :sswitch_55
    const-string v2, "appDataList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    packed-switch v1, :pswitch_data_9e

    goto :goto_8b

    :pswitch_63  #0x3
    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/bean/ApiResponse;->getReqTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mCurrentTimeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8b

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz p0, :cond_8b

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/bean/IconUrlBean;->parseJson(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)Lcom/android/launcher/folder/recommend/bean/IconUrlBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->handleAppIconUri(Lcom/android/launcher/folder/recommend/bean/IconUrlBean;)V

    goto :goto_8b

    :pswitch_79  #0x1
    invoke-static {p1}, Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;->parseJson(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/FooterController;->setScrollEnable()V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->scanToWhichPosition(Lcom/android/launcher/folder/recommend/bean/RecommendAppsChangedBean;)V

    goto :goto_8b

    :pswitch_88  #0x0, 0x2
    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->preHandleAppDataResponse(Lcom/android/launcher/folder/recommend/bean/ApiResponse;)V

    :cond_8b
    :goto_8b
    return-void

    :sswitch_data_8c
    .sparse-switch
        -0x68cca357 -> :sswitch_55
        -0x4d7846df -> :sswitch_49
        -0x3a966330 -> :sswitch_3d
        0x61ad9233 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_88  #00000000
        :pswitch_79  #00000001
        :pswitch_88  #00000002
        :pswitch_63  #00000003
    .end packed-switch
.end method

.method public setCurrentTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mCurrentTimeStamp:J

    return-void
.end method

.method public setFootController(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->mFootController:Lcom/android/launcher/folder/recommend/FooterController;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
