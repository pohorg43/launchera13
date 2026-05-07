.class public final Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/RRecommendItf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "OplusFolderRecommendImpl"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->Companion:Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearRecommendBySettings(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    const-string p0, "folderInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public enableFolderContentRecommend(Z)V
    .registers 2

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getFolderRecommendDescribe(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, "folderInfos"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getFolderRecommendSwitchBean(IILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "switchBeanList"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getResourceByIndex(I)Ljava/lang/String;
    .registers 2

    const-string p0, ""

    return-object p0
.end method

.method public isRecommendEnable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public toolsEnable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateFolderRecommendSwitch(Ljava/lang/String;)V
    .registers 6

    const-string v0, "jsonArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "storeFolderContentRecommendEnable"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    move p1, v1

    goto :goto_18

    :cond_17
    move p1, v0

    :goto_18
    iget-object v2, p0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v2

    const-string v3, "exp_store_content_recommend_enable"

    invoke-virtual {v2, v3, p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/common/config/FeatureOption;->initSupportFolderContentRecommendFeature(Landroid/content/Context;)V

    if-eqz p1, :cond_36

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-eqz p1, :cond_36

    move p1, v1

    goto :goto_37

    :cond_36
    move p1, v0

    :goto_37
    invoke-static {p1}, Lcom/android/common/config/FeatureOption;->setSIsSupportFolderContentRecommend(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-eq v2, p1, :cond_80

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-nez p1, :cond_67

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    if-nez p1, :cond_51

    goto :goto_5b

    :cond_51
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-nez p1, :cond_58

    goto :goto_5b

    :cond_58
    invoke-virtual {p1}, Lcom/android/launcher3/OplusLauncherModel;->onMarketUninstall()V

    :goto_5b
    sget-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    goto :goto_80

    :cond_67
    sget-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_72} :catch_73

    goto :goto_80

    :catch_73
    move-exception p0

    const-string/jumbo p1, "store is not support recommend!!! e = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusFolderRecommendImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void
.end method
