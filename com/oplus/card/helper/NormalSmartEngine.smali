.class public final Lcom/oplus/card/helper/NormalSmartEngine;
.super Lcom/oplus/card/helper/SmartEngine;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/NormalSmartEngine$Companion;
    }
.end annotation


# static fields
.field public static final CODE_INFLATE_ERROR:I = 0x2

.field public static final CODE_INFLATE_SUCCESS:I = 0x0

.field public static final CODE_REFRESH_ERROR:I = 0x3

.field public static final CODE_REFRESH_SUCCESS:I = 0x1

.field public static final CODE_UNKNOWN_DATA:I = 0x4

.field public static final Companion:Lcom/oplus/card/helper/NormalSmartEngine$Companion;

.field private static final TAG:Ljava/lang/String; = "NormalSmartEngine"

.field private static smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;


# instance fields
.field private final errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

.field private hasUpdateDefaultDisplayContext:Z

.field private smartEngineView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/NormalSmartEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/NormalSmartEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/NormalSmartEngine;->Companion:Lcom/oplus/card/helper/NormalSmartEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;",
            "Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/SmartEngine;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)V

    iput-object p3, p0, Lcom/oplus/card/helper/NormalSmartEngine;->errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p1}, Lcom/oplus/card/helper/SmartEngineHelper;->getSmartEngineManager()Lcom/oplus/smartsdk/SmartEngineManager;

    move-result-object p1

    sput-object p1, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez p1, :cond_1f

    goto :goto_27

    :cond_1f
    new-instance p3, Lcom/android/launcher/x;

    invoke-direct {p3, p0, p2}, Lcom/android/launcher/x;-><init>(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, p3}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_27
    invoke-virtual {p0}, Lcom/oplus/card/helper/NormalSmartEngine;->addFailRetryProxy()V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/helper/NormalSmartEngine$1$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine$1$1;-><init>(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p2, v0, v1}, Lcom/oplus/smartsdk/ISmartViewApi;->registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->release$lambda-5$lambda-4(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final synthetic access$getSmartEngineManager$cp()Lcom/oplus/smartsdk/SmartEngineManager;
    .registers 1

    sget-object v0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-object v0
.end method

.method public static final synthetic access$getSmartEngineView$p(Lcom/oplus/card/helper/NormalSmartEngine;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$release(Lcom/oplus/card/helper/NormalSmartEngine;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->release(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setSmartEngineManager$cp(Lcom/oplus/smartsdk/SmartEngineManager;)V
    .registers 1

    sput-object p0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-void
.end method

.method public static final synthetic access$setSmartEngineView$p(Lcom/oplus/card/helper/NormalSmartEngine;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineView:Landroid/view/View;

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->onVisible$lambda-8$lambda-7(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/card/helper/NormalSmartEngine;->_init_$lambda-0(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->onInVisible$lambda-10$lambda-9(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/SmartEngineManager;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/card/helper/NormalSmartEngine;->useSmartEngine$lambda-3$lambda-2$lambda-1(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/SmartEngineManager;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->releaseView$lambda-6(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private static final onInVisible$lambda-10$lambda-9(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->onInVisible(Landroid/view/View;)V

    return-void
.end method

.method private static final onVisible$lambda-8$lambda-7(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->onVisible(Landroid/view/View;)V

    return-void
.end method

.method private final release(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    if-nez p1, :cond_7

    goto :goto_15

    :cond_7
    sget-object p0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez p0, :cond_c

    goto :goto_15

    :cond_c
    new-instance v0, Lcom/android/common/util/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/common/util/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_15
    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method private static final release$lambda-5$lambda-4(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->onRelease(Landroid/view/View;)V

    return-void
.end method

.method private static final releaseView$lambda-6(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unRegisterUiCallback "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalSmartEngine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->unRegisterUiCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final updateDefaultDisplayContext(Landroid/content/Context;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/card/helper/NormalSmartEngine;->hasUpdateDefaultDisplayContext:Z

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->updateDefaultDisplayContext(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/card/helper/NormalSmartEngine;->hasUpdateDefaultDisplayContext:Z

    :cond_a
    return-void
.end method

.method private final useSmartEngine(Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 5

    sget-object v0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v0, :cond_5

    goto :goto_d

    :cond_5
    new-instance v1, Lcom/android/launcher/i0;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher/i0;-><init>(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/SmartEngineManager;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    invoke-virtual {v0, v1}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_d
    return-void
.end method

.method private static final useSmartEngine$lambda-3$lambda-2$lambda-1(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/SmartEngineManager;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$smartApiInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/smartsdk/SmartEngineManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "manager.hostContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/card/helper/NormalSmartEngine;->updateDefaultDisplayContext(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " useSmartEngine cardName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalSmartEngine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/smartsdk/SmartEngineManager;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0, p2, p3}, Lcom/oplus/smartsdk/ISmartViewApi;->sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    return-void
.end method


# virtual methods
.method public addFailRetryProxy()V
    .registers 2

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    iget-object p0, p0, Lcom/oplus/card/helper/NormalSmartEngine;->errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->addCardErrorCallback(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;)V

    return-void
.end method

.method public final getErrorCallback()Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/NormalSmartEngine;->errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    return-object p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/4 p0, 0x4

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public isVisible()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result p0

    return p0
.end method

.method public obtainView(Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 12

    const-string v0, "uiData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lcom/oplus/smartsdk/SmartApiInfo;

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getLayoutName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getVersion()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getThemeId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getIdMaps()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getValue()[B

    move-result-object v7

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getForceChangeCardUI()Z

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oplus/smartsdk/SmartApiInfo;-><init>([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZ)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/card/helper/NormalSmartEngine;->useSmartEngine(Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_35

    :catch_2b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NormalSmartEngine"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-nez p1, :cond_9

    goto :goto_1e

    :cond_9
    sget-object v0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v0, :cond_e

    goto :goto_17

    :cond_e
    new-instance v1, Lcom/android/common/util/b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/common/util/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_17
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->endRecordExposeTime()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result v0

    if-nez v0, :cond_1e

    if-nez p1, :cond_9

    goto :goto_1e

    :cond_9
    sget-object v0, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v0, :cond_e

    goto :goto_17

    :cond_e
    new-instance v1, Lcom/android/common/util/b;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/android/common/util/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_17
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->beginRecordExposeTime()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public releaseView(Landroid/view/View;)V
    .registers 4

    const-string v0, "releaseView "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalSmartEngine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->release(Landroid/view/View;)V

    sget-object p1, Lcom/oplus/card/helper/NormalSmartEngine;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez p1, :cond_13

    goto :goto_1b

    :cond_13
    new-instance v0, Landroidx/core/view/a;

    invoke-direct {v0, p0}, Landroidx/core/view/a;-><init>(Lcom/oplus/card/helper/NormalSmartEngine;)V

    invoke-virtual {p1, v0}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_1b
    return-void
.end method

.method public removeFailRetryProxy()V
    .registers 2

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    iget-object p0, p0, Lcom/oplus/card/helper/NormalSmartEngine;->errorCallback:Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->removeCardErrorCallback(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;)V

    return-void
.end method
