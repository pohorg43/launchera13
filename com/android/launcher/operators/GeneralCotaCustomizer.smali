.class public Lcom/android/launcher/operators/GeneralCotaCustomizer;
.super Lcom/android/launcher/operators/GeneralCustomizer;
.source ""


# static fields
.field private static final COTA_RESET_LAYOUT_DELAY:J = 0x3e8L

.field private static final HAVE_RESET_LAUNCHER_KEY:Ljava/lang/String; = "have_reset_launcher"

.field public static final INSTANCE:Lcom/android/launcher/operators/Customizer;

.field private static final TAG:Ljava/lang/String; = "GeneralCotaCustomizer"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/operators/GeneralCotaCustomizer;

    invoke-direct {v0}, Lcom/android/launcher/operators/GeneralCotaCustomizer;-><init>()V

    sput-object v0, Lcom/android/launcher/operators/GeneralCotaCustomizer;->INSTANCE:Lcom/android/launcher/operators/Customizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/operators/GeneralCustomizer;-><init>()V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->lambda$resetDatabaseAndReload$0(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private static hasResetLauncher(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "have_reset_launcher"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "hasResetLauncher: "

    const-string v1, "GeneralCotaCustomizer"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public static isLauncherLayoutAdded(Landroid/content/Context;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_40

    :cond_a
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->inferLauncherLayoutPackage(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getLauncherLayoutPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_40
    :goto_40
    return v0
.end method

.method private static synthetic lambda$resetDatabaseAndReload$0(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->inferLauncherLayoutPackage(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->getLauncherLayoutPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "GeneralCotaCustomizer"

    const-string/jumbo p1, "resetDatabaseAndReload layout plugin not ready"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "create_empty_db"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->setHasResetLauncherFlag(Landroid/content/Context;)V

    return-void
.end method

.method private static setHasResetLauncherFlag(Landroid/content/Context;)V
    .registers 3

    const-string v0, "GeneralCotaCustomizer"

    const-string/jumbo v1, "setHasResetLauncherFlag."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "have_reset_launcher"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public resetDatabaseAndReload(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->hasResetLauncher(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "GeneralCotaCustomizer"

    const-string/jumbo v0, "resetDatabaseAndReload"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/operators/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher/operators/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 p0, 0x3e8

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
