.class public Lcom/android/launcher3/OplusAppFilter;
.super Lcom/android/launcher3/AppFilter;
.source ""


# static fields
.field private static final CLOUD_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.cloud"

.field private static final HIDE_APP_LIST_KEY:Ljava/lang/String; = "blacklist"

.field public static final HIDE_LAUNCHER_APP_NAME_CHANGED:Ljava/lang/String; = "com.android.launcher.action.HIDE_LAUNCHER_APP_CLOUD_LIST_CHANGE"

.field public static final REASON_HIDDEN_BUG:Ljava/lang/String; = "hidden_by_bug"

.field private static final REASON_HIDDEN_BY_ENCRYPT:Ljava/lang/String; = "hidden_by_encrypt"

.field private static final REASON_HIDDEN_DISABLED:Ljava/lang/String; = "hidden_by_disabled"

.field private static final REASON_HIDDEN_GAME_REQUEST:Ljava/lang/String; = "hidden_by_game_request"

.field private static final REASON_HIDDEN_LIST:Ljava/lang/String; = "hidden_by_list"

.field private static final REASON_HIDDEN_OTHER:Ljava/lang/String; = "other_reason"

.field private static final REASON_HIDDEN_UNINSTALLING:Ljava/lang/String; = "hidden_by_uninstalling"

.field private static final ROAMING_PACKAGE_NAME:Ljava/lang/String; = "com.redteamobile.roaming"
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusAppFilter"

.field private static sHideDotComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/launcher3/OplusAppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

.field private final mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

.field private mHideShortcutBadgePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermanentHideComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermanentHidePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetFilter:Lcom/android/launcher3/widget/WidgetFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mHideShortcutBadgePackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->initDefaultHiddenApps(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    new-instance v0, Lcom/android/launcher3/widget/WidgetFilter;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/WidgetFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mWidgetFilter:Lcom/android/launcher3/widget/WidgetFilter;

    return-void
.end method

.method private static initDotHideAppList(Landroid/content/Context;)V
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusAppFilter"

    if-eqz p0, :cond_56

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/launcher3/OplusAppFilter;->sHideDotComponents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    array-length v3, p0

    if-ge v2, v3, :cond_5b

    aget-object v3, p0, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_41

    new-instance v4, Landroid/content/ComponentName;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/OplusAppFilter;->sHideDotComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    sget-object v3, Lcom/android/launcher3/OplusAppFilter;->sHideDotComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_41
    const-string v3, "initDotHideAppList. The hide component is error! component = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_56
    const-string p0, "initDotHideAppList. The hideComponents is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method private initPermanentHideComponents(Landroid/content/Context;)V
    .registers 10

    invoke-static {p1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v1, "OplusAppFilter"

    const/4 v2, 0x0

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030028

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v3, v2

    :goto_1c
    if-ge v3, v0, :cond_9b

    aget-object v4, p1, v3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_42

    new-instance v4, Landroid/content/ComponentName;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initPermanentHideComponents: Incorrect component config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_59
    invoke-static {p1}, Lcom/android/launcher3/OplusAppFilter;->isOperatorSingleCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    :goto_6a
    array-length v0, p1

    if-ge v2, v0, :cond_9b

    aget-object v0, p1, v2

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    iget-object v3, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initHideComponents  hideComponent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_9b
    const-string p1, "initPermanentHideComponents: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initPermanentHidePackages(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    const-string v1, "com.redteamobile.roaming"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/PackageUtils;->getHideIconList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_4a
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    const-string v1, "com.heytap.cloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getPackgesToHide()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_62

    iget-object v1, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_62
    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isManage()Z

    move-result v0

    const-string v1, "initPermanentHidePackages, isManaged: "

    const-string v2, "OplusAppFilter"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_90

    const v0, 0x7f030048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "initPermanentHidePackages, aerAppsPkgNames: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_90
    const-string p1, "initPermanentHidePackages: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isFilteredApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    if-nez p2, :cond_15

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    if-eqz v1, :cond_46

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFilteredApp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusAppFilter"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return v1
.end method

.method private isFilteredApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    if-eqz v1, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFilteredApp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusAppFilter"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return v1
.end method

.method public static isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher3/OplusAppFilter;->sHideDotComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->initDotHideAppList(Landroid/content/Context;)V

    :cond_7
    if-nez p1, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    sget-object p0, Lcom/android/launcher3/OplusAppFilter;->sHideDotComponents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isOperatorSingleCard(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/telephony/OplusOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/OplusOSTelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/telephony/OplusOSTelephonyManager;->isOplusSingleSimCard()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isPermanentHiddenPackage(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;
    .registers 3

    sget-object v0, Lcom/android/launcher3/OplusAppFilter;->sInstance:Lcom/android/launcher3/OplusAppFilter;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/OplusAppFilter;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/OplusAppFilter;->sInstance:Lcom/android/launcher3/OplusAppFilter;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/OplusAppFilter;

    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusAppFilter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/OplusAppFilter;->sInstance:Lcom/android/launcher3/OplusAppFilter;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher3/OplusAppFilter;->sInstance:Lcom/android/launcher3/OplusAppFilter;

    return-object p0
.end method


# virtual methods
.method public getCardStoreWidgets()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mWidgetFilter:Lcom/android/launcher3/widget/WidgetFilter;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetFilter;->getMCardStoreWidgets()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getHidePackageSize()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-virtual {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHiddenGameAppSize()I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getProtectHideAppSize()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->isHiddenComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "hidden_by_list"

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "hidden_by_encrypt"

    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string p0, "hidden_by_game_request"

    return-object p0

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->inUninstallList(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string p0, "hidden_by_uninstalling"

    return-object p0

    :cond_3a
    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "hidden_by_disabled"

    return-object p0

    :cond_49
    const-string/jumbo p0, "other_reason"

    return-object p0
.end method

.method public hideBadgeOnShortcutIcon(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mHideShortcutBadgePackages:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mHideShortcutBadgePackages:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/android/launcher3/OplusAppFilter;->mHideShortcutBadgePackages:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mHideShortcutBadgePackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-virtual {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->init()V

    return-void
.end method

.method public initDefaultHiddenApps(Landroid/content/Context;)V
    .registers 4

    const-string v0, "OplusAppFilter"

    const-string v1, "initDefaultHiddenApps"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->initPermanentHidePackages(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->initPermanentHideComponents(Landroid/content/Context;)V

    return-void
.end method

.method public initFilteredAppsList()V
    .registers 5

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->initProtectedAppList()V

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mGameAccelerationBoxHelper:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-virtual {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->initGameSpaceAppList()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initFilteredAppsList: cost: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusAppFilter"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCarrierShortCutWithUri(ILandroid/content/Intent;)Z
    .registers 3

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSupportShortcutUri()Z

    move-result p0

    if-eqz p0, :cond_3f

    const/4 p0, 0x6

    if-ne p1, p0, :cond_3f

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3f

    sget-object p0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_3f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isCarrierShortCutWithUri:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusAppFilter"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public isHiddenComponent(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHideComponents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .registers 4

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/util/PackageUtils;->isNeedHideIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public shouldShowApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "OplusAppFilter"

    const-string p1, "cn is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    if-nez p2, :cond_11

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/OplusAppFilter;->isPermanentHiddenPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->isHiddenComponent(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->isFilteredApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0
.end method

.method public shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->isPermanentHiddenPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->isFilteredApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public shouldShowAppByItemType(Ljava/lang/String;Landroid/os/UserHandle;I)Z
    .registers 6

    if-nez p2, :cond_6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/util/PackageUtils;->isNeedHideIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    if-eq p3, v0, :cond_27

    const/4 v1, 0x6

    if-eq p3, v1, :cond_27

    const/16 v1, 0x64

    if-eq p3, v1, :cond_27

    const/4 v1, 0x5

    if-eq p3, v1, :cond_27

    const/16 v1, 0x63

    if-ne p3, v1, :cond_28

    :cond_27
    return v0

    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public shouldShowInLayout(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->inUninstallList(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_26

    return v1

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowInLayout(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->inUninstallList(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/common/util/PackageUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v1

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusAppFilter;->mWidgetFilter:Lcom/android/launcher3/widget/WidgetFilter;

    iget-object v1, p0, Lcom/android/launcher3/OplusAppFilter;->mPermanentHidePackages:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/OplusAppFilter;->mDeepProtectedAppsManager:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/widget/WidgetFilter;->shouldShowWidget(Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/List;Lcom/android/launcher/filter/DeepProtectedAppsManager;)Z

    move-result p0

    return p0
.end method
