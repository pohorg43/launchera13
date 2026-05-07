.class public Lcom/android/launcher/operators/GeneralCustomizer;
.super Lcom/android/launcher/operators/Customizer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/operators/GeneralCustomizer$OrderPackageComparator;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "clsname"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "comname"

.field private static final DEFAULT_LOCATION_VALUE:I = -0x1

.field private static final FEATURE_CLICK_ICON_TOAST_DISABLE:Ljava/lang/String; = "com.android.launcher.click_icon_toast_disable"

.field private static final FEATURE_OPERATOR_SIM_CHANGE:Ljava/lang/String; = "com.android.launcher.operator_sim_change"

.field private static final FEATURE_REPLACE_AUTOINSTALL_INFO:Ljava/lang/String; = "com.android.launcher.replace_placeHolder_dbInfo"

.field private static final HAVE_RESET_LAUNCHER_KEY:Ljava/lang/String; = "have_reset_launcher"

.field public static final INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

.field private static final PACKAGE_NAME:Ljava/lang/String; = "pkgname"

.field private static final TAG:Ljava/lang/String; = "GeneralCustomizer"

.field private static final TOAST_DEAFAULT_TAG:Ljava/lang/String; = "OPERATOR"


# instance fields
.field private mCarrierAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMyCarrierComponent:Lcom/android/launcher3/util/ComponentKey;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-direct {v0}, Lcom/android/launcher/operators/GeneralCustomizer;-><init>()V

    sput-object v0, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/operators/Customizer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mMyCarrierComponent:Lcom/android/launcher3/util/ComponentKey;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->lambda$resetDatabaseAndReload$3(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/operators/GeneralCustomizer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/operators/GeneralCustomizer;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mCarrierAppList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/operators/GeneralCustomizer;Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/operators/GeneralCustomizer;->lambda$resetDatabaseAndReload$1(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/operators/GeneralCustomizer;Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/operators/GeneralCustomizer;->lambda$replacePlaceHolderDbInfo$2(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static carrierCotaDataReady(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/operators/GeneralCustomizer;->getCarrierPackage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "carrierCotaDataReady: "

    const-string v1, "GeneralCustomizer"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher/operators/GeneralCustomizer;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->lambda$onActivityCreated$0(Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private generateDbIntentStrByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10200000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCarrierComponent(I)Ljava/lang/String;
    .registers 3

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getCarrierSpecificComponent()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getCarrierPackage(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getCarrierSpecificPackage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getLayoutSpInit()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getLayoutSpInit()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getReplaceComname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.launcher.replace_placeHolder_dbInfo"

    invoke-static {p0, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_44

    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_43

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v1

    :cond_43
    return-object v0

    :cond_44
    :goto_44
    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "not replace icon feature"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReplaceIconCompName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher.replace_placeHolder_dbInfo"

    invoke-static {v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    const-string/jumbo v0, "target"

    const-string/jumbo v1, "pkgname"

    invoke-static {p0, v0, v1}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clsname"

    invoke-static {p0, v0, v2}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "replacePkgName: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    const-string v3, ", replaceClsName: "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object p0, v0, v2

    const-string v2, "GeneralCustomizer"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1, p0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_4a
    const-string p0, ""

    const-string v0, " "

    invoke-static {p0, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_64

    goto :goto_31

    :sswitch_10
    const-string v2, "comname"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto :goto_31

    :cond_19
    const/4 v1, 0x2

    goto :goto_31

    :sswitch_1b
    const-string v2, "clsname"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    goto :goto_31

    :cond_24
    move v1, v3

    goto :goto_31

    :sswitch_26
    const-string/jumbo v2, "pkgname"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    goto :goto_31

    :cond_30
    move v1, v4

    :goto_31
    const-string p2, "/"

    packed-switch v1, :pswitch_data_72

    goto :goto_62

    :pswitch_37  #0x2
    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceComname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3c  #0x1
    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceComname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    aget-object p0, p0, v3

    goto :goto_4c

    :cond_4b
    move-object p0, v0

    :goto_4c
    if-eqz p0, :cond_62

    return-object p0

    :pswitch_4f  #0x0
    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceComname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5e

    aget-object p0, p0, v4

    goto :goto_5f

    :cond_5e
    move-object p0, v0

    :goto_5f
    if-eqz p0, :cond_62

    return-object p0

    :cond_62
    :goto_62
    return-object v0

    nop

    :sswitch_data_64
    .sparse-switch
        -0x1ed099a9 -> :sswitch_26
        0x33dc56b5 -> :sswitch_1b
        0x38a6538c -> :sswitch_10
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4f  #00000000
        :pswitch_3c  #00000001
        :pswitch_37  #00000002
    .end packed-switch
.end method

.method private static hasResetLauncher(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "have_reset_launcher"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "hasResetLauncher: "

    const-string v1, "GeneralCustomizer"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isForbidRemovalIcon(Ljava/lang/String;)Z
    .registers 4

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getForbidRemovalIcon()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2f

    :cond_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "not forbid removal icon feature "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isInsertCorrectSimCard(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->DYNAMIC_SIMSLOT_1:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    const-string v1, "com.android.launcher.operator_sim_change"

    invoke-static {p0, v0, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->DYNAMIC_SIMSLOT_2:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, p1, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    const-string p1, "isInsertCorrectSimCard featureSupport = "

    const-string v0, "GeneralCustomizer"

    invoke-static {p1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isLayoutSpCustomize()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLayoutSpCustomize()Z

    move-result p0

    return p0
.end method

.method private isNeedToShowToast(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->DYNAMIC_SIMSLOT_1:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    const-string v2, "com.android.launcher.click_icon_toast_disable"

    invoke-static {v0, v1, v2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isInsertOperatorSimcard feature value ="

    const-string v2, "GeneralCustomizer"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/operators/GeneralCustomizer;->isOperatorAppEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method private isOperatorAppEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x0

    const-string v0, "GeneralCustomizer"

    if-nez p1, :cond_b

    const-string p1, "isOperatorAppEnable context is null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p1

    const/4 v1, 0x2

    const-string v2, "getApplicationEnabledSetting Exception: "

    invoke-static {v2, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move p1, v1

    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOperatorAppEnable packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",appState="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3f

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    return p0

    :cond_3f
    :goto_3f
    return p2
.end method

.method private synthetic lambda$onActivityCreated$0(Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    const-string v0, "GeneralCustomizer"

    const-string/jumbo v1, "on all apps update"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher/operators/GeneralCustomizer;->hasInitLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Lcom/android/launcher/operators/GeneralCustomizer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/operators/GeneralCustomizer$1;-><init>(Lcom/android/launcher/operators/GeneralCustomizer;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private synthetic lambda$replacePlaceHolderDbInfo$2(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/LauncherModel;)V
    .registers 7

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/operators/GeneralCustomizer;->queryAndUpdateDbInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher/operators/GeneralCustomizer;->queryAndUpdateDbInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v1

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/launcher/operators/GeneralCustomizer;->queryAndUpdateDbInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    if-eqz p0, :cond_23

    :cond_18
    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "replacePlaceHolderDbInfo success to forceReload"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_23
    return-void
.end method

.method private synthetic lambda$resetDatabaseAndReload$1(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 7

    const-string v0, "GeneralCustomizer"

    const-string/jumbo v1, "resetDatabaseAndReload."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "create_empty_db"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/launcher/operators/GeneralCustomizer;->replacePlaceHolderDbInfo(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$resetDatabaseAndReload$3(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "create_empty_db"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    return-void
.end method

.method private queryAndUpdateDbInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 16

    const-string v0, "itemType"

    const-string v1, "%"

    const-string v2, "GeneralCustomizer"

    const/4 v3, 0x0

    if-nez p1, :cond_f

    const-string p0, " queryAndUpdateDbInfo context is null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_f
    invoke-static {p1, p3}, Lcom/android/common/util/OplusLauncherDbUtils;->getItemTableUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "queryAndSaveEnableAppLocation db table is not exit mode= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2f
    const-string/jumbo v4, "target"

    const-string v6, "clsname"

    invoke-static {p1, v4, v6}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/android/launcher/operators/GeneralCustomizer;->generateDbIntentStrByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "source"

    const-string/jumbo v7, "pkgname"

    invoke-static {p1, v4, v7}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v4, v6}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/android/launcher/operators/GeneralCustomizer;->generateDbIntentStrByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    return v3

    :cond_5b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_61
    const-string v8, "intent LIKE ?"

    new-array v9, v7, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v3
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_79} :catch_ba
    .catchall {:try_start_61 .. :try_end_79} :catchall_b6

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v11, -0x1

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    :try_start_7f
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_83} :catch_b4
    .catchall {:try_start_7f .. :try_end_83} :catchall_b1

    if-eqz p0, :cond_a9

    :try_start_85
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a9

    const-string/jumbo v4, "shortcut already exists"

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_9b} :catch_a6
    .catchall {:try_start_85 .. :try_end_9b} :catchall_12e

    :try_start_9b
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_a4
    .catchall {:try_start_9b .. :try_end_a3} :catchall_12e

    goto :goto_ab

    :catch_a4
    move-exception v5

    goto :goto_c0

    :catch_a6
    move-exception v4

    move-object v5, v4

    goto :goto_bf

    :cond_a9
    move v4, v11

    move v5, v4

    :goto_ab
    if-eqz p0, :cond_db

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_db

    :catchall_b1
    move-exception p0

    goto/16 :goto_131

    :catch_b4
    move-exception p0

    goto :goto_bd

    :catchall_b6
    move-exception p0

    const/4 v1, 0x0

    goto/16 :goto_131

    :catch_ba
    move-exception p0

    const/4 v1, 0x0

    const/4 v11, -0x1

    :goto_bd
    move-object v5, p0

    move-object p0, v1

    :goto_bf
    move v4, v11

    :goto_c0
    :try_start_c0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryAndSaveEnableAppLocation Exception  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_c0 .. :try_end_d5} :catchall_12e

    if-eqz p0, :cond_da

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_da
    move v5, v11

    :cond_db
    :goto_db
    if-ne v4, v11, :cond_de

    return v3

    :cond_de
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "intent"

    invoke-virtual {p0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x66

    if-ne v5, v6, :cond_ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "iconPackage"

    const-string v5, ""

    invoke-virtual {p0, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconResource"

    invoke-virtual {p0, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ff
    invoke-static {p1, p3, v4}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update Db packageName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",mode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",updateResult = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p0, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_12d

    move v3, p1

    :cond_12d
    return v3

    :catchall_12e
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_131
    if-eqz v1, :cond_136

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_136
    throw p0
.end method

.method private resetDatabaseAndReload(Landroid/content/Context;)V
    .registers 6

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/operators/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher/operators/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->setHasCustomized(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkUpdateApp(Ljava/util/ArrayList;Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->hasUpdateApp(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->simStateChangedToReLoadLauncher(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getPreferredPosition(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .registers 12

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getPlaceAppsInSpecificGrid()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const/4 v0, 0x0

    move v2, v0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9c

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const-string v6, "GeneralCustomizer"

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2e

    const-string v4, "config place item error: "

    invoke-static {v4, v3, v6}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_2e
    :try_start_2e
    aget-object v5, v4, v0

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_98

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_98

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPreferredPosition] itemInfo = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", screenLocation = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [I

    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v0

    aget-object v8, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v9

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v7
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_92} :catch_93

    return-object v4

    :catch_93
    const-string v4, "config screen id error: "

    invoke-static {v4, v3, v6}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_9c
    return-object v1
.end method

.method public hasInitLayout(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher/operators/GeneralCustomizer;->getLayoutSpInit()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasUpdateApp(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0}, Lcom/android/launcher/operators/GeneralCustomizer;->getCarrierPackage(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    :cond_25
    return p0
.end method

.method public isInterceptItemClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    instance-of v2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_10

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1a

    :cond_10
    instance-of v2, p2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_1a

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_1a
    :goto_1a
    if-nez v1, :cond_1d

    return v0

    :cond_1d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_24

    return v0

    :cond_24
    invoke-virtual {p0, p2}, Lcom/android/launcher/operators/GeneralCustomizer;->needToastApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/operators/GeneralCustomizer;->isNeedToShowToast(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getClickIconToastTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_40

    :cond_3e
    const-string p0, "OPERATOR"

    :cond_40
    const p2, 0x7f120378

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_54
    return v0
.end method

.method public isOperatorPlaceHolderItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const/4 v0, 0x0

    if-nez p2, :cond_e

    return v0

    :cond_e
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_15

    return v0

    :cond_15
    invoke-direct {p0, p2}, Lcom/android/launcher/operators/GeneralCustomizer;->isForbidRemovalIcon(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/operators/GeneralCustomizer;->isOperatorAppEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2a

    const-string p0, "GeneralCustomizer"

    const-string p1, "isOperatorPlaceHolderItem can not be removed do not show PopupContainerWithArrow"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v0
.end method

.method public needDuplicatedShortcut(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_e

    return v1

    :cond_e
    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getNeedDuplicatedShortcut()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_3c

    :cond_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_3b
    return v1

    :cond_3c
    :goto_3c
    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "not duplicated shortcut feature "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public needToastApp(Ljava/lang/String;)Z
    .registers 4

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getNeedToastApp()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2f

    :cond_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "not operator cust app feature "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher/operators/GeneralCustomizer;->hasInitLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_e

    return-void

    :cond_e
    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->getPlaceAppsInSpecificGrid()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b7

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mCarrierAppList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_31
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->getCarrierSpecificPackage()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "GeneralCustomizer"

    if-ge v2, v3, :cond_9d

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    new-instance v5, Landroid/content/ComponentName;

    invoke-static {v2}, Lcom/android/launcher/operators/GeneralCustomizer;->getCarrierPackage(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2}, Lcom/android/launcher/operators/GeneralCustomizer;->getCarrierComponent(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mMyCarrierComponent:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    const-string v5, "mMyCarrierComponent = "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mMyCarrierComponent:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_76

    const-string/jumbo v3, "no myapps or no mygames"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_76
    iget-object v5, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mCarrierAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCarrierAppList = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mCarrierAppList:Ljava/util/ArrayList;

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_9d
    const-string v1, "ale customize mMyAppsComponent = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mMyCarrierComponent:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/operators/d;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/operators/d;-><init>(Lcom/android/launcher/operators/GeneralCustomizer;Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    :cond_b7
    iget-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "com.android.launcher.replace_placeHolder_dbInfo"

    invoke-static {p1, v1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e0

    iget-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "target"

    const-string/jumbo v2, "pkgname"

    invoke-static {p1, v1, v2}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    if-eqz p1, :cond_e0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->replaceAutoInstallAfterOOBE(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    :cond_e0
    return-void
.end method

.method public onAddApp(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 7
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchManager;->placeAllPAIAppsInWorkspace(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    :cond_9
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/launcher/layout/SpecialAppCompatHelper;->getInstance()Lcom/android/launcher/layout/SpecialAppCompatHelper;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/layout/SpecialAppCompatHelper;->shouldAddToFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher/layout/SpecialAppCompatHelper;->addToFolder(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_33
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3c
    return-void
.end method

.method public onApplicationCreated(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->hasInitLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "onApplicationCreated hasInitLayout"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onInitAddAutoInstallApp(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 7

    const-string p0, "GeneralCustomizer"

    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_4
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_22

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    move v1, p1

    goto :goto_39

    :catch_22
    move-exception v1

    const-string/jumbo v2, "onInitAddAutoInstallApp exception "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    move v1, v0

    :goto_39
    if-eqz v1, :cond_51

    const-string/jumbo p1, "onInitAddAutoInstallApp package disabled "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_51
    return p1
.end method

.method public onInitAddWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onInitAddWidget widgetPackageName: "

    const-string v1, "GeneralCustomizer"

    invoke-static {v0, p2, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/operators/GeneralCustomizer;->getCarrierPackage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->isInsertCorrectSimCard(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->hasInitLayout(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2a

    const-string/jumbo p0, "onInitAddWidget: false."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0
.end method

.method public onPreBindNoPositionItems(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public replaceAutoInstallAfterOOBE(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/launcher/operators/GeneralCustomizer$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1, p2}, Lcom/android/launcher/operators/GeneralCustomizer$2;-><init>(Lcom/android/launcher/operators/GeneralCustomizer;Landroid/os/Handler;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher/operators/GeneralCustomizer;->resetDatabaseAndReload(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public replacePlaceHolderDbInfo(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_b

    const-string p0, "GeneralCustomizer"

    const-string/jumbo p1, "replacePlaceHolderDbInfo launcherModel is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance v0, Lcom/android/launcher/c;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher/c;-><init>(Lcom/android/launcher/operators/GeneralCustomizer;Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/LauncherModel;)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public resetDatabaseAndReload(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    invoke-static {p1}, Lcom/android/launcher/operators/GeneralCustomizer;->hasResetLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lcom/android/launcher/a0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/operators/GeneralCustomizer;Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    const-wide/16 p2, 0x0

    invoke-static {v0, p2, p3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->setHasCustomized(Landroid/content/Context;)V

    :cond_20
    return-void
.end method

.method public setHasCustomized(Landroid/content/Context;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "GeneralCustomizer"

    const-string/jumbo v1, "setHasCustomized"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/operators/GeneralCustomizer;->isLayoutSpCustomize()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/launcher/operators/GeneralCustomizer;->getLayoutSpInit()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1c

    :cond_17
    const-string p0, "have_reset_launcher"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1c
    return-void
.end method

.method public simStateChangedToReLoadLauncher(Landroid/content/Context;)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->hasInitLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GeneralCustomizer"

    if-eqz v0, :cond_10

    const-string/jumbo p0, "simStateChangedToReLoadLauncher has reset just return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->isInsertCorrectSimCard(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_21

    const-string/jumbo v0, "simStateChangedToReLoadLauncher resetDatabaseAndReload by sim"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->resetDatabaseAndReload(Landroid/content/Context;)V

    return v3

    :cond_21
    invoke-direct {p0}, Lcom/android/launcher/operators/GeneralCustomizer;->isLayoutSpCustomize()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "simStateChangedToReLoadLauncher resetDatabaseAndReload by cota"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer;->resetDatabaseAndReload(Landroid/content/Context;)V

    return v3

    :cond_37
    return v1
.end method
