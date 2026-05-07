.class Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dot/SmallAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmallAppWhiteListObserver"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher3/dot/SmallAppUtils;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dot/SmallAppUtils;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->this$0:Lcom/android/launcher3/dot/SmallAppUtils;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "SmallAppWhiteListObserver"

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->updateAppWhiteList()V

    return-void
.end method

.method private updateAppWhiteList()V
    .registers 11

    const-string v0, "SmallAppWhiteListObserver"

    const-string/jumbo v1, "onChange -start: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->this$0:Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-static {v2}, Lcom/android/launcher3/dot/SmallAppUtils;->access$000(Lcom/android/launcher3/dot/SmallAppUtils;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_1f
    iget-object v2, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->this$0:Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-static {v2}, Lcom/android/launcher3/dot/SmallAppUtils;->access$200(Lcom/android/launcher3/dot/SmallAppUtils;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/dot/SmallAppUtils;->access$100()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_8d
    .catchall {:try_start_1f .. :try_end_31} :catchall_89

    if-eqz v2, :cond_78

    :try_start_33
    iget-object v3, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->this$0:Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-static {v3}, Lcom/android/launcher3/dot/SmallAppUtils;->access$200(Lcom/android/launcher3/dot/SmallAppUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/dot/SmallAppUtils;->access$100()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7f

    :cond_51
    invoke-static {v1}, Lcom/android/launcher3/dot/SmallApp;->createByCursor(Landroid/database/Cursor;)Lcom/android/launcher3/dot/SmallApp;

    move-result-object v3

    const-string v4, "SmallAppWhiteListObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSmallAppList-smallApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_7f

    :cond_78
    const-string v3, "SmallAppWhiteListObserver"

    const-string v4, "fail to get content provider"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_7f} :catch_87
    .catchall {:try_start_33 .. :try_end_7f} :catchall_107

    :cond_7f
    :goto_7f
    if-eqz v1, :cond_84

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_84
    if-eqz v2, :cond_b5

    goto :goto_b2

    :catch_87
    move-exception v3

    goto :goto_90

    :catchall_89
    move-exception p0

    move-object v2, v1

    goto/16 :goto_108

    :catch_8d
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_90
    :try_start_90
    const-string v4, "SmallAppWhiteListObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSmallAppList-e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_90 .. :try_end_ab} :catchall_107

    if-eqz v1, :cond_b0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b0
    if-eqz v2, :cond_b5

    :goto_b2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_b5
    const-string v1, "SmallAppWhiteListObserver"

    const-string/jumbo v2, "updateSmallAppList smallAppList size is :"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_db

    const-string p0, "SmallAppWhiteListObserver"

    const-string/jumbo v0, "onChange: smallAppList isEmpty "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_103

    :cond_db
    invoke-static {}, Lcom/android/launcher3/dot/SmallAppUtils;->access$300()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_e0
    iget-object v1, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->this$0:Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-static {v1, v0}, Lcom/android/launcher3/dot/SmallAppUtils;->access$002(Lcom/android/launcher3/dot/SmallAppUtils;Ljava/util/List;)Ljava/util/List;

    monitor-exit v3
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_104

    const-string v0, "SmallAppWhiteListObserver"

    const-string/jumbo v1, "onChange -end mSmallAppWhiteList size is : "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->this$0:Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-static {p0}, Lcom/android/launcher3/dot/SmallAppUtils;->access$000(Lcom/android/launcher3/dot/SmallAppUtils;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_103
    return-void

    :catchall_104
    move-exception p0

    :try_start_105
    monitor-exit v3
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw p0

    :catchall_107
    move-exception p0

    :goto_108
    if-eqz v1, :cond_10d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10d
    if-eqz v2, :cond_112

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_112
    throw p0
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/dot/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dot/a;-><init>(Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
