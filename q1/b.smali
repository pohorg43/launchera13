.class public final Lq1/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lq1/b;

.field public static b:Landroid/content/Context; = null

.field public static c:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener; = null

.field public static volatile d:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/b;

    invoke-direct {v0}, Lq1/b;-><init>()V

    sput-object v0, Lq1/b;->a:Lq1/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    sget-object p0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {p0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launcher_browser_news_config"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launcher_browser_news_open"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :try_start_4c
    sget-object v1, Lq1/b;->a:Lq1/b;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    monitor-enter v1
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_99

    :try_start_57
    sput v0, Lq1/b;->d:I
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_96

    :try_start_59
    monitor-exit v1

    const-string v0, "BrowserNewsRusHelper"

    const-string/jumbo v1, "updateRusConfig mBrowserNewsRusOpenResult:"

    sget v2, Lq1/b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lq1/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_72

    goto :goto_9e

    :cond_72
    invoke-static {v0}, Lo1/e;->f(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_7f

    move-object v0, v1

    goto :goto_83

    :cond_7f
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    :goto_83
    instance-of v2, v0, Lo1/d;

    if-eqz v2, :cond_8a

    check-cast v0, Lo1/d;

    goto :goto_8b

    :cond_8a
    move-object v0, v1

    :goto_8b
    if-nez v0, :cond_8e

    goto :goto_9e

    :cond_8e
    const-string v1, "browserNewsByRus"

    invoke-virtual {v0, v1}, Lo1/d;->a(Ljava/lang/String;)V

    sget-object v1, Ly2/p;->a:Ly2/p;

    goto :goto_9e

    :catchall_96
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_99
    .catchall {:try_start_59 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_9e
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a5

    goto :goto_34

    :cond_a5
    const-string v1, "BrowserNewsRusHelper"

    const-string/jumbo v2, "updateRusConfig asyncEnable e:"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_b2
    return-void
.end method
