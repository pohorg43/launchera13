.class public final Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getSLock$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_10
    sget-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v2

    if-nez v2, :cond_20

    new-instance v2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    invoke-direct {v2, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->setSInstance(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getSInstance$cp()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    return-object p0
.end method

.method public final isExist(Landroid/content/Context;)Z
    .registers 7

    const-string p0, "PhoneManagerEntranceManger"

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coloros.phonemanager"

    const-string v4, "com.coloros.phonemanager.clear.ClearMainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_21

    const/4 p1, 0x0

    goto :goto_27

    :cond_21
    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    :goto_27
    const-string v1, "isExist:"

    const/4 v2, 0x1

    if-nez p1, :cond_2e

    :cond_2c
    move v3, v0

    goto :goto_35

    :cond_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2c

    move v3, v2

    :goto_35
    if-nez v3, :cond_39

    move v3, v2

    goto :goto_3a

    :cond_39
    move v3, v0

    :goto_3a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_48

    goto :goto_4f

    :cond_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_4c} :catch_51

    if-nez p0, :cond_4f

    move v0, v2

    :cond_4f
    :goto_4f
    xor-int/2addr v0, v2

    goto :goto_5b

    :catch_51
    move-exception p1

    const-string v1, "isExist:false  e:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    return v0
.end method

.method public final needShowPhoneManagerEntranceAtLast()Z
    .registers 4

    const-string v0, " needShowPhoneManagerEntranceAtLast,AppFeatureUtils.isPhoneManagerEntranceSupport:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mNeedShowPhoneManagerSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMNeedShowPhoneManagerSwitch$cp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isPhoneManagerExist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "PhoneManagerEntranceManger"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMNeedShowPhoneManagerSwitch$cp()Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    return p0
.end method

.method public final setSInstance(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setSInstance$cp(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V

    return-void
.end method

.method public final shouldShowPhoneManagerCleanSwitch()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final supportPhoneManagerEntrance()Z
    .registers 7

    const-string p0, "updatePhoneManagerSwitch AppFeatureUtils.isPhoneManagerEntranceSupport = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPhoneManagerEntranceSupport()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLevelB+:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/quickstep/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLevelB:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/quickstep/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", FeatureOption.isExp:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !(AppFeatureUtils.isTablet ||AppFeatureUtils.isFoldScreen):"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_48

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-nez v3, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v5

    :goto_49
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "PhoneManagerEntranceManger"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPhoneManagerEntranceSupport()Z

    move-result p0

    if-eqz p0, :cond_7e

    invoke-static {v1}, Lcom/android/quickstep/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-nez p0, :cond_6d

    invoke-static {v2}, Lcom/android/quickstep/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-nez p0, :cond_6d

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isPhoneManagerEntranceForceSupport()Z

    move-result p0

    if-eqz p0, :cond_7e

    :cond_6d
    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_7e

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_7e

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-nez p0, :cond_7e

    goto :goto_7f

    :cond_7e
    move v4, v5

    :goto_7f
    return v4
.end method

.method public final updatePhoneManagerExistState()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMContext$cp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->isExist(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setPhoneManagerExist$cp(Z)V

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "updatePhoneManagerExistState isPhoneManagerExist:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneManagerEntranceManger"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public final updatePhoneManagerSwitch(Landroid/content/Context;)V
    .registers 4

    const-string p0, "PhoneManagerEntranceManger"

    :try_start_2
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    move-object p1, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_d
    invoke-static {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setMContext$cp(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMContext$cp()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :goto_1b
    const-string p1, "display_phone_manager_entrance"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setMNeedShowPhoneManagerSwitch$cp(Z)V

    const-string p1, "updatePhoneManagerSwitch mNeedShowPhoneManagerSwitch = "

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMNeedShowPhoneManagerSwitch$cp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3d

    goto :goto_42

    :catchall_3d
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_42
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_51

    const-string v0, "updatePhoneManagerSwitch(), e="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    return-void
.end method
