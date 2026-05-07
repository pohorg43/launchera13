.class public Lcom/android/launcher/folder/recommend/SwitchManageHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;
    }
.end annotation


# static fields
.field public static final BASE_ENABLE:Z = true

.field public static final RECOMMEND_SWITCH_PREF_KEY:Ljava/lang/String; = "recommend_switch"

.field private static final RECOMMEND_SWITCH_SUPPORT_KEY:Ljava/lang/String; = "recommend_support"

.field private static final TAG:Ljava/lang/String; = "SwitchManageHelper"

.field private static volatile sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;


# instance fields
.field private mAppStorePreEnable:Z

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mShouldRecommend:Z

.field private final mSwitchChangeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchChangeCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    const-string/jumbo v0, "recommend_switch"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->checkAppStorePreEnable()V

    iget-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    if-eqz p1, :cond_31

    iget-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    iput-boolean v1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mShouldRecommend:Z

    const-string p1, "SwitchManageHelper: mSwitchEnable = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAppStorePreEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    const-string v0, "SwitchManageHelper"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private checkAppStorePreEnable()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string/jumbo v2, "recommend_support"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;
    .registers 3

    sget-object v0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

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
    sget-object p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    return-object p0
.end method

.method private handleSwitchChange()V
    .registers 4

    const-string v0, "SwitchManageHelper"

    const-string v1, "handleSwitchChange: mSwitchEnable = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAppStorePreEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    invoke-static {v1, v2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-boolean v1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mShouldRecommend:Z

    if-eq v1, v0, :cond_28

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mShouldRecommend:Z

    :cond_28
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2b
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchChangeCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;

    invoke-interface {v2, v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;->switchChanged(Z)V

    goto :goto_31

    :cond_41
    monitor-exit v1

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static isInstance()Z
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static shutdown()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->sInstance:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    return-void
.end method


# virtual methods
.method public addSwitchChangeCallback(Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchChangeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public clearCallBacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchChangeCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_19

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->clearCallBack()V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchChangeCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->destroy()V

    :cond_18
    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->shutdown()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public hasSwitchChangeCallback(Lcom/android/launcher/folder/recommend/SwitchManageHelper$SwitchChangeCallback;)Z
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchChangeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isAppStorePreEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    return p0
.end method

.method public isShouldRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mShouldRecommend:Z

    return p0
.end method

.method public isSwitchEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    return p0
.end method

.method public restoreRecommendValue(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->checkAppStorePreEnable()V

    iget-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mShouldRecommend:Z

    const-string/jumbo p1, "resume: mSwitchEnable = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAppStorePreEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    const-string v0, "SwitchManageHelper"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public setAppStorePreEnable(Z)V
    .registers 6

    const-string/jumbo v0, "setAppStorePreEnable enable = "

    const-string v1, ", Caller:"

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchManageHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_25

    const-string v1, "1"

    goto :goto_27

    :cond_25
    const-string v1, "0"

    :goto_27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string/jumbo v3, "recommend_support"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mAppStorePreEnable:Z

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->handleSwitchChange()V

    return-void
.end method

.method public setSwitchByUser(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mSwitchEnable:Z

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v0

    const-string/jumbo v1, "recommend_switch"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->handleSwitchChange()V

    return-void
.end method
