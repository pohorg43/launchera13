.class public final Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/RRecommendItf;


# static fields
.field public static final FOLDER_RECOMMEND_SETTING_TITLE:I = 0x2

.field public static final FOLDER_SETTING_TITLE:I = 0x1

.field public static final INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

.field public static final KEY_MOREAPPS_RECOMMEND_ENABLE:Ljava/lang/String; = "KEY_MOREAPPS_RECOMMEND_ENABLE"

.field public static final KEY_TOOLS_RECOMMEND_ENABLE:Ljava/lang/String; = "KEY_TOOLS_RECOMMEND_ENABLE"

.field public static final STORE_FOLDER_CONTENT_RECOMMEND_ENABLE:Ljava/lang/String; = "storeFolderContentRecommendEnable"

.field private static mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRecommendBySettings(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    const-string p0, "folderInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/RRecommendItf;->clearRecommendBySettings(Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_d
    return-void
.end method

.method public enableFolderContentRecommend(Z)V
    .registers 2

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/RRecommendItf;->enableFolderContentRecommend(Z)V

    :goto_8
    return-void
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

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/RRecommendItf;->getFolderRecommendDescribe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_f
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

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/RRecommendItf;->getFolderRecommendSwitchBean(IILjava/util/ArrayList;)V

    :goto_e
    return-void
.end method

.method public final getMRecommendItf()Lcom/android/launcher/folder/recommend/RRecommendItf;
    .registers 1

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    return-object p0
.end method

.method public getResourceByIndex(I)Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/RRecommendItf;->getResourceByIndex(I)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public isRecommendEnable()Z
    .registers 1

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/android/launcher/folder/recommend/RRecommendItf;->isRecommendEnable()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    const-string/jumbo p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    :goto_e
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    const-string/jumbo p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    :goto_e
    return-void
.end method

.method public final setMRecommendItf(Lcom/android/launcher/folder/recommend/RRecommendItf;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    return-void
.end method

.method public toolsEnable()Z
    .registers 1

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/android/launcher/folder/recommend/RRecommendItf;->toolsEnable()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public updateFolderRecommendSwitch(Ljava/lang/String;)V
    .registers 2

    const-string p0, "jsonArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mRecommendItf:Lcom/android/launcher/folder/recommend/RRecommendItf;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/RRecommendItf;->updateFolderRecommendSwitch(Ljava/lang/String;)V

    :goto_d
    return-void
.end method
