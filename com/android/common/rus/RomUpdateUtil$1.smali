.class Lcom/android/common/rus/RomUpdateUtil$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/rus/RomUpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/common/rus/RomUpdateUtil;


# direct methods
.method public constructor <init>(Lcom/android/common/rus/RomUpdateUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil$1;->this$0:Lcom/android/common/rus/RomUpdateUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "RomUpdateUtil"

    if-nez p2, :cond_b

    const-string/jumbo p0, "onReceive, intent is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oplus.intent.action.INIT_RECENT_LOCK_FINISH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->canGetDefaultLockByConfig()Z

    move-result p1

    const-string/jumbo p2, "onReceive, canUseNewWayGetDefaultLock: "

    invoke-static {p2, p1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateDefaultLockByGetFromConfig()V

    goto :goto_2f

    :cond_2c
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->switchRUSToConfig()V

    :goto_2f
    return-void

    :cond_30
    const-string v1, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: registerRomUpdateReceiver() changeTableNameList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4e

    return-void

    :cond_4e
    const-string/jumbo v0, "sys_recent_task_lock_config"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "lock_whitelist_exp"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_5f
    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$1;->this$0:Lcom/android/common/rus/RomUpdateUtil;

    invoke-static {p0, p1}, Lcom/android/common/rus/RomUpdateUtil;->access$000(Lcom/android/common/rus/RomUpdateUtil;Landroid/content/Context;)V

    :cond_64
    const-string p0, "app_launcher_branch_enabled_config"

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_71

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->updateBranchRUS(Landroid/content/Context;)V

    :cond_71
    const-string p0, "app_launcher_recommend_games_enabled_config"

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7e

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->updateRecommendRus(Landroid/content/Context;)V

    :cond_7e
    const-string/jumbo p0, "oplus_branch_navigator_enabled_config"

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    invoke-static {p1}, Lcom/android/common/config/FeatureOption;->initBranchSearchFeature(Landroid/content/Context;)V

    :cond_8a
    return-void
.end method
