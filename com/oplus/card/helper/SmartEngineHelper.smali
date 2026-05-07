.class public final Lcom/oplus/card/helper/SmartEngineHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/InterceptClickCallback;
.implements Lcom/oplus/smartsdk/InterceptStartActivityCallback;
.implements Lcom/nearme/instant/xcard/ILaunchInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;,
        Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;,
        Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;
    }
.end annotation


# static fields
.field public static final CODE_INFLATE_ERROR:I = 0x2

.field public static final CODE_INFLATE_SUCCESS:I = 0x0

.field public static final CODE_REFRESH_ERROR:I = 0x3

.field public static final CODE_REFRESH_SUCCESS:I = 0x1

.field public static final CODE_UNKNOWN_DATA:I = 0x4

.field public static final INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

.field public static final NUMBER_SPLIT:I = 0x3

.field private static final PARENT_MAX_DEPTH:I = 0xa

.field public static final SUPPORT_ENGINE_UPDATE:Z = false

.field private static final TAG:Ljava/lang/String; = "SmartEngineHelper"

.field private static final errorCallbackForManager:Lcom/oplus/card/helper/SmartEngineHelper$errorCallbackForManager$1;

.field private static final errorCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

.field private static mCardEngineCallback:Lcom/nearme/instant/xcard/ICardEngineCallback;

.field private static final mEngineUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mHasInitQuickApp:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mSmartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

.field private static mSmartEngineUpdateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-direct {v0}, Lcom/oplus/card/helper/SmartEngineHelper;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->mEngineUpdateListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->errorCallbackList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lcom/oplus/card/helper/SmartEngineHelper$errorCallbackForManager$1;

    invoke-direct {v0}, Lcom/oplus/card/helper/SmartEngineHelper$errorCallbackForManager$1;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->errorCallbackForManager:Lcom/oplus/card/helper/SmartEngineHelper$errorCallbackForManager$1;

    new-instance v0, Lcom/oplus/card/helper/SmartEngineHelper$mSmartEngineUpdateListener$1;

    invoke-direct {v0}, Lcom/oplus/card/helper/SmartEngineHelper$mSmartEngineUpdateListener$1;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineUpdateListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/card/helper/SmartEngineHelper;->initNormalSmartEngine$lambda-0(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final synthetic access$getMSmartEngineManager$p()Lcom/oplus/smartsdk/SmartEngineManager;
    .registers 1

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-object v0
.end method

.method public static final synthetic access$initSmartViewApi(Lcom/oplus/card/helper/SmartEngineHelper;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/SmartEngineHelper;->initSmartViewApi(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private final getUSCardView(Landroid/view/View;I)Lcom/android/launcher3/card/uscard/USCardView;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    const/16 v1, 0xa

    if-lt p2, v1, :cond_8

    goto :goto_21

    :cond_8
    instance-of v1, p1, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/android/launcher3/card/uscard/USCardView;

    return-object p1

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1a

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    :cond_1a
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v0, p2}, Lcom/oplus/card/helper/SmartEngineHelper;->getUSCardView(Landroid/view/View;I)Lcom/android/launcher3/card/uscard/USCardView;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUSCardView not found depth = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", view="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartEngineHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final initNormalSmartEngine$lambda-0(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->initSmartViewApi(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private final initSmartViewApi(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->setCanLog(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "SmartEngineHelper"

    const-string v1, "initSmartViewApi: interceptStartActivityCallback"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->interceptStartActivityCallback(Lcom/oplus/smartsdk/InterceptClickCallback;)V

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V

    :cond_1a
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->errorCallbackForManager:Lcom/oplus/card/helper/SmartEngineHelper$errorCallbackForManager$1;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

    return-void
.end method

.method private final startActivityImp(Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityImp intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,cardName："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartEngineHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/card/helper/SmartEngineHelper;->statCardValidClickEvent(Landroid/view/View;Ljava/lang/String;)V

    const-string p0, "&"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_46

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    if-nez p0, :cond_42

    goto :goto_45

    :cond_42
    invoke-interface {p0, p2}, Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;->onStartIntentDirect(Landroid/content/Intent;)V

    :goto_45
    return-void

    :cond_46
    new-array p1, v1, [I

    :goto_48
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lp3/g;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v0

    :cond_5c
    const/4 v0, 0x2

    if-le v1, v0, :cond_68

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    if-nez p0, :cond_64

    goto :goto_67

    :cond_64
    invoke-interface {p0, p2, p1, p3}, Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;->onStartCardActivity(Landroid/content/Intent;[II)V

    :goto_67
    return-void

    :cond_68
    move v0, v1

    goto :goto_48
.end method

.method private final toCardArray(Ljava/lang/String;)[I
    .registers 5

    const-string p0, "&"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    new-array p1, v1, [I

    :goto_17
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lp3/g;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v0

    :cond_2b
    const/4 v0, 0x2

    if-le v1, v0, :cond_2f

    return-object p1

    :cond_2f
    move v0, v1

    goto :goto_17
.end method


# virtual methods
.method public final addCardErrorCallback(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;)V
    .registers 4

    const-string p0, "cb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->errorCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final addEngineUpdateListener(Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->mEngineUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final getErrorCallbackList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->errorCallbackList:Ljava/util/List;

    return-object p0
.end method

.method public final getListener()Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;
    .registers 1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    return-object p0
.end method

.method public final getMEngineUpdateListeners()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mEngineUpdateListeners:Ljava/util/List;

    return-object p0
.end method

.method public final getMLock()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public final getMSmartEngineUpdateListener()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineUpdateListener:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public final getSmartEngineManager()Lcom/oplus/smartsdk/SmartEngineManager;
    .registers 1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-object p0
.end method

.method public final initNormalSmartEngine(Landroid/content/Context;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    const-string v0, "initNormalSmartEngine mSmartEngineManager = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmartEngineHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-eqz p0, :cond_1e

    return-void

    :cond_1e
    new-instance p0, Lcom/oplus/smartsdk/SmartEngineManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/SmartEngineManager;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    sget-object p1, Lcom/android/launcher3/f0;->i:Lcom/android/launcher3/f0;

    invoke-virtual {p0, p1}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method public final initQuickCardSmartEngine(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cb"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p0

    const-string v0, "SmartEngineHelper"

    if-nez p0, :cond_18

    const-string p0, "initLauncherQuickAppSmartEngine not support global card drag,return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    sget-object p0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    const v1, 0x7f1203dc

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    const-string p0, "initLauncherQuickAppSmartEngine has not install instant platform,return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    const-string p0, "initLauncherQuickAppSmartEngine"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/nearme/instant/xcard/CardClient;->initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;)V

    return-void
.end method

.method public onCall(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p1, "intentList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardName"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SmartEngineHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCall: intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cardName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/oplus/card/helper/SmartEngineHelper;->startActivityList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onStartActivity(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/oplus/card/helper/SmartEngineHelper;->startActivityImp(Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardName"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p2, p1}, Lcom/oplus/card/helper/SmartEngineHelper;->startActivityImp(Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public final removeCardErrorCallback(Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;)V
    .registers 3

    const-string p0, "cb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->errorCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final removeEngineUpdateListener(Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->mEngineUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final setListener(Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;)V
    .registers 2

    sput-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    return-void
.end method

.method public final setMSmartEngineUpdateListener(Landroid/content/BroadcastReceiver;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->mSmartEngineUpdateListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final startActivityList(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "intentList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityList intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cardName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartEngineHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/oplus/card/helper/SmartEngineHelper;->statCardValidClickEvent(Landroid/view/View;Ljava/lang/String;)V

    const-string p0, "&"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p2, p0, v0, v0, v1}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_48

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    if-nez p0, :cond_44

    goto :goto_47

    :cond_44
    invoke-interface {p0, p1}, Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;->onStartActivityListDirect(Ljava/util/List;)V

    :goto_47
    return-void

    :cond_48
    new-array p2, v1, [I

    :goto_4a
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lp3/g;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v0

    :cond_5e
    const/4 v0, 0x2

    if-le v1, v0, :cond_6a

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    if-nez p0, :cond_66

    goto :goto_69

    :cond_66
    invoke-interface {p0, p1, p2}, Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;->onStartActivityList(Ljava/util/List;[I)V

    :goto_69
    return-void

    :cond_6a
    move v0, v1

    goto :goto_4a
.end method

.method public final statCardValidClickEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/card/helper/SmartEngineHelper;->getUSCardView(Landroid/view/View;I)Lcom/android/launcher3/card/uscard/USCardView;

    move-result-object p0

    if-nez p0, :cond_38

    if-nez p2, :cond_b

    const/4 p1, 0x0

    goto :goto_11

    :cond_b
    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-direct {p1, p2}, Lcom/oplus/card/helper/SmartEngineHelper;->toCardArray(Ljava/lang/String;)[I

    move-result-object p1

    :goto_11
    if-nez p1, :cond_14

    goto :goto_38

    :cond_14
    sget-object p2, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p2}, Lcom/oplus/card/helper/SmartEngineHelper;->getListener()Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p2}, Lcom/oplus/card/helper/SmartEngineHelper;->getListener()Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper;

    if-eqz v0, :cond_38

    invoke-virtual {p2}, Lcom/oplus/card/helper/SmartEngineHelper;->getListener()Lcom/oplus/card/helper/SmartEngineHelper$onLaunchCardListener;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.oplus.card.helper.StartCardActivityHelper"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/oplus/card/helper/StartCardActivityHelper;

    invoke-virtual {p2, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz p2, :cond_38

    move-object p0, p1

    :cond_38
    :goto_38
    const-string p1, "statCardValidClickEvent click "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartEngineHelper"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/card/uscard/USCardView;

    if-nez p1, :cond_49

    goto :goto_57

    :cond_49
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statCardValidClickEvent(Lcom/android/launcher3/card/uscard/USCardView;)V

    :goto_57
    return-void
.end method
