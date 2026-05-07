.class Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->onNotificationFoldChanged(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

.field public final synthetic val$pkgName:Ljava/lang/String;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iput-object p2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompatVP"

    const-string/jumbo v2, "notificationFoldChanged, pkg = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v1

    if-nez v1, :cond_2d

    return-void

    :cond_2d
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_1ad

    array-length v2, v1

    if-gtz v2, :cond_38

    goto/16 :goto_1ad

    :cond_38
    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {v2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->access$100(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)Lcom/android/launcher/badge/NotificationCenterServiceClient;

    move-result-object v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {v2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->access$100(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)Lcom/android/launcher/badge/NotificationCenterServiceClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iget-object v3, v3, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher/badge/NotificationCenterServiceClient;->bindNotificationCenter(Landroid/content/Context;)V

    :cond_4d
    sget-object v2, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_50
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_54
    if-ge v5, v3, :cond_139

    aget-object v7, v1, v5

    iget-object v8, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_135

    iget v8, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$uid:I

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v9

    if-ne v8, v9, :cond_135

    invoke-static {v7}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    move-result-object v6

    iget-object v8, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {v8, v7}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->access$200(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_134

    iget-object v9, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iget-object v10, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$pkgName:Ljava/lang/String;

    iget v11, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$uid:I

    invoke-virtual {v9, v10, v11, v8}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    sget-object v9, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v11, "Badge"

    const-string v12, "BadgeDataProviderCompatVP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onNotificationFoldChanged, badgeInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", isFold = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_ed

    const-string v10, "Badge"

    const-string v11, "BadgeDataProviderCompatVP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "notificationFoldChanged, can not find badge info in list! key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", sbn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/launcher3/dot/OplusDotInfo;

    iget-object v11, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {v11, v6}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->access$300(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;)I

    move-result v11

    invoke-direct {v10, v11, v4}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    invoke-static {v7, v8}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    invoke-virtual {v9, v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result v7

    if-eqz v7, :cond_134

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_134

    :cond_ed
    invoke-virtual {v10}, Lcom/android/launcher3/dot/OplusDotInfo;->isAllNotificationFold()Z

    move-result v9

    invoke-static {v7, v8}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    invoke-virtual {v10}, Lcom/android/launcher3/dot/OplusDotInfo;->isAllNotificationFold()Z

    move-result v7

    sget-boolean v8, Lcom/android/launcher/badge/BadgeDataProviderCompat;->DEBUG_BADGE:Z

    if-eqz v8, :cond_129

    const-string v8, "Badge"

    const-string v11, "BadgeDataProviderCompatVP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onNotificationFoldChanged, preIsFold = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", newIsFold = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", updated badge = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v11, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_129
    if-eq v9, v7, :cond_134

    invoke-virtual {v10}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result v7

    if-eqz v7, :cond_134

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_134
    :goto_134
    const/4 v6, 0x1

    :cond_135
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_54

    :cond_139
    if-nez v6, :cond_15e

    const-string v1, "BadgeDataProviderCompatVP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notificationFoldChanged, can not find the notification! pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->val$uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15e
    const-string v1, "Badge"

    const-string v3, "BadgeDataProviderCompatVP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notificationFoldChanged, update size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a8

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_189
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    sget-object v3, Lcom/android/launcher3/card/LauncherCardBadgeManager;->INSTANCE:Lcom/android/launcher3/card/LauncherCardBadgeManager;

    sget-object v4, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/card/LauncherCardBadgeManager;->notifyBadgeChange(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    iget-object v3, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-virtual {v3, v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    goto :goto_189

    :cond_1a8
    monitor-exit v2

    return-void

    :catchall_1aa
    move-exception p0

    monitor-exit v2
    :try_end_1ac
    .catchall {:try_start_50 .. :try_end_1ac} :catchall_1aa

    throw p0

    :cond_1ad
    :goto_1ad
    return-void
.end method
