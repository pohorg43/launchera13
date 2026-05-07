.class public final Lcom/android/launcher3/card/uscard/USCardManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;,
        Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;,
        Lcom/android/launcher3/card/uscard/USCardManager$OnUSCardChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_ADVICE_SETTING:Ljava/lang/String; = "oplus.intent.action.adviceSetting"

.field private static final ACTION_PRIVACY_SETTING:Ljava/lang/String; = "com.oplus.assistant.ACTION_ENTER_ADVICE_STATEMENT"

.field public static final INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

.field private static final MAX_DELAY_REFRESH_ANIM_END:J = 0x7d0L

.field public static final REJECT_UPDATE_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "USCardManager"

.field private static mOnUSCardChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/uscard/USCardManager$OnUSCardChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRejectAlarm:Lcom/android/launcher3/Alarm;

.field private static mRejectAlarmListener:Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

.field private static mUSDragListener:Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;

.field private static final onCardListChangeCb:Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;

.field private static uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-direct {v0}, Lcom/android/launcher3/card/uscard/USCardManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    new-instance v0, Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->onCardListChangeCb:Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardManager;->onRecommendListChange$lambda-2$lambda-1(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method public static final synthetic access$setMRejectAlarmListener$p(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarmListener:Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->tryRejectChildCardForPage$lambda-7(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method

.method public static final checkUSCardContainerExistAndToast(Lcom/android/launcher3/OplusWorkspace;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "wp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const-string/jumbo v1, "wp.workspaceAndHotseatCellLayouts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_26

    aget-object v5, v0, v4

    instance-of v6, v5, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v6, :cond_23

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    sget-object v2, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusCellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_48

    :cond_46
    move v4, v3

    goto :goto_49

    :cond_48
    :goto_48
    move v4, v2

    :goto_49
    if-nez v4, :cond_2a

    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_57

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_57

    :cond_55
    move v1, v3

    goto :goto_6c

    :cond_57
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/IAreaWidget;

    instance-of v4, v4, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v4, :cond_5b

    move v1, v2

    :goto_6c
    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    const v0, 0x7f1205e1

    invoke-static {p0, v0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    return v2

    :cond_79
    return v3
.end method

.method public static final notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->notifyAnimationEnd$OplusLauncher_OPPOPallExportAallRelease(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :goto_e
    return-void
.end method

.method private static final onRecommendListChange$lambda-2$lambda-1(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 4

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$contentResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "USCardManager"

    const-string/jumbo v1, "onRecommendListChange -- preformCardsRefresh"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method private static final tryRejectChildCardForPage$lambda-7(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 2

    const-string v0, "$launcherCardView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method


# virtual methods
.method public final addOnPageChangeListener(Lcom/android/launcher3/card/uscard/USCardManager$OnUSCardChangeListener;)V
    .registers 2

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mOnUSCardChangeListeners:Ljava/util/List;

    if-nez p0, :cond_10

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mOnUSCardChangeListeners:Ljava/util/List;

    :cond_10
    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mOnUSCardChangeListeners:Ljava/util/List;

    if-nez p0, :cond_15

    goto :goto_18

    :cond_15
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    return-void
.end method

.method public final cancelRejectAlarm()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_b
    return-void
.end method

.method public final checkRejectAlarm()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarmListener:Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

    if-nez p0, :cond_5

    goto :goto_a

    :cond_5
    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    :goto_a
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarmListener:Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

    return-void
.end method

.method public final clearOnPageChangeListeners()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mOnUSCardChangeListeners:Ljava/util/List;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_8
    return-void
.end method

.method public final createCardContainerView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 5

    const-string/jumbo v0, "wp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    const-string v1, "USCardManager"

    if-eqz v0, :cond_20

    const-string/jumbo p1, "universal_service container card is disabled"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardManager;->setUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-object p1

    :cond_20
    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz p0, :cond_36

    const-string p0, "There is already a universal_service card on the desktop, and repeated additions are not allowed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p0, :cond_2e

    goto :goto_33

    :cond_2e
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_33
    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    return-object p0

    :cond_36
    sget-object p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->Companion:Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;->fromXml(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showLoadingIfNeed()V

    return-object p0
.end method

.method public final getCellLayoutParent()Lcom/android/launcher3/CellLayout;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainerParent()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    move-object p0, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_d
    instance-of v1, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    :cond_14
    return-object v0
.end method

.method public final getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    return-object p0
.end method

.method public final getUSCardContainerParent()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .registers 3

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    move-object p0, v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_b
    instance-of v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v1, :cond_12

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    :cond_12
    return-object v0
.end method

.method public final isContainerAdded()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_a
    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final launchPrivacyActivity(Landroid/content/Context;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "USCardManager"

    const-string/jumbo v0, "redirect to xiao bu privacy activity"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.assistant.ACTION_ENTER_ADVICE_STATEMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f1203d7

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_2c
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_3a

    :catch_30
    move-exception p1

    const-string v0, "launchPrivacyActivity e: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public final launchServiceRecommendActivity(Landroid/content/Context;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "USCardManager"

    const-string/jumbo v0, "onClick UsCard ServiceRecommendSetting"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oplus.intent.action.adviceSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f1203d7

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_2d
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_3b

    :catch_31
    move-exception p1

    const-string v0, "launchServiceRecommendActivity e: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public final onCardAdded(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    const-string p0, "card"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "pos"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "span"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mOnUSCardChangeListeners:Ljava/util/List;

    if-nez p0, :cond_16

    goto :goto_2a

    :cond_16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardManager$OnUSCardChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/card/uscard/USCardManager$OnUSCardChangeListener;->onCardAdded(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1a

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final onCreateUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 4

    const-string/jumbo v0, "usCV"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "USCardManager"

    const-string v1, "The universal_service card has been created"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardManager;->setUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->runPendingRefresh()V

    :goto_1e
    return-void
.end method

.method public final onRecommendListChange(Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 5

    const-string p0, "contentResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const-string/jumbo p0, "onRecommendListChange, isEmpty: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", contentResult "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "USCardManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p0, :cond_3b

    return-void

    :cond_3b
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isLoadTimeout()Z

    move-result p0

    if-nez p0, :cond_55

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object p0

    if-nez p0, :cond_55

    const-string/jumbo p0, "onRecommendListChange, relatedPM == null, return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p0, :cond_5a

    goto :goto_64

    :cond_5a
    const-wide/16 v0, 0x7d0

    new-instance v2, Lcom/android/launcher/guide/c;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->runAvoidDuringAnimation$OplusLauncher_OPPOPallExportAallRelease(JLjava/lang/Runnable;)V

    :goto_64
    return-void

    :cond_65
    new-instance p0, Ljava/lang/IllegalCallerException;

    const-string/jumbo p1, "onRecommendListChange, perform in an error thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalCallerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onRemoveUSCardContainer()V
    .registers 3

    const-string v0, "USCardManager"

    const-string v1, "The universal_service card has been removed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardManager;->setUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method

.method public final onWorkspaceCardAdded(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 4

    const-string v0, "launcherCardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->isAContainer()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "launcherCardView.itemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isUsOrContainerCard(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initSeedlingSdkAsync()V

    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardManager;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method

.method public final removeOnPageChangeListener(Lcom/android/launcher3/card/uscard/USCardManager$OnUSCardChangeListener;)V
    .registers 2

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mOnUSCardChangeListeners:Ljava/util/List;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method

.method public final setInitChildrenCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 9

    const-string/jumbo p0, "usCV"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dragCardInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getInnerCards()Ljava/util/List;

    move-result-object p0

    const-string v0, "USCardManager"

    if-eqz p0, :cond_98

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getInnerCards()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto/16 :goto_98

    :cond_1f
    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMPendingItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->saveOldCardsToPendingList()V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0014

    invoke-virtual {p1, v2, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getInnerCards()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dragndrop/CardIdentity;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardState()I

    move-result v4

    if-ltz v4, :cond_6b

    invoke-static {v3}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleCardInfoByCardIdentity(Lcom/android/launcher3/dragndrop/CardIdentity;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    if-nez v3, :cond_5c

    goto :goto_43

    :cond_5c
    iput-boolean p0, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getInnerCards()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddChildCard(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;I)Z

    goto :goto_43

    :cond_6b
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "it.cardState = "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object v4

    if-nez v4, :cond_8f

    goto :goto_43

    :cond_8f
    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardState()I

    move-result v3

    invoke-virtual {p1, v3, v4}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    goto :goto_43

    :cond_97
    return-void

    :cond_98
    :goto_98
    const-string p0, "dragCardInfo innerCards isEmpty, return."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz p1, :cond_10

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->onCardListChangeCb:Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->addCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    goto :goto_1b

    :cond_10
    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->onCardListChangeCb:Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->removeCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    :goto_1b
    return-void
.end method

.method public final tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 6

    const-string v0, "launcherCardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->isContainerAdded()Z

    move-result p0

    if-nez p0, :cond_15

    return-void

    :cond_15
    invoke-static {p1}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isSameCellLayout(Lcom/android/launcher3/card/LauncherCardView;)Z

    move-result p0

    if-nez p0, :cond_1c

    return-void

    :cond_1c
    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p0, :cond_22

    const/4 p0, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->checkDragCardState()I

    move-result p0

    :goto_26
    if-gez p0, :cond_29

    return-void

    :cond_29
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_38

    check-cast p0, Lcom/android/launcher3/CellLayout;

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    if-nez p0, :cond_3c

    return-void

    :cond_3c
    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->uSCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryRejectChildCardForPage, parent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hasContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USCardManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/Launcher;

    if-nez v2, :cond_78

    return-void

    :cond_78
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_9a

    if-eqz v0, :cond_9a

    new-instance p0, Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;

    new-instance v0, Lcom/android/launcher3/card/uscard/e;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/uscard/e;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->mUSDragListener:Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->mUSDragListener:Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void

    :cond_9a
    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->mUSDragListener:Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;

    if-nez p1, :cond_9f

    goto :goto_b0

    :cond_9f
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_b0
    :goto_b0
    if-nez v0, :cond_b8

    sget-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    goto :goto_c7

    :cond_b8
    new-instance p1, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;-><init>(Lcom/android/launcher3/CellLayout;)V

    sput-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->mRejectAlarmListener:Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :goto_c7
    return-void
.end method

.method public final turnOnXiaoBuMasterKey(Landroid/content/Context;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content://"

    const-string v0, "com.oplus.advice.settings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enable_master_status"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "enable_advice_master_switch"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
