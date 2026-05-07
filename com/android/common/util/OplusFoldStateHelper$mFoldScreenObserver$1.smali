.class public final Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/OplusFoldStateHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/common/util/OplusFoldStateHelper;


# direct methods
.method public constructor <init>(Lcom/android/common/util/OplusFoldStateHelper;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;->this$0:Lcom/android/common/util/OplusFoldStateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;->onChange$lambda-0()V

    return-void
.end method

.method private static final onChange$lambda-0()V
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_13

    :cond_9
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_13
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    sget-object p1, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldChangeElapseTime:J

    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->updateFoldingMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldAnimation()Lcom/android/launcher3/anim/LauncherFoldAnimation;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->onFoldStateSettingsChange(I)V

    :goto_22
    const-string/jumbo v1, "onChange->"

    const-string v2, "OplusFoldStateHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    sget-object v3, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string v3, "Hotseat_expand"

    const-string v4, "fold state onChange,set enableUpdateExpandFlag false"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_44

    goto :goto_4f

    :cond_44
    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    if-nez v3, :cond_4b

    goto :goto_4f

    :cond_4b
    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-nez v3, :cond_51

    :goto_4f
    move-object v0, v4

    goto :goto_59

    :cond_51
    invoke-virtual {v3, v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->updateNumShownHotseatIcons(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_59
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v3, Lcom/android/common/util/e0;->b:Lcom/android/common/util/e0;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_68
    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_6f

    goto :goto_76

    :cond_6f
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-ne v0, v1, :cond_76

    goto :goto_77

    :cond_76
    :goto_76
    move v1, v2

    :goto_77
    if-eqz v1, :cond_83

    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_80

    goto :goto_83

    :cond_80
    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->switchExpandHotseatIfNeeded(Lcom/android/launcher/Launcher;)V

    :cond_83
    :goto_83
    invoke-static {}, Lcom/android/common/config/FeatureOption;->updateSupportIconFallen()V

    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->clear()V

    invoke-static {}, Lcom/android/launcher/mode/AbsLauncherMode;->updateMaxFolderPages()V

    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;->this$0:Lcom/android/common/util/OplusFoldStateHelper;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper;->getMResetChangeStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;->this$0:Lcom/android/common/util/OplusFoldStateHelper;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper;->getCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;

    invoke-interface {p1}, Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;->onFoldStateChange()V

    goto :goto_b0

    :cond_c0
    return-void
.end method
