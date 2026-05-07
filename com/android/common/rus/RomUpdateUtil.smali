.class public Lcom/android/common/rus/RomUpdateUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;
    }
.end annotation


# static fields
.field private static final ACTION_INIT_RECENT_LOCK_FINISH:Ljava/lang/String; = "oplus.intent.action.INIT_RECENT_LOCK_FINISH"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXP_LOCK_CONFIG_NAME:Ljava/lang/String; = "lock_whitelist_exp"

.field public static final LOCK_CONFIG_NAME:Ljava/lang/String; = "sys_recent_task_lock_config"

.field private static final RUS_BROADCAST_ACTION:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final RUS_EXTRA_KEY:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final SINSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "RomUpdateUtil"

.field private static final XML_KEY_ATTRIBUTE:Ljava/lang/String; = "att"

.field private static final XML_KEY_CONTENT:Ljava/lang/String; = "xml"

.field private static final XML_KEY_FOBID_LOCK_PKG:Ljava/lang/String; = "fobid_lock_pkg"

.field private static final XML_KEY_LOCK_APP_LIMIT:Ljava/lang/String; = "locked_app_limit_num"

.field private static final XML_KEY_LOCK_PKG:Ljava/lang/String; = "lock_pkg_new"

.field private static final XML_KEY_VERSION:Ljava/lang/String; = "version"

.field private static sInstance:Lcom/android/common/rus/RomUpdateUtil;


# instance fields
.field private final mBr:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/common/rus/RomUpdateUtil;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/common/rus/RomUpdateUtil;->SINSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/common/rus/RomUpdateUtil$1;

    invoke-direct {v0, p0}, Lcom/android/common/rus/RomUpdateUtil$1;-><init>(Lcom/android/common/rus/RomUpdateUtil;)V

    iput-object v0, p0, Lcom/android/common/rus/RomUpdateUtil;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/common/rus/RomUpdateUtil;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/rus/RomUpdateUtil;->updateLockConfIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method private getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string p0, "RomUpdateUtil"

    const-string/jumbo v0, "xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/common/rus/RomUpdateUtil;->CONTENT_URI:Landroid/net/Uri;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filtername=\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_64

    if-eqz p1, :cond_45

    :try_start_2e
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_45

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_5e

    :catch_41
    move-object v8, v7

    move-object v7, p1

    move-object p1, v8

    goto :goto_65

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cursor is null !!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    if-eqz p1, :cond_84

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_63} :catch_41

    goto :goto_84

    :catch_64
    move-object p1, v7

    :goto_65
    if-eqz v7, :cond_6a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We can not get data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from provider"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    :cond_84
    :goto_84
    return-object v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/common/rus/RomUpdateUtil;
    .registers 3

    sget-object v0, Lcom/android/common/rus/RomUpdateUtil;->SINSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/rus/RomUpdateUtil;->sInstance:Lcom/android/common/rus/RomUpdateUtil;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/common/rus/RomUpdateUtil;

    invoke-direct {v1, p0}, Lcom/android/common/rus/RomUpdateUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/common/rus/RomUpdateUtil;->sInstance:Lcom/android/common/rus/RomUpdateUtil;

    :cond_e
    sget-object p0, Lcom/android/common/rus/RomUpdateUtil;->sInstance:Lcom/android/common/rus/RomUpdateUtil;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private parseLockAppConf(Landroid/content/Context;)Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;
    .registers 11

    const-string/jumbo v0, "parseXmlContent() Exception:"

    const-string/jumbo v1, "sys_recent_task_lock_config"

    invoke-direct {p0, p1, v1}, Lcom/android/common/rus/RomUpdateUtil;->getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "parseLockAppConf: parseXmlContent xml:"

    const-string v3, "RomUpdateUtil"

    invoke-static {v2, v1, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_100

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto/16 :goto_100

    :cond_1d
    :try_start_1d
    new-instance v4, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;

    invoke-direct {v4, p0}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;-><init>(Lcom/android/common/rus/RomUpdateUtil;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_35
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_95

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "att"

    invoke-interface {p0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "locked_app_limit_num"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockAppLimit:I

    goto :goto_95

    :cond_55
    const-string v7, "lock_pkg_new"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-virtual {v4, v6}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->addLockPkg(Ljava/lang/String;)V

    goto :goto_95

    :cond_61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120454

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-virtual {v4, v6}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->addOplusLockPkg(Ljava/lang/String;)V

    goto :goto_95

    :cond_7a
    const-string v7, "fobid_lock_pkg"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-virtual {v4, v6}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->addForbidLockPkg(Ljava/lang/String;)V

    goto :goto_95

    :cond_86
    const-string/jumbo v6, "version"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mRemoteVersion:Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_95} :catch_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_95} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_95} :catch_c3
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_95} :catch_af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_95} :catch_9b
    .catchall {:try_start_1d .. :try_end_95} :catchall_99

    :cond_95
    :goto_95
    const/4 v5, 0x1

    if-ne v1, v5, :cond_35

    return-object v4

    :catchall_99
    move-exception p0

    goto :goto_ff

    :catch_9b
    move-exception p0

    :try_start_9c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    :catch_af
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    :catch_c3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    :catch_d7
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    :catch_eb
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fe
    .catchall {:try_start_9c .. :try_end_fe} :catchall_99

    :goto_fe
    return-object v2

    :goto_ff
    throw p0

    :cond_100
    :goto_100
    return-object v2
.end method

.method private registerRomUpdateReceiver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "oplus.intent.action.INIT_RECENT_LOCK_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_11
    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception p0

    const-string/jumbo p1, "registerRomUpdateReceiver: e = "

    const-string v0, "RomUpdateUtil"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method private updateLockConfIfNeeded(Landroid/content/Context;)V
    .registers 6

    invoke-static {p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/common/rus/RomUpdateUtil;->parseLockAppConf(Landroid/content/Context;)Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->canGetDefaultLockByConfig()Z

    move-result p1

    const-string/jumbo v2, "updateLockConfIfNeeded: localConfigVersion:"

    const-string v3, ", remoteVersion:"

    invoke-static {v2, v1, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_1e

    iget-object v3, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mRemoteVersion:Ljava/lang/String;

    goto :goto_20

    :cond_1e
    const-string v3, ""

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; canUseNewWayGetDefaultLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RomUpdateUtil"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_65

    iget-object v2, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mRemoteVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_65

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->getForbidLockPkgList()Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockAppLimit:I

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->setLockAppConfs(Ljava/util/List;I)V

    goto :goto_60

    :cond_4a
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isOplusExpLockPkgSupport:Z

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->getOplusLockPkgList()Ljava/util/List;

    move-result-object p1

    goto :goto_57

    :cond_53
    invoke-virtual {p0}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->getLockPkgList()Ljava/util/List;

    move-result-object p1

    :goto_57
    invoke-virtual {p0}, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->getForbidLockPkgList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockAppLimit:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->setLockAppConfs(Ljava/util/List;Ljava/util/List;I)V

    :goto_60
    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mRemoteVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateConfigVerstion(Ljava/lang/String;)V

    :cond_65
    return-void
.end method


# virtual methods
.method public getDataVersionFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string p0, "getDataVersionFromProvider: configName:"

    const-string v0, "RomUpdateUtil"

    invoke-static {p0, p2, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    const-string/jumbo v1, "version"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/common/rus/RomUpdateUtil;->CONTENT_URI:Landroid/net/Uri;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filtername=\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_47

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_47

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v8, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cursor is null !!!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_60
    if-eqz v8, :cond_84

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_65} :catch_66

    goto :goto_84

    :catch_66
    if-eqz v8, :cond_6b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We can not get data version with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from provider"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-object p0
.end method

.method public getLockAppConfVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "sys_recent_task_lock_config"

    invoke-virtual {p0, p1, v0}, Lcom/android/common/rus/RomUpdateUtil;->getDataVersionFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/rus/RomUpdateUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/common/rus/RomUpdateUtil;->updateLockConfIfNeeded(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/common/rus/RomUpdateUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/common/rus/RomUpdateUtil;->registerRomUpdateReceiver(Landroid/content/Context;)V

    return-void
.end method
