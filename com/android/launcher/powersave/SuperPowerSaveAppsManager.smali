.class public Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLASSNAME_CONTACTS:Ljava/lang/String; = "com.android.contacts.DialtactsActivityAlias"

.field private static final CLASSNAME_MMS:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final DEFAULT_CLASS:[Ljava/lang/String;

.field private static final DEFAULT_NUM_ROW:I = 0x1

.field private static final DEFAULT_PKG:[Ljava/lang/String;

.field private static final DEFAULT_RSA_CLASS:[Ljava/lang/String;

.field private static final DEFAULT_RSA_PKG:[Ljava/lang/String;

.field private static final INVALIDCLASSEXCEPTION_KEY:Ljava/lang/String; = "java.io.InvalidClassException"

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field public static final NUM_COLUMN:I = 0x3

.field public static final NUM_ROW:I = 0x2

.field private static final PACKAGE_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final PKG_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final PKG_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveAppsManager"

.field private static final sDefaultClass:[[Ljava/lang/String;

.field private static sDefaultNumColumn:I

.field private static final sDefaultPkg:[[Ljava/lang/String;

.field private static sHasOplusPackage:Z

.field private static sIsSelfMmsEnabledForExp:Ljava/lang/Boolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilterPackages:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    const-string v0, "com.android.contacts"

    const-string v1, "com.android.mms"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_PKG:[Ljava/lang/String;

    const-string v2, "com.android.contacts.DialtactsActivityAlias"

    const-string v3, "com.android.mms.ui.ConversationList"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_CLASS:[Ljava/lang/String;

    const-string v4, "com.google.android.dialer"

    const-string v5, "com.google.android.apps.messaging"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_PKG:[Ljava/lang/String;

    const-string v4, "com.google.android.dialer.extensions.GoogleDialtactsActivity"

    const-string v5, "com.google.android.apps.messaging.ui.ConversationListActivity"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_CLASS:[Ljava/lang/String;

    const/4 v4, 0x0

    sput-object v4, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sIsSelfMmsEnabledForExp:Ljava/lang/Boolean;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sHasOplusPackage:Z

    const/4 v5, 0x2

    sput v5, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultNumColumn:I

    sget-object v6, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    const v7, 0x7f12004b

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    const-string v10, ""

    if-nez v8, :cond_7d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7d

    const/4 v8, 0x3

    new-array v11, v8, [[Ljava/lang/String;

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v4

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    new-array v0, v5, [Ljava/lang/String;

    aput-object v6, v0, v4

    aput-object v10, v0, v9

    aput-object v0, v11, v5

    sput-object v11, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultPkg:[[Ljava/lang/String;

    new-array v0, v8, [[Ljava/lang/String;

    filled-new-array {v2, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-array v1, v5, [Ljava/lang/String;

    aput-object v7, v1, v4

    aput-object v10, v1, v9

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultClass:[[Ljava/lang/String;

    sput v8, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultNumColumn:I

    goto :goto_9f

    :cond_7d
    new-array v6, v5, [[Ljava/lang/String;

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    sput-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultPkg:[[Ljava/lang/String;

    new-array v0, v5, [[Ljava/lang/String;

    filled-new-array {v2, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultClass:[[Ljava/lang/String;

    sput v5, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultNumColumn:I

    :goto_9f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mFilterPackages:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->lambda$filterApps$0(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0
.end method

.method private static checkIfNeedUpdateAgain(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->isFirstEnterSuperPowerMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-boolean v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sHasOplusPackage:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->isSelfMmsEnabledForExp(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    if-nez p1, :cond_25

    goto :goto_16

    :cond_25
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2c

    goto :goto_16

    :cond_2c
    sget-object v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_PKG:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultPkg:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v0, v0, v1

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultClass:[[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    goto :goto_16

    :cond_4f
    return-void
.end method

.method private static checkWeatherNeedToUpdateDefaultPackage(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sHasOplusPackage:Z

    if-nez v0, :cond_116

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->isFirstEnterSuperPowerMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_116

    :cond_c
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "checkWeatherNeedToUpdateDefaultPackage, j = "

    const-string v4, "SuperPowerSaveAppsManager"

    if-eqz v2, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    if-nez v2, :cond_2a

    goto :goto_17

    :cond_2a
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_31

    goto :goto_17

    :cond_31
    move v5, v0

    :goto_32
    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_PKG:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_78

    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_PKG:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_CLASS:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    add-int/lit8 v1, v1, 0x1

    const-string v6, " , package name = "

    invoke-static {v3, v5, v6}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_78
    move v5, v0

    :goto_79
    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_PKG:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_17

    aget-object v7, v6, v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    sget-object v7, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_CLASS:[Ljava/lang/String;

    aget-object v8, v7, v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    aget-object v7, v7, v5

    aget-object v6, v6, v5

    invoke-virtual {p0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_b4
    sget-object p1, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_PKG:[Ljava/lang/String;

    array-length p1, p1

    if-ne v1, p1, :cond_c2

    const-string p0, "checkWeatherNeedToUpdateDefaultPackage, sHasOplusPackage = true."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sHasOplusPackage:Z

    return-void

    :cond_c2
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_ca
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_116

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move v1, v0

    :goto_d7
    sget-object v2, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_PKG:[Ljava/lang/String;

    array-length v5, v2

    if-ge v1, v5, :cond_ca

    if-eqz p1, :cond_113

    aget-object v5, v2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    sget-object v5, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->DEFAULT_RSA_CLASS:[Ljava/lang/String;

    aget-object v6, v5, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultPkg:[[Ljava/lang/String;

    aget-object v6, v6, v1

    aget-object v7, v2, v1

    aput-object v7, v6, v0

    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultClass:[[Ljava/lang/String;

    aget-object v6, v6, v1

    aget-object v5, v5, v1

    aput-object v5, v6, v0

    const-string v5, ", DEFAULT_RSA_PKG = "

    invoke-static {v3, v1, v5}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v2, v1

    invoke-static {v5, v2, v4}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_113
    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    :cond_116
    :goto_116
    return-void
.end method

.method private findMatchItem(Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;Ljava/util/ArrayList;)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "SuperPowerSaveAppsManager"

    if-eqz p2, :cond_7c

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7c

    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_10

    iget-object v2, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->userIdentifier:I

    iget-object v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_10

    iget-object v2, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->className:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    iget-object v2, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->className:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/launcher/powersave/utils/SuperPowerComponentCompat;->isClockCompat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_5a
    instance-of p0, v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    if-eqz p0, :cond_61

    check-cast v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    return-object v1

    :cond_61
    new-instance p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    return-object p0

    :cond_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findMatchItem error, superPowerSaveModelItemInfo = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_7c
    :goto_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findMatchItem, apps = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static generateSpecialDefaultItem(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;
    .registers 6

    new-instance v0, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    invoke-direct {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;-><init>()V

    iput p3, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->cellX:I

    iput p4, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->cellY:I

    iput-object p0, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->className:Ljava/lang/String;

    iput p2, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->userIdentifier:I

    return-object v0
.end method

.method private static initDefaultLocation(Landroid/content/Context;)V
    .registers 16

    const-string v0, "initDefaultLocation, versioncode is 0, e = "

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->isFirstEnterSuperPowerMode(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "initDefaultLocation, update versioncode end. versioncode = "

    const-string/jumbo v3, "superpower_ota_desktop_update_version_code"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "SuperPowerSaveAppsManager"

    if-eqz v1, :cond_81

    const-string v0, "---initDefaultLocation, isFirstEnterSuperPowerMode true."

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    :goto_17
    sget v1, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultNumColumn:I

    if-ge v0, v1, :cond_5e

    move v1, v5

    :goto_1c
    if-ge v1, v4, :cond_5b

    invoke-static {p0, v0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->getItemFromSp(Landroid/content/Context;II)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v7

    if-nez v7, :cond_58

    const-string v7, "initDefaultLocation, getItemFromSp is null, x:"

    const-string v8, " y:"

    const-string v9, " pkg:"

    invoke-static {v7, v0, v8, v1, v9}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultPkg:[[Ljava/lang/String;

    aget-object v9, v8, v0

    aget-object v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " class:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultClass:[[Ljava/lang/String;

    aget-object v10, v9, v0

    aget-object v10, v10, v1

    invoke-static {v7, v10, v6}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v7, v8, v0

    aget-object v7, v7, v1

    aget-object v8, v9, v0

    aget-object v8, v8, v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-static {v7, v8, v9, v0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->generateSpecialDefaultItem(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->addOrUpdateItemToSp(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_5e
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->setHadEnterSuperPowerModeFlag(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initDefaultLocation, update versioncode start."

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b2

    :cond_81
    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "---initDefaultLocation, isFirstEnterSuperPowerMode false. versionCode = "

    invoke-static {v7, v4, v6}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v4, :cond_1b2

    move v4, v5

    move v7, v4

    move v8, v7

    :goto_93
    const/4 v9, 0x3

    if-ge v5, v9, :cond_186

    :goto_96
    const/4 v9, 0x2

    if-ge v8, v9, :cond_181

    :try_start_99
    invoke-static {v5, v8}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->buildPreKey(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->buildKey(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v1, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_135

    const-string/jumbo v12, "null"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b4} :catch_179

    if-nez v12, :cond_135

    :try_start_b6
    new-instance v12, Ljava/io/ObjectInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    const/4 v14, 0x0

    invoke-static {v11, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v11

    invoke-direct {v13, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_d3} :catch_100
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_d3} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d3} :catch_d4

    goto :goto_136

    :catch_d4
    move-exception v11

    :try_start_d5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initDefaultLocation, versioncode is 0, e2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_135

    :catch_ea
    move-exception v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initDefaultLocation, versioncode is 0, e1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_135

    :catch_100
    move-exception v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "java.io.InvalidClassException"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_135

    add-int/lit8 v4, v4, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initDefaultLocation, versioncode is 0, done = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    :goto_135
    const/4 v11, 0x0

    :goto_136
    invoke-static {p0, v10, v11}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->saveSuperPowerSaveModelItemInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V

    invoke-static {p0, v9}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->removeSharedPrefsItem(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initDefaultLocation, versioncode is 0, keyPre = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", keyNew = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", energySaveModelWriterItemInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", getSuperpowerSaveModelWriterItemInfo new key = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v9}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperpowerSaveModelWriterItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", getSuperpowerSaveModelWriterItemInfo old key = "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v10}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperpowerSaveModelWriterItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_178} :catch_179

    goto :goto_17d

    :catch_179
    move-exception v9

    invoke-static {v0, v9, v6}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_17d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_96

    :cond_181
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_93

    :cond_186
    if-ne v4, v7, :cond_192

    const-string v0, "initDefaultLocation, reInitLauncherDefaultData, happenInvalidClassExceptionCount = "

    const-string v5, ", valueNotNullCount = "

    invoke-static {v0, v4, v5, v7, v6}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->reInitLauncherDefaultData(Landroid/content/Context;)V

    :cond_192
    const-string v0, "initDefaultLocation, update versioncode start. versioncode 0."

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v3, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b2
    :goto_1b2
    return-void
.end method

.method private static isSelfMmsEnabledForExp(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sIsSelfMmsEnabledForExp:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    const-string v0, "com.android.mms"

    invoke-static {p0, v0}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->isSystemAppEnabledForExp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sIsSelfMmsEnabledForExp:Ljava/lang/Boolean;

    :cond_10
    sget-object p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sIsSelfMmsEnabledForExp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isSystemAppEnabledForExp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "SuperPowerSaveAppsManager"

    if-eqz p0, :cond_50

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_50

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x100000

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSystemAppEnabledForExp appInfo = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_32

    goto :goto_47

    :catch_32
    move-exception p0

    const-string p1, "isSystemAppEnabledForExp : e = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    if-eqz v2, :cond_4e

    iget-boolean p0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v3

    :goto_4f
    return v1

    :cond_50
    :goto_50
    const-string p0, "isSystemAppEnabledForExp return true for context is null or package name is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static synthetic lambda$filterApps$0(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;)Z
    .registers 4

    iget-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    iget-object p0, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->isIgnoredApp(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static parseJsonToSuperPowerSaveModelItemInfo(Ljava/lang/String;)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_20

    sget-object v1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->Companion:Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo$Companion;

    invoke-virtual {v1, p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo$Companion;->parseForSharePrefs(Lcom/google/gson/JsonObject;)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception p0

    const-string/jumbo v1, "parseJsonToSuperPowerSaveModelItemInfo, e: "

    const-string v2, "SuperPowerSaveAppsManager"

    invoke-static {v1, p0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-object v0
.end method

.method private static reInitLauncherDefaultData(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget v2, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultNumColumn:I

    if-ge v1, v2, :cond_6c

    move v2, v0

    :goto_7
    const/4 v3, 0x1

    if-gt v2, v3, :cond_69

    const-string v3, " y:"

    const-string/jumbo v4, "reInitLauncherDefaultData, x:"

    const-string v5, "SuperPowerSaveAppsManager"

    if-nez v2, :cond_44

    const-string v6, " pkg:"

    invoke-static {v4, v1, v3, v2, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultPkg:[[Ljava/lang/String;

    aget-object v6, v4, v1

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " class:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->sDefaultClass:[[Ljava/lang/String;

    aget-object v7, v6, v1

    aget-object v7, v7, v2

    invoke-static {v3, v7, v5}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v4, v1

    aget-object v3, v3, v2

    aget-object v4, v6, v1

    aget-object v4, v4, v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->generateSpecialDefaultItem(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->addOrUpdateItemToSp(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V

    goto :goto_66

    :cond_44
    invoke-static {v4, v1, v3, v2, v5}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->buildKey(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_4c
    invoke-static {p0, v3, v4}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->saveSuperPowerSaveModelItemInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_66

    :catchall_50
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reInitLauncherDefaultData, e1:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6c
    return-void
.end method

.method public static updateDefaultApps(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->DEFAULT_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->checkWeatherNeedToUpdateDefaultPackage(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->checkIfNeedUpdateAgain(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->initDefaultLocation(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public buildTipIconItem(II)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;
    .registers 5

    new-instance v0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-direct {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->setViewType(I)V

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1204f2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public buildWorkSpaceAppList(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SuperPowerSaveAppsManager"

    const-string v1, "---buildWorkSpaceAppList start."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mFilterPackages:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_48

    aget-object v5, v1, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v7, :cond_14

    iget-object v8, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildWorkSpaceAppList remove appInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_48
    if-eqz p2, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_53

    :cond_4e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_53
    move v1, v3

    :goto_54
    const/4 v2, 0x2

    if-ge v1, v2, :cond_ae

    move v2, v3

    :goto_58
    const/4 v4, 0x3

    if-ge v2, v4, :cond_ab

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->getItemFromSp(Landroid/content/Context;II)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v4

    const-string v5, ", : "

    if-eqz v4, :cond_9c

    invoke-direct {p0, v4, p1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->findMatchItem(Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;Ljava/util/ArrayList;)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    move-result-object v4

    if-eqz v4, :cond_8a

    iput v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v4, v3}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->setViewType(I)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildWorkSpaceAppList, add item = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    :cond_8a
    const-string v4, "buildWorkSpaceAppList, remove item = null. x = "

    invoke-static {v4, v2, v5, v1, v0}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->removeSharedPrefsItem(Landroid/content/Context;II)V

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->buildTipIconItem(II)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_9c
    const-string v4, "buildWorkSpaceAppList, add item item = null. x = "

    invoke-static {v4, v2, v5, v1, v0}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->buildTipIconItem(II)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_ae
    return-void
.end method

.method public filterApps(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    const-string p1, "SuperPowerSaveAppsManager"

    if-eqz p2, :cond_9a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_9a

    :cond_c
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mFilterPackages:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getLauncherAppList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/powersave/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/powersave/c;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 p0, 0x0

    :goto_1f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_3c

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_39

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_39
    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_3c
    if-eqz p3, :cond_94

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_45

    goto :goto_94

    :cond_45
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_49
    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_59
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_59

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->className:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget v2, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->userIdentifier:I

    if-ne v1, v2, :cond_59

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_93
    return-object p2

    :cond_94
    :goto_94
    const-string p0, "filterApps filterApps is null, return  all app"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_9a
    :goto_9a
    const-string p0, "filterApps apps is null"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public findMatchItem(Landroid/content/ComponentName;ILjava/util/ArrayList;)Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p3, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne p2, v1, :cond_8

    instance-of p0, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    if-eqz p0, :cond_2f

    check-cast v0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    return-object v0

    :cond_2f
    new-instance p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    return-object p0

    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "findMatchItem error, componentName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SuperPowerSaveAppsManager"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public initWorkSpaceAppList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SuperPowerSaveAppsManager"

    const-string v2, "---initWorkSpaceAppList start."

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x2

    if-ge v3, v4, :cond_26

    move v4, v2

    :goto_12
    const/4 v5, 0x3

    if-ge v4, v5, :cond_23

    iget-object v5, p0, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->getItemFromSp(Landroid/content/Context;II)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_26
    const-string p0, "initWorkSpaceAppList end. size = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method
