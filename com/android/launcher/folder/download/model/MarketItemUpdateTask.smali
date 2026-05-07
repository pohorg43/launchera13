.class public final Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;

.field public static final OP_ADD:I = 0x1

.field public static final OP_MARKET_UNINSTALL:I = 0x4

.field public static final OP_UPDATE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MarketItemUpdateTask"


# instance fields
.field private apiResponse:Ljava/lang/String;

.field private folders:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

.field private op:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->Companion:Lcom/android/launcher/folder/download/model/MarketItemUpdateTask$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;",
            "Lcom/android/launcher/folder/download/model/MarketRecommendModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "folders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketRecommendModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    iput-object p2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iput-object p3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    iput-object p4, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    return-void
.end method

.method private static final insertMarketInfoToDb$lambda-12(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->getMarketRecommendModel()Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->insertMarketInfoList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->parseData$lambda-11$lambda-10$lambda-1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->insertMarketInfoToDb$lambda-12(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V

    return-void
.end method

.method private static final parseData$lambda-11$lambda-10$lambda-1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 2

    const-string v0, "$workspaceItemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 13

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    const-string v0, "execute:op:"

    const-string v1, "MarketItemUpdateTask"

    invoke-static {p3, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget p3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_64

    const/4 v0, 0x2

    const-string v1, "getAppContext()"

    if-eq p3, v0, :cond_4c

    const/4 v0, 0x4

    if-eq p3, v0, :cond_26

    goto :goto_76

    :cond_26
    iget-object p3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->clearAllData()V

    sget-object p3, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteAllMarketInfo()Z

    sget-object p3, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V

    goto :goto_76

    :cond_4c
    sget-object p3, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {p3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V

    goto :goto_76

    :cond_64
    iget-object p2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    iget-object p3, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->parseData(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->insertMarketInfoToDb()V

    iget-object p2, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyle()V

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->updateFolder(Lcom/android/launcher3/LauncherAppState;)V

    :goto_76
    return-void
.end method

.method public final getApiResponse()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    return-object p0
.end method

.method public final getFolders()Lcom/android/launcher3/util/IntSparseArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-object p0
.end method

.method public final getMarketRecommendModel()Lcom/android/launcher/folder/download/model/MarketRecommendModel;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    return-object p0
.end method

.method public final getOp()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    return p0
.end method

.method public final insertMarketInfoToDb()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final parseData(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "marketRecommendModel"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_b
    const-string v3, "MarketItemUpdateTask"

    const-string/jumbo v4, "parseData"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_7d
    .catchall {:try_start_b .. :try_end_7d} :catchall_41d

    if-nez v2, :cond_81

    goto/16 :goto_41b

    :cond_81
    :try_start_81
    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "folder recommend dumpinfo:original push data from is: \n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_36c

    move v4, v5

    :goto_a3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v7, "reqId"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    const-string v9, "appDataList"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_361

    move v10, v5

    :goto_c2
    add-int/lit8 v11, v10, 0x1

    sget-object v12, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->Companion:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v13, "jsonAppList.getJSONObject(j)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;->parseJson(Lorg/json/JSONObject;)Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_db
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v15}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    goto :goto_fa

    :cond_f7
    const/4 v5, 0x0

    goto :goto_db

    :cond_f9
    const/4 v13, 0x0

    :goto_fa
    if-eqz v13, :cond_fe

    const/4 v12, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v12, 0x0

    :goto_ff
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v13

    if-eqz v13, :cond_113

    const/4 v13, 0x1

    goto :goto_114

    :cond_113
    const/4 v13, 0x0

    :goto_114
    sget-object v15, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v5, "getAppContext()"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v14, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v12, :cond_279

    if-nez v13, :cond_279

    if-eqz v5, :cond_12f

    goto/16 :goto_279

    :cond_12f
    const-string/jumbo v5, "reqId"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMReqId(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMStatus(I)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMLauncherMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v12

    if-nez p1, :cond_14f

    goto :goto_161

    :cond_14f
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v13

    if-nez v13, :cond_156

    goto :goto_161

    :cond_156
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v14, Lv/a;

    invoke-direct {v14, v12}, Lv/a;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v13, v12, v14}, Lcom/android/launcher3/icons/IconCache;->getRecommendIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;)V

    :goto_161
    iget-object v13, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v13, :cond_265

    sget-object v14, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_265

    iget-object v13, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v14, v13, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-nez v14, :cond_175

    goto/16 :goto_265

    :cond_175
    iget-object v14, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-nez v14, :cond_17a

    goto :goto_183

    :cond_17a
    const-string/jumbo v15, "workspaceItemInfo.bitmap"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMBitmapInfo(Lcom/android/launcher3/icons/BitmapInfo;)V

    :goto_183
    iget-object v13, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-nez v13, :cond_189

    move-object v14, v5

    goto :goto_18d

    :cond_189
    invoke-virtual {v13}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMBitmapInfo()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v14

    :goto_18d
    if-eqz v14, :cond_19f

    const-string v5, "MarketItemUpdateTask"

    const-string/jumbo v13, "parseData: mBitmapInfo != null , packageName = "

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19f
    const-string v5, "biz_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v13, 0x66

    if-ne v5, v13, :cond_1bf

    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularMarketInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMPopularApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23e

    :cond_1bf
    const-string v5, "biz_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v13, 0x65

    if-ne v5, v13, :cond_1de

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopMarketInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMTopApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    :cond_1de
    const-string v5, "biz_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v13, 0x67

    if-ne v5, v13, :cond_1fd

    const/4 v5, 0x3

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsMarketInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMoreAppsApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    :cond_1fd
    const-string v5, "biz_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v13, 0x68

    if-ne v5, v13, :cond_21c

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsMarketInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMToolsApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    :cond_21c
    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez v5, :cond_23e

    const-string v5, "biz_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v13, 0x6a

    if-ne v5, v13, :cond_23e

    const/4 v5, 0x6

    invoke-virtual {v10, v5}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayAppsMarketInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMustPlayApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23e
    :goto_23e
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "MarketItemUpdateTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "parseData: marketRecommendAppInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " workspaceItemInfo:"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_275

    :cond_265
    :goto_265
    const-string v5, "MarketItemUpdateTask"

    const-string/jumbo v10, "parseData:workspaceItemInfo.bitmap is not right pkgName:"

    invoke-virtual {v12}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_275
    move-object/from16 v16, v3

    goto/16 :goto_358

    :cond_279
    :goto_279
    if-nez v12, :cond_283

    sget-boolean v14, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v14, :cond_280

    goto :goto_283

    :cond_280
    move-object/from16 v16, v3

    goto :goto_2b5

    :cond_283
    :goto_283
    sget-object v14, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v14}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string/jumbo v3, "pkgName:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appName: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is exist in other folder \n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b5
    if-eqz v13, :cond_2e7

    sget-object v3, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pkgName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " appName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is downLoading \n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e7
    if-eqz v5, :cond_319

    sget-object v3, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pkgName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " appName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is installed \n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_319
    const-string v3, "MarketItemUpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseData:isExist:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isDownLoad:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isInstalled:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " pkgName:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appName: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_358
    if-lt v11, v9, :cond_35b

    goto :goto_363

    :cond_35b
    move v10, v11

    move-object/from16 v3, v16

    const/4 v5, 0x0

    goto/16 :goto_c2

    :cond_361
    move-object/from16 v16, v3

    :goto_363
    if-lt v6, v2, :cond_366

    goto :goto_36c

    :cond_366
    move v4, v6

    move-object/from16 v3, v16

    const/4 v5, 0x0

    goto/16 :goto_a3

    :cond_36c
    :goto_36c
    sget-object v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "after filter latest data from market is: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMLatestMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37f

    :cond_3bc
    sget-object v2, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "the data is  from market is showing is: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMMarketRecommendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSDumpInfo()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40c
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_40c} :catch_40d
    .catchall {:try_start_81 .. :try_end_40c} :catchall_41d

    goto :goto_3d0

    :catch_40d
    move-exception v0

    move-object v2, v0

    :try_start_40f
    const-string v3, "MarketItemUpdateTask"

    const-string/jumbo v4, "parseData e = "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41b
    .catchall {:try_start_40f .. :try_end_41b} :catchall_41d

    :cond_41b
    :goto_41b
    monitor-exit p2

    return-void

    :catchall_41d
    move-exception v0

    move-object v2, v0

    monitor-exit p2

    throw v2
.end method

.method public final setApiResponse(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->apiResponse:Ljava/lang/String;

    return-void
.end method

.method public final setFolders(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-void
.end method

.method public final setMarketRecommendModel(Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    return-void
.end method

.method public final setOp(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->op:I

    return-void
.end method

.method public final updateFolder(Lcom/android/launcher3/LauncherAppState;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_29

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_29

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_29

    :cond_11
    const/4 v0, 0x0

    array-length v1, p1

    :goto_13
    if-ge v0, v1, :cond_29

    aget-object v2, p1, v0

    instance-of v3, v2, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->getFolders()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->getMarketRecommendModel()Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->updateRecommendFolder(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_29
    :goto_29
    return-void
.end method
