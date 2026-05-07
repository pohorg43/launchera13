.class public Lcom/android/launcher/DefaultWorkspaceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final GOOGLE_FOLDER_TITLE:Ljava/lang/String; = "Google"

.field private static final GOOGLE_PAI_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultWorkspaceHelper"

.field private static sInstance:Lcom/android/launcher/operators/Customizer;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "com.google.android.apps.docs"

    const-string v1, "com.google.android.apps.youtube.music"

    const-string v2, "com.google.android.videos"

    const-string v3, "com.google.android.apps.tachyon"

    const-string v4, "com.google.android.apps.podcasts"

    const-string v5, "com.google.android.apps.magazines"

    const-string v6, "com.google.android.apps.subscriptions.red"

    const-string v7, "com.google.android.apps.walletnfcrel"

    const-string v8, "com.google.android.apps.nbu.paisa.user"

    const-string v9, "com.google.android.apps.chromecast.app"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/DefaultWorkspaceHelper;->GOOGLE_PAI_APPS:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/DefaultWorkspaceHelper;->sInstance:Lcom/android/launcher/operators/Customizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/DefaultWorkspaceHelper;->lambda$placeGooglePaiAppInGoogleFolderIfNeeded$0(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static getCustomizer()Lcom/android/launcher/operators/Customizer;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer(Landroid/content/Context;)Lcom/android/launcher/operators/Customizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizer(Landroid/content/Context;)Lcom/android/launcher/operators/Customizer;
    .registers 1

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isResetByOobe()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->INSTANCE:Lcom/android/launcher/operators/Customizer;

    return-object p0

    :cond_b
    sget-object p0, Lcom/android/launcher/DefaultWorkspaceHelper;->sInstance:Lcom/android/launcher/operators/Customizer;

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    sget-object p0, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    sput-object p0, Lcom/android/launcher/DefaultWorkspaceHelper;->sInstance:Lcom/android/launcher/operators/Customizer;

    return-object p0
.end method

.method private static synthetic lambda$placeGooglePaiAppInGoogleFolderIfNeeded$0(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "placePaiAppInGoogleFolder pacakgeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultWorkspaceHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public static placeGooglePaiAppInGoogleFolderIfNeeded(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z
    .registers 7

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isGoogleRsa3()Z

    move-result v0

    const-string v1, "DefaultWorkspaceHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const-string/jumbo p0, "placePaiAppInGoogleFolder is not google rsa3 return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_10
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string/jumbo p0, "placePaiAppInGoogleFolder componentName is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string/jumbo p0, "placePaiAppInGoogleFolder pacakgeName is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2e
    sget-object v3, Lcom/android/launcher/DefaultWorkspaceHelper;->GOOGLE_PAI_APPS:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    return v2

    :cond_37
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {v3, p1}, Lcom/android/launcher/model/BgDataModelHelper;->hasWorkspaceItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_46

    const-string/jumbo p0, "placePaiAppInGoogleFolder duplicate icon not allowed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_46
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    const-string v3, "Google"

    invoke-virtual {p0, v3}, Lcom/android/launcher/model/BgDataModelHelper;->findFolderByTitle(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    if-nez p0, :cond_57

    const-string/jumbo p0, "placePaiAppInGoogleFolder there is no google folder return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_57
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_6f

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/j;

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/launcher/j;-><init>(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_6f
    return v2
.end method

.method public static setCotaCustomizer(Landroid/content/Context;)V
    .registers 3

    const-string v0, "DefaultWorkspaceHelper"

    const-string/jumbo v1, "setCotaCustomizer GeneralCotaCustomizer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/operators/GeneralCotaCustomizer;->INSTANCE:Lcom/android/launcher/operators/Customizer;

    sput-object v0, Lcom/android/launcher/DefaultWorkspaceHelper;->sInstance:Lcom/android/launcher/operators/Customizer;

    check-cast v0, Lcom/android/launcher/operators/GeneralCotaCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->resetDatabaseAndReload(Landroid/content/Context;)V

    return-void
.end method
