.class public final Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAME:Ljava/lang/String; = "com.coloros.phonemanager.clear.ClearMainActivity"

.field public static final Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

.field public static final PACKEGE_NAME:Ljava/lang/String; = "com.coloros.phonemanager"

.field public static final PHONE_MANAGER_ENTRANCE_KEY:Ljava/lang/String; = "display_phone_manager_entrance"

.field public static final SWITCH_OPEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PhoneManagerEntranceManger"

.field private static isPhoneManagerExist:Z

.field private static mContext:Landroid/content/Context;

.field private static mNeedShowPhoneManagerSwitch:Z

.field private static final mPhoneManagerSwitchObserver:Landroid/database/ContentObserver;

.field private static volatile sInstance:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->sLock:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mNeedShowPhoneManagerSwitch:Z

    sput-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->isPhoneManagerExist:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion$mPhoneManagerSwitchObserver$1;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion$mPhoneManagerSwitchObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mPhoneManagerSwitchObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->updatePhoneManagerSwitch(Landroid/content/Context;)V

    const-string p1, "PhoneManagerEntranceManger"

    const-string v0, "updatePhoneManagerSwitch  init  mNeedShowPhoneManagerSwitch"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->registerObserver()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->initPhoneManagerEntranceState$lambda-1(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMContext$cp()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getMNeedShowPhoneManagerSwitch$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mNeedShowPhoneManagerSwitch:Z

    return v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->sInstance:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    return-object v0
.end method

.method public static final synthetic access$getSLock$cp()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$isPhoneManagerExist$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->isPhoneManagerExist:Z

    return v0
.end method

.method public static final synthetic access$setMContext$cp(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMNeedShowPhoneManagerSwitch$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mNeedShowPhoneManagerSwitch:Z

    return-void
.end method

.method public static final synthetic access$setPhoneManagerExist$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->isPhoneManagerExist:Z

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->sInstance:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->initPhoneManagerEntranceState$lambda-0(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Landroid/view/View;)V

    return-void
.end method

.method private static final initPhoneManagerEntranceState$lambda-0(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "PhoneManagerEntranceManger"

    const-string v0, "----- onClick enter phone manager"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->jumpToPhoneManager()V

    return-void
.end method

.method private static final initPhoneManagerEntranceState$lambda-1(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Landroid/view/View;)Z
    .registers 10

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$cleanMemory"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->jumpToPhoneManager()V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string p0, "cleanMemory.context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final newPhoneManagerIntent()Landroid/content/Intent;
    .registers 4

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.coloros.phonemanager"

    const-string v2, "com.coloros.phonemanager.clear.ClearMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x30208000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private final registerObserver()V
    .registers 6

    const-string p0, "PhoneManagerEntranceManger"

    :try_start_2
    const-string v0, "updatePhoneManagerSwitch  registerObserver"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    goto :goto_2e

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_2e

    :cond_13
    const-string v1, "display_phone_manager_entrance"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mPhoneManagerSwitchObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception v0

    const-string v1, "registerObserver(), e="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public final getPhoneManagerSwitch()I
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mNeedShowPhoneManagerSwitch:Z

    return p0
.end method

.method public final initPhoneManagerEntranceState(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 4

    const-string v0, "cleanMemory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    sget-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->updatePhoneManagerSwitch(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->isExist(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->isPhoneManagerExist:Z

    const v0, 0x7f0a0146

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/views/OplusCleanStorageView;

    new-instance v1, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/quickstep/views/a0;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/views/a0;-><init>(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final jumpToPhoneManager()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->newPhoneManagerIntent()Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    :goto_12
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsEventPhoneManagerEntranceClick()V

    return-void
.end method

.method public final needShowPhoneManagerSwitch()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mNeedShowPhoneManagerSwitch:Z

    return p0
.end method

.method public final recoveryPhoneManagerSwitch()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->savePhoneManagerSwitch(I)Z

    move-result p0

    return p0
.end method

.method public final savePhoneManagerSwitch(I)Z
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :goto_a
    const-string v0, "display_phone_manager_entrance"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final savePhoneManagerSwitch(Z)Z
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->mContext:Landroid/content/Context;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :goto_a
    const-string v0, "display_phone_manager_entrance"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final updateCleanButton(Landroid/view/View;)V
    .registers 3

    const-string p0, "cleanMemory"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p0

    const-string v0, "PhoneManagerEntranceManger"

    if-eqz p0, :cond_19

    const-string p0, "----- mCleanMemory.setVisibility(VISIBLE)"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    :cond_19
    const-string p0, "----- mCleanMemory.setVisibility(GONE)"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void
.end method
