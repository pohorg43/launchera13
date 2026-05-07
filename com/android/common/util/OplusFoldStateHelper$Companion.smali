.class public final Lcom/android/common/util/OplusFoldStateHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/OplusFoldStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;-><init>()V

    return-void
.end method

.method private final getFoldingModeFromDisplay()I
    .registers 6

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v3

    if-gt v2, v3, :cond_4b

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingMode()I

    move-result p0

    if-eqz p0, :cond_49

    const-string v2, "displayMetrics not match foldStateSettings,realWidth:"

    const-string v3, ",realHeight:"

    const-string v4, ",foldStateSettings:"

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFoldStateHelper"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    const/4 p0, 0x0

    goto :goto_4c

    :cond_4b
    const/4 p0, 0x1

    :goto_4c
    return p0
.end method

.method private final isNeedRefreshFoldingModeFromSettings()Z
    .registers 3

    sget v0, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    sget v1, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldingModeMismatchSizeInfo(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getFoldingMode()I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLastFoldingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "OplusFoldStateHelper"

    if-eq v0, v1, :cond_4f

    const-string/jumbo v0, "updateFoldingMode when foldState changed from "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLastFoldingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for no reason, need update!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromSettings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMLastFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    if-ne v0, v3, :cond_49

    move v2, v3

    :cond_49
    const-string v0, "isWideScreenLarge "

    invoke-static {v2, v0, v4}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_4f
    sget-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    if-nez v0, :cond_a1

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isNeedRefreshFoldingModeFromSettings()Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string/jumbo v0, "updateFoldingMode when foldState not match with screen size, now screen realW-H: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", now state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need update!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromSettings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMLastFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    if-ne v0, v3, :cond_9c

    move v2, v3

    :cond_9c
    const-string v0, "isWideScreenLarge="

    invoke-static {v2, v0, v4}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p0

    return p0
.end method

.method public final getFoldingModeFromSettings()I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oplus_system_folding_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "getFoldingModeFromSettings:"

    const-string v3, "OplusFoldStateHelper"

    invoke-static {v0, v1, v3}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_2c

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromDisplay()I

    move-result v0

    const-string p0, "getFoldingModeFromDisplay:"

    invoke-static {v0, p0, v3}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return v0
.end method

.method public final getInstance()Lcom/android/common/util/OplusFoldStateHelper;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p0

    if-nez p0, :cond_1e

    const-class p0, Lcom/android/common/util/OplusFoldStateHelper;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    new-instance v0, Lcom/android/common/util/OplusFoldStateHelper;

    invoke-direct {v0}, Lcom/android/common/util/OplusFoldStateHelper;-><init>()V

    invoke-static {v0}, Lcom/android/common/util/OplusFoldStateHelper;->access$setSInstance$cp(Lcom/android/common/util/OplusFoldStateHelper;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p0

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMContext$cp()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getMFoldAnimation()Lcom/android/launcher3/anim/LauncherFoldAnimation;
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMFoldAnimation$cp()Lcom/android/launcher3/anim/LauncherFoldAnimation;

    move-result-object p0

    return-object p0
.end method

.method public final getMFoldingMode()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMFoldingMode$cp()I

    move-result p0

    return p0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMHandler$cp()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final getMLastFoldingMode()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMLastFoldingMode$cp()I

    move-result p0

    return p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$getMLauncher$cp()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public final isFoldScreenFoldedFromDisplay()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromDisplay()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isFoldingModeMismatchSizeInfo(II)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p2

    if-le p1, p2, :cond_27

    :cond_1b
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p0

    if-le p1, p0, :cond_28

    :cond_27
    move v1, v0

    :cond_28
    return v1
.end method

.method public final isLargeScreen(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result p1

    if-le p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isUpdatingIdp()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->access$isUpdatingIdp$cp()Z

    move-result p0

    return p0
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMContext$cp(Landroid/content/Context;)V

    return-void
.end method

.method public final setMFoldAnimation(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMFoldAnimation$cp(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V

    return-void
.end method

.method public final setMFoldingMode(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMFoldingMode$cp(I)V

    return-void
.end method

.method public final setMLastFoldingMode(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMLastFoldingMode$cp(I)V

    return-void
.end method

.method public final setMLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setMLauncher$cp(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public final setUpdatingIdp(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/OplusFoldStateHelper;->access$setUpdatingIdp$cp(Z)V

    return-void
.end method

.method public final updateFoldingMode()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingModeFromSettings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMLastFoldingMode(I)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFoldingMode()I

    move-result p0

    return p0
.end method

.method public final updateIdpWhenChangingFoldState(Z)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string v1, "OplusFoldStateHelper"

    if-nez v0, :cond_f

    const-string/jumbo p0, "updateIdpWhenChangingFoldState ignore, launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-ne v0, v3, :cond_20

    move v0, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v2

    :goto_21
    if-nez v0, :cond_10b

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_32

    :cond_2a
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-ne v0, v3, :cond_32

    move v0, v3

    goto :goto_33

    :cond_32
    :goto_32
    move v0, v2

    :goto_33
    if-eqz v0, :cond_37

    goto/16 :goto_10b

    :cond_37
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_46

    :cond_3e
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v3

    goto :goto_47

    :cond_46
    :goto_46
    move v0, v2

    :goto_47
    if-eqz v0, :cond_50

    const-string/jumbo p0, "updateIdpWhenChangingFoldState ignore, launcher not started"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_50
    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string/jumbo v0, "updateIdpWhenChangingFoldState(), failed, isInSuperPowerMode"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    sget-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    if-nez v0, :cond_eb

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isUpdatingIdp()Z

    move-result v0

    if-eqz v0, :cond_70

    goto/16 :goto_eb

    :cond_70
    invoke-virtual {p0, v3}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setUpdatingIdp(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIdpWhenChangingFoldState(), start, isFoldScreenExpanded="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", orientation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_92

    goto :goto_9f

    :cond_92
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_99

    goto :goto_9f

    :cond_99
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-nez v4, :cond_a1

    :goto_9f
    move-object v4, v5

    goto :goto_a7

    :cond_a1
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_a7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", deviceProfile="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v4

    if-nez v4, :cond_b7

    move-object v4, v5

    goto :goto_bb

    :cond_b7
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    :goto_bb
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_d0

    goto :goto_d4

    :cond_d0
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    :goto_d4
    invoke-static {v0, v5}, Lcom/android/common/util/DisplayUtils;->updateDisplayInfoIfNeeded(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/DisplayUtils;->updateScreenInfoIfNeeded(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/common/util/DisplayUtils;->updateIDPAndRebindIfNeeded(Lcom/android/launcher/Launcher;Z)V

    sput-boolean v3, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    invoke-virtual {p0, v2}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setUpdatingIdp(Z)V

    return-void

    :cond_eb
    :goto_eb
    const-string/jumbo p1, "updateIdpWhenChangingFoldState(), failed, hasUpdatedIdp="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUpdatingIdp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isUpdatingIdp()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10b
    :goto_10b
    const-string/jumbo p0, "updateIdpWhenChangingFoldState ignore, launcher not available"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
