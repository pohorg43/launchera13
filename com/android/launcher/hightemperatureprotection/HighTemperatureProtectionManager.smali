.class public Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;,
        Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;
    }
.end annotation


# static fields
.field private static final ACTION_HIGH_TEMP_STATE_CHANGE:Ljava/lang/String; = "oplus.intent.action.HIGH_TEMP_WHITE_LIST"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HIGH_TEMP_WHITE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_INTENT_GET_WHITE_LIST:Ljava/lang/String; = "filterapplist"

.field public static final EXTRA_LIMIT_USE_LIST:Ljava/lang/String; = "limit_use_list"

.field private static final MAX_ALPHA:I = 0xff

.field private static final PREF_APP_SPLIT_CHAR:Ljava/lang/String; = "/"

.field private static final PREF_LOCAL_HIGHT_TEMP_APPS:Ljava/lang/String; = "pref_local_white_list_apps_under_hightemp_state"

.field public static final SETTING_PROVIDER_KEY_HIGH_TEMPE_SAFETY_STATE:Ljava/lang/String; = "oplus_settings_hightemp_safety_state"

.field private static final TAG:Ljava/lang/String; = "HighTemperatureProtectionManager"

.field public static final sColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private static volatile sInstance:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

.field public static final sShortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private volatile mIsHighTempProtectedEnable:Z

.field private mTempProtectedStateObserver:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;

.field private final mTempProtectedStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/high16 v2, -0x4d000000

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sShortcutList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$1;

    invoke-direct {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->DEFAULT_HIGH_TEMP_WHITE_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$2;-><init>(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;)V

    iput-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mTempProtectedStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;-><init>(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;)V

    iput-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mTempProtectedStateObserver:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->lambda$updateWhiteList$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mIsHighTempProtectedEnable:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mIsHighTempProtectedEnable:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->refreshUIWhenHighTempStateChanged()V

    return-void
.end method

.method public static getDefaultDialerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static getDefaultMmsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sInstance:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sInstance:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    invoke-direct {v1, p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sInstance:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

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
    sget-object p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sInstance:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    return-object p0
.end method

.method private getWhiteListFromLocal(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "pref_local_white_list_apps_under_hightemp_state"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HighTemperatureProtectionManager"

    if-nez v1, :cond_3f

    :try_start_15
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "whiteList prefs: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_37} :catch_38

    goto :goto_44

    :catch_38
    move-exception p1

    const-string v1, "getLimitAppListFromLocal,  e = "

    invoke-static {v1, p1, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_44

    :cond_3f
    const-string p1, "getWhiteListFromLocal: list is null !"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const/4 p1, 0x0

    :goto_45
    sget-object v1, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->DEFAULT_HIGH_TEMP_WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_45

    :cond_5f
    iget-object p1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getDefaultDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dialer: "

    invoke-static {v1, p1, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_75

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getDefaultMmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "mms: "

    invoke-static {p1, p0, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_8c

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8c

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "whiteList: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$updateWhiteList$0(Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    const-string v1, "HighTemperatureProtectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWhiteList,new size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_15

    const-string v3, " null "

    goto :goto_1d

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", old size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->saveWhiteListToLocal(Ljava/util/List;)V

    if-eqz p1, :cond_44

    iget-object v1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method private refreshUIWhenHighTempStateChanged()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const-string v0, "HighTemperatureProtectionManager"

    if-eqz p0, :cond_1d

    const-string/jumbo v1, "refreshUIWhenHighTempStateChanged, run callback"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;->onWorkspaceHighTemperatureProtectionStateChange()V

    invoke-interface {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;->onAllAppHighTemperatureProtectionStateChange()V

    goto :goto_23

    :cond_1d
    const-string/jumbo p0, "refreshUIWhenHighTempStateChanged, call back is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method private saveWhiteListToLocal(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_20
    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "pref_local_white_list_apps_under_hightemp_state"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_2d
    const-string p0, "HighTemperatureProtectionManager"

    const-string/jumbo p1, "saveWhiteListToLocal: list is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public init()V
    .registers 7

    const-string v0, "HighTemperatureProtectionManager"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->registerTempProtectedStateObserver()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "oplus.intent.action.HIGH_TEMP_WHITE_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mTempProtectedStateReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    move-exception v1

    const-string/jumbo v2, "register observer fail! e = "

    invoke-static {v2, v1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_20
    iget-object v1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oplus_settings_hightemp_safety_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v3, 0x1

    :cond_31
    iput-boolean v3, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mIsHighTempProtectedEnable:Z

    const-string v1, "init flag is : "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mIsHighTempProtectedEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->initWhiteListFromLoacal()V

    return-void
.end method

.method public initLocalWhiteListInWorkHandler()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initWhiteListFromLoacal()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getWhiteListFromLocal(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "HighTemperatureProtectionManager"

    const-string v2, "initWhiteList: , size: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public isAppInWhiteList(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_b
    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mWhiteListUnderHigtTemperatureState:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isHighTempProtectedEnable()Z
    .registers 4

    const-string v0, "isHighTempProtectedEnable:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mIsHighTempProtectedEnable:Z

    const-string v2, "HighTemperatureProtectionManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mIsHighTempProtectedEnable:Z

    return p0
.end method

.method public isInterceptItemClickFromHighTempreatureProtection(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const-string v2, "HighTemperatureProtectionManager"

    if-nez v0, :cond_8f

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto/16 :goto_8f

    :cond_1e
    const/4 p1, 0x0

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2b

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_4e

    :cond_2b
    instance-of v0, p2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_37

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_4e

    :cond_37
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_43

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_4e

    :cond_43
    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_4e

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    :cond_4e
    :goto_4e
    if-nez p1, :cond_51

    return v1

    :cond_51
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_58

    return v1

    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0, p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isAppInWhiteList(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8e

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    const p1, 0x7f12052d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "It\'s too hot to start shortcut :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8e
    return v1

    :cond_8f
    :goto_8f
    const-string p0, "in togglebar state return true"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public registerTempProtectedStateObserver()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oplus_settings_hightemp_safety_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mTempProtectedStateObserver:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setCallbacks(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;)V
    .registers 3

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setCallBacks: callbacks: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HighTemperatureProtectionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterTempProtectedStateObserver()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->mTempProtectedStateObserver:Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$TempProtectedStateObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateTempProtectedDrawableState(ZLandroid/graphics/drawable/Drawable;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    instance-of p0, p2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    if-eqz p2, :cond_43

    const/16 p0, 0xff

    if-eqz p1, :cond_13

    check-cast p2, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    sget-object p1, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-interface {p2, p0, p1}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_43

    :cond_13
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_25

    check-cast p2, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1}, Lcom/android/common/util/IconUtils;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_43

    :cond_25
    check-cast p2, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    invoke-interface {p2, p0, v0}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_43

    :cond_2b
    instance-of p0, p2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p0, :cond_43

    if-eqz p1, :cond_3a

    move-object p0, p2

    check-cast p0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    sget-object p1, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->sColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_40

    :cond_3a
    move-object p0, p2

    check-cast p0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_40
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_43
    :goto_43
    return-void
.end method

.method public updateWhiteList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
