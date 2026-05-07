.class Lcom/android/launcher/badge/BadgeDataProviderCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/badge/BadgeDataProviderCompat;->refreshAllBadgeInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/badge/BadgeDataProviderCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    const-string/jumbo v2, "refreshAllBadgeInfos, size = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v3

    :try_start_1c
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v4, v2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getBadgeNumberFromDataBase(Lcom/android/launcher3/util/PackageUserKey;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    goto :goto_50

    :cond_4c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    :goto_50
    iget-object v1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    goto :goto_24

    :cond_56
    monitor-exit v3

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_1c .. :try_end_5a} :catchall_58

    throw p0
.end method
