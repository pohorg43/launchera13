.class public Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_SYNERGY_OPEN_MIRAGE:Ljava/lang/String; = "com.oplus.synergy.action.synergy_open_mirage"

.field private static final AUTHORITY:Ljava/lang/String; = "com.oplus.linker.synergy.provider.pcconnect"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final ENTER_QUERY_TIP_TIME:J = 0x96L

.field private static final MIRAGE_TABLE_NAME:Ljava/lang/String; = "mirage"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGE_NAME_OP_SYNERGY:Ljava/lang/String; = "com.oplus.linker"

.field private static final TAG:Ljava/lang/String; = "NewWindowUtil"

.field private static final URI_MIRGAE_APP:Landroid/net/Uri;

.field private static sIsPCDeviceTouch:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.oplus.linker.synergy.provider.pcconnect"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "mirage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->URI_MIRGAE_APP:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->sIsPCDeviceTouch:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->lambda$isMirageApp$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isMirageApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "NewWindowUtil"

    const-string v1, "isMirageApp "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_b

    return v1

    :cond_b
    sget-object v2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/android/common/util/m;

    invoke-direct {v3, p0, p1}, Lcom/android/common/util/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v2, 0x96

    :try_start_18
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    return p0

    :catch_25
    const-string p0, "isMirageApp Future Exception !!!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isPCDeviceTouch()Z
    .registers 3

    const-string v0, "isPCDeviceTouch  "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->sIsPCDeviceTouch:Z

    const-string v2, "NewWindowUtil"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->sIsPCDeviceTouch:Z

    return v0
.end method

.method private static synthetic lambda$isMirageApp$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "NewWindowUtil"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->URI_MIRGAE_APP:Landroid/net/Uri;

    const-string p0, "package_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_3e
    .catchall {:try_start_4 .. :try_end_1d} :catchall_3c

    if-lez p0, :cond_36

    move p0, v1

    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_34
    .catchall {:try_start_20 .. :try_end_2e} :catchall_3c

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    goto :goto_20

    :cond_32
    move v1, p0

    goto :goto_36

    :catch_34
    move v1, p0

    goto :goto_3e

    :cond_36
    :goto_36
    if-eqz v2, :cond_46

    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_46

    :catchall_3c
    move-exception p0

    goto :goto_5f

    :catch_3e
    :goto_3e
    :try_start_3e
    const-string p0, "isMirageApp cursor Exception !!!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3c

    if-eqz v2, :cond_46

    goto :goto_38

    :cond_46
    :goto_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isMirageApp "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_5f
    if-eqz v2, :cond_64

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_64
    throw p0
.end method

.method public static openNewWindow(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "NewWindowUtil"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oplus.linker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oplus.synergy.action.synergy_open_mirage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_16
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    const-string p0, "StartService error!!!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    const-string p0, "openNewWindow  startService"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPCDeviceTouch(Z)V
    .registers 3

    const-string v0, "isPCDeviceTouch  "

    const-string v1, "NewWindowUtil"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sput-boolean p0, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->sIsPCDeviceTouch:Z

    return-void
.end method
