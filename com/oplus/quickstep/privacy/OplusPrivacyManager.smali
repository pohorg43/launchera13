.class public Lcom/oplus/quickstep/privacy/OplusPrivacyManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/privacy/OplusPrivacyManager$OplusPrivacyManagerHolder;
    }
.end annotation


# static fields
.field private static final KEY_LIST:Ljava/lang/String; = "appList"

.field private static final KEY_PROTECT:Ljava/lang/String; = "isProtected"

.field private static final KEY_USER_CLOSE:Ljava/lang/String; = "user_close"

.field private static final KEY_USER_OPEN:Ljava/lang/String; = "user_open"

.field private static final METHOD_QUERY_APP:Ljava/lang/String; = "queryProtectedApp"

.field private static final METHOD_QUERY_LIST:Ljava/lang/String; = "queryProtectedAppList"

.field private static final PREFS_NAME:Ljava/lang/String; = "content_protect"

.field private static final PROTECT_APP_URI:Ljava/lang/String; = "com.oplus.securepay.protect"

.field public static final SPLIT_FLAG:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "OplusPrivacyManager"

.field private static final WX_PKG:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mContentProtectClosedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentProtectOpenedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentProtectSupportedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHiddenObserver:Lcom/oplus/app/IOplusAccessControlObserver;

.field private mHiddenPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenPackagesMulti:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentProtectComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivacyObserver:Lcom/oplus/app/IOplusAccessControlObserver;

.field private mPrivacyPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacyPackagesMulti:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchHidden:Z

.field private mSwitchPrivacy:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackagesMulti:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackagesMulti:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPaymentProtectComponents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectClosedPackages:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectOpenedPackages:Ljava/util/Set;

    new-instance v0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;-><init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;)V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    new-instance v0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$2;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$2;-><init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;)V

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->lambda$printProtectedAppSupportedList$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadHiddenSwitchAndData(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateProtectedAppList(Ljava/lang/String;)V

    return-void
.end method

.method private acquireDefaultProtectedAppList()V
    .registers 5

    const-string v0, "acquireDefaultProtectedAppList: exp = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusPrivacyManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_21
    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_2e
    if-eqz v0, :cond_57

    array-length v1, v0

    if-gtz v1, :cond_34

    goto :goto_57

    :cond_34
    iget-object v1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireDefaultProtectedAppList: protect app count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    :goto_57
    return-void
.end method

.method private acquireProtectedAppList()V
    .registers 7

    const-string v0, "QuickStep"

    const-string v1, "OplusPrivacyManager"

    const-string v2, "acquireProtectedAppList()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v2, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.oplus.securepay.protect"

    const-string v4, "queryProtectedAppList"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_22

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->acquireDefaultProtectedAppList()V

    return-void

    :cond_22
    const-string v3, "appList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_37

    :cond_31
    iput-object v2, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->printProtectedAppSupportedList()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_36} :catch_38

    goto :goto_41

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception v2

    const-string v3, "acquireProtectedAppList: get provider exception"

    invoke-static {v0, v1, v3, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->acquireDefaultProtectedAppList()V

    :goto_41
    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->lambda$updateProtectedAppList$0(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$OplusPrivacyManagerHolder;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    return-object v0
.end method

.method public static getKeyByUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPackageBroadcast()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusPrivacyManager"

    const-string v2, "initPackageBroadcast()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;-><init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static synthetic lambda$printProtectedAppSupportedList$1(Ljava/lang/String;)V
    .registers 4

    const-string v0, "printProtectedAppSupportedList: pkg = "

    const-string v1, "QuickStep"

    const-string v2, "OplusPrivacyManager"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateProtectedAppList$0(Ljava/lang/String;Z)V
    .registers 3

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->updateProtectedSupportedData(Ljava/lang/String;Z)V

    return-void
.end method

.method private loadHiddenSwitchAndData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mSwitchHidden:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadHiddenData()V

    :cond_7
    return-void
.end method

.method private loadPrivacyProtectComponentList()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-gtz v1, :cond_13

    goto :goto_1c

    :cond_13
    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPaymentProtectComponents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method private loadPrivacyProtectList()V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getContentProtectPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "user_open"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectOpenedPackages:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "user_close"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectClosedPackages:Ljava/util/Set;

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->acquireProtectedAppList()V

    return-void
.end method

.method private updateProtectedAppList(Ljava/lang/String;)V
    .registers 8

    const-string v0, "updateProtectedAppList: pkg = "

    const-string v1, "QuickStep"

    const-string v2, "OplusPrivacyManager"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "com.oplus.securepay.protect"

    const-string v4, "queryProtectedApp"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, p1, v5}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v3, "isProtected"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/z1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/launcher3/z1;-><init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception p0

    const-string p1, "updateProtectedAppList: get provider exception"

    invoke-static {v1, v2, p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public getContentProtectPrefs()Landroid/content/SharedPreferences;
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    const-string v0, "content_protect"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public isAppProtected(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isContentProtectClosed(Ljava/lang/String;)Z
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectClosedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContentProtectClosed: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isClosed = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusPrivacyManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isContentProtectOpened(Ljava/lang/String;)Z
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectOpenedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContentProtectOpened: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isOpened = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusPrivacyManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isHiddenPkg(Ljava/lang/String;I)Z
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mSwitchHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget v0, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    if-ne p2, v0, :cond_11

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_11
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackagesMulti:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    return v1
.end method

.method public isPaymentProtectComponent(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_d

    return v1

    :cond_d
    const-string v0, "isPaymentProtectComponent: pkg = "

    const-string v1, ", topComponent = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusPrivacyManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPaymentProtectComponents:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPrivacy(Ljava/lang/String;I)Z
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mSwitchPrivacy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget v0, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    if-ne p2, v0, :cond_11

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_11
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackagesMulti:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    return v1
.end method

.method public loadHiddenData()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v2

    sget v3, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    const-string v4, "type_hide"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_36
    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackages:Ljava/util/List;

    const-string v0, "loadPrivacyData: mHiddenPackages"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackages:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "OplusPrivacyManager"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    const/16 v5, 0x3e7

    invoke-virtual {v0, v4, v5}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_78
    iput-object v1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackagesMulti:Ljava/util/List;

    const-string v0, "loadPrivacyData: mHiddenPackagesMulti"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenPackagesMulti:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadPrivacyData()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v2

    sget v3, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    const-string v4, "type_encrypt"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_36
    iput-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackages:Ljava/util/List;

    const-string v0, "loadPrivacyData: mPrivacyPackages"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackages:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "OplusPrivacyManager"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    const/16 v5, 0x3e7

    invoke-virtual {v0, v4, v5}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_78
    iput-object v1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackagesMulti:Ljava/util/List;

    const-string v0, "loadPrivacyData: mPrivacyPackagesMulti"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyPackagesMulti:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadPrivacySwitchAndData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mSwitchPrivacy:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadPrivacyData()V

    :cond_7
    return-void
.end method

.method public printProtectedAppSupportedList()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    sget-object v0, Lcom/android/launcher3/taskbar/u;->j:Lcom/android/launcher3/taskbar/u;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public saveContentProtectData()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusPrivacyManager"

    const-string v2, "saveContentProtectData()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getContentProtectPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectOpenedPackages:Ljava/util/Set;

    const-string v2, "user_open"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectClosedPackages:Ljava/util/Set;

    const-string v1, "user_close"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->initPackageBroadcast()V

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadPrivacyProtectComponentList()V

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadPrivacyProtectList()V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    sget v0, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    const-string v1, "type_encrypt"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlEnabled(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadPrivacySwitchAndData(Z)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    sget v0, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    const-string v2, "type_hide"

    invoke-virtual {p1, v2, v0}, Lcom/oplus/app/OPlusAccessControlManager;->getAccessControlEnabled(Ljava/lang/String;I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadHiddenSwitchAndData(Z)V

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mPrivacyObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {p1, v1, v0}, Lcom/oplus/app/OPlusAccessControlManager;->registerAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mHiddenObserver:Lcom/oplus/app/IOplusAccessControlObserver;

    invoke-virtual {p1, v2, p0}, Lcom/oplus/app/OPlusAccessControlManager;->registerAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z

    return-void
.end method

.method public updateClosedContentProtectData(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClosedContentProtectData: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusPrivacyManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_28

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectClosedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_28
    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectClosedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-void
.end method

.method public updateOpenedContentProtectData(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOpenedContentProtectData: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusPrivacyManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_28

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectOpenedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_28
    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectOpenedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-void
.end method

.method public updateProtectedSupportedData(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProtectedSupportedData: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusPrivacyManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p2, :cond_30

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_30
    if-nez p2, :cond_39

    if-nez v0, :cond_39

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->mContentProtectSupportedPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    return-void
.end method
