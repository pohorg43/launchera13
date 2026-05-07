.class public Lcom/android/launcher/badge/NotificationCenterServiceClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NOTIFICATION_CENTER_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.notificationmanager"

.field private static final NOTIFICATION_CENTER_SERVICE:Ljava/lang/String; = "com.oplus.notificationmanager.NOTIFICATION_CENTER_SERVICE"

.field private static final TAG:Ljava/lang/String; = "NotificationCenterServiceClient"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsServiceBind:Z

.field private volatile mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mIsServiceBind:Z

    new-instance v0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;-><init>(Lcom/android/launcher/badge/NotificationCenterServiceClient;)V

    iput-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/launcher/badge/NotificationCenterServiceClient$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/NotificationCenterServiceClient$2;-><init>(Lcom/android/launcher/badge/NotificationCenterServiceClient;)V

    iput-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->bindNotificationCenter(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Lcom/oplusos/notification/INotificationCenter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/badge/NotificationCenterServiceClient;Lcom/oplusos/notification/INotificationCenter;)Lcom/oplusos/notification/INotificationCenter;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/badge/NotificationCenterServiceClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mIsServiceBind:Z

    return p1
.end method


# virtual methods
.method public bindNotificationCenter(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.notificationmanager.NOTIFICATION_CENTER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oplus.notificationmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_13
    iget-object v1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mIsServiceBind:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p0

    const-string p1, "bindNotificationCenter exception = "

    const-string v0, "NotificationCenterServiceClient"

    invoke-static {p1, p0, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public getBadgeOption(Lcom/android/launcher3/util/PackageUserKey;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    const-string v1, "Badge"

    const-string v2, "NotificationCenterServiceClient"

    if-eqz p0, :cond_62

    :try_start_c
    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result v4

    invoke-interface {p0, v3, v4}, Lcom/oplusos/notification/INotificationCenter;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBadgeOption, notification disabled, packageUserKey = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2d
    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result v3

    invoke-interface {p0, v1, v3}, Lcom/oplusos/notification/INotificationCenter;->getBadgeOption(Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBadgeOption invalid value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", key = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_55} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_55} :catch_58

    goto :goto_76

    :cond_56
    move v0, p0

    goto :goto_76

    :catch_58
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_76

    :catch_5d
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_76

    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBadgeOption, mNotificationCenter null! key = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    return v0
.end method

.method public getSupportNumberBadgePackages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    const-string v1, "NotificationCenterServiceClient"

    if-eqz v0, :cond_12

    :try_start_6
    invoke-interface {v0}, Lcom/oplusos/notification/INotificationCenter;->getSupportNumberBadgePackages()Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const-string v0, "getSupportNumberBadgePackages, e = "

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_1e

    :cond_12
    const-string v0, "Badge"

    const-string v2, "getSupportNumberBadgePackages, mNotificationCenter null!"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->bindNotificationCenter(Landroid/content/Context;)V

    :goto_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFold(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    const-string v1, "NotificationCenterServiceClient"

    if-eqz v0, :cond_12

    :try_start_6
    invoke-interface {v0, p1, p2, p3}, Lcom/oplusos/notification/INotificationCenter;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    const-string p1, "isFold, e = "

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_1e

    :cond_12
    const-string p2, "isFold, mNotificationCenter null! pkg = "

    const-string p3, "Badge"

    invoke-static {p2, p1, p3, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->bindNotificationCenter(Landroid/content/Context;)V

    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationSwitchOpen(Lcom/android/launcher3/util/PackageUserKey;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    if-eqz v1, :cond_18

    :try_start_8
    iget-object p0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result p1

    invoke-interface {v1, p0, p1}, Lcom/oplusos/notification/INotificationCenter;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    goto :goto_26

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26

    :cond_18
    const-string p1, "Badge"

    const-string v1, "NotificationCenterServiceClient"

    const-string v2, "isNotificationSwitchOpen, mNotificationCenter null!"

    invoke-static {p1, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->bindNotificationCenter(Landroid/content/Context;)V

    :goto_26
    return v0
.end method

.method public isServiceConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mNotificationCenter:Lcom/oplusos/notification/INotificationCenter;

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient;->mIsServiceBind:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
