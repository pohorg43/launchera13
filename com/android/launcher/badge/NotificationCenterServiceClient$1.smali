.class Lcom/android/launcher/badge/NotificationCenterServiceClient$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/badge/NotificationCenterServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/launcher/badge/NotificationCenterServiceClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-static {p2}, Lcom/oplusos/notification/INotificationCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplusos/notification/INotificationCenter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$002(Lcom/android/launcher/badge/NotificationCenterServiceClient;Lcom/oplusos/notification/INotificationCenter;)Lcom/oplusos/notification/INotificationCenter;

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-static {v0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$000(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Lcom/oplusos/notification/INotificationCenter;

    move-result-object v0

    const-string v1, "NotificationCenterServiceClient"

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-virtual {v0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->getSupportNumberBadgePackages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-static {v2}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$100(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/dot/DotUtils;->setBadgeSupportPackageList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_40

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBadgeSupportPackageList -- badgeNumberSupportList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-static {v0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$100(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected, service = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", name = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", center = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-static {p0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$000(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Lcom/oplusos/notification/INotificationCenter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Badge"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$002(Lcom/android/launcher/badge/NotificationCenterServiceClient;Lcom/oplusos/notification/INotificationCenter;)Lcom/oplusos/notification/INotificationCenter;

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$202(Lcom/android/launcher/badge/NotificationCenterServiceClient;Z)Z

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$1;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-static {p0}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->access$100(Lcom/android/launcher/badge/NotificationCenterServiceClient;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServiceDisconnected, name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Badge"

    const-string v0, "NotificationCenterServiceClient"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
