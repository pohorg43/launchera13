.class public Le2/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/b$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/oplus/app/OplusAppSwitchManager;

.field public final b:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

.field public final c:Lcom/oplus/app/OplusAppSwitchConfig;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 30

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.android.mms"

    const-string v4, "com.ss.android.ugc.aweme"

    const-string v5, "com.kuaishou.nebula"

    const-string v6, "com.smile.gifmaker"

    const-string v7, "com.coloros.filemanager"

    const-string v8, "com.heytap.browser"

    const-string v9, "com.ss.android.ugc.aweme.lite"

    const-string v10, "com.dragon.read"

    const-string v11, "com.tencent.mtt"

    const-string v12, "com.chaoxing.mobile"

    const-string v13, "com.tencent.qqmusic"

    const-string v14, "com.tencent.tmgp.pubgmhd"

    const-string v15, "com.alibaba.android.rimet"

    const-string v16, "com.sina.weibo"

    const-string v17, "com.coloros.note"

    const-string v18, "com.xuexiaoyi.xxy"

    const-string v19, "com.xingin.xhs"

    const-string v20, "com.tencent.qqlive"

    const-string v21, "com.taobao.taobao"

    const-string v22, "com.ss.android.article.news"

    const-string v23, "com.baidu.searchbox"

    const-string v24, "com.ss.android.ugc.live"

    const-string v25, "com.qiyi.video"

    const-string v26, "com.coloros.calculator"

    const-string v27, "com.tencent.news"

    const-string v28, "com.ss.android.article.lite"

    const-string v29, "com.xunmeng.pinduoduo"

    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Le2/b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Le2/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object p1

    iput-object p1, p0, Le2/b;->a:Lcom/oplus/app/OplusAppSwitchManager;

    new-instance p1, Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-direct {p1}, Lcom/oplus/app/OplusAppSwitchConfig;-><init>()V

    iput-object p1, p0, Le2/b;->c:Lcom/oplus/app/OplusAppSwitchConfig;

    sget-object v0, Le2/b;->e:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    new-instance p1, Le2/a;

    invoke-direct {p1, p0}, Le2/a;-><init>(Le2/b;)V

    iput-object p1, p0, Le2/b;->b:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Le2/b;->a:Lcom/oplus/app/OplusAppSwitchManager;

    iget-object v1, p0, Le2/b;->b:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    iget-object v2, p0, Le2/b;->c:Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/app/OplusAppSwitchManager;->registerAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "OplusAppSwitchManagerWrapper"

    const-string v1, "registerAppSwitchObserver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/wm/shell/ShellBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/android/wm/shell/ShellMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :cond_1e
    if-eqz v0, :cond_2a

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Le2/b;Landroid/content/Context;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
