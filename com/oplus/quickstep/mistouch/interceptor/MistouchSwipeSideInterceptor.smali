.class public final Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$Companion;,
        Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$WhenMappings;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$Companion;

.field private static final DELAY_MISTOUCH_RESET_ENTER:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DELAY_MISTOUCH_RESET_SWIPE:J = 0x9c4L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LMistouchSwipeSideInterceptor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mDisplay:Lcom/android/launcher3/util/DisplayController;

.field private mDownX:F

.field private mDownY:F

.field private final mHandler$delegate:Ly2/e;

.field private mIsTouchIn:Z

.field private final mResetTask:Ljava/lang/Runnable;

.field private mResetTaskDelay:J

.field private mRetryShowBar:Z

.field private final mToast$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QuickStep"

    const-string v1, "LMistouchSwipeSideInterceptor"

    const-string v2, "init()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$1;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$1;-><init>(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->setChangedAction(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$2;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->setChangedAction(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    iput-object v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDisplay:Lcom/android/launcher3/util/DisplayController;

    sget-object v0, Ly2/g;->c:Ly2/g;

    sget-object v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mHandler$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mHandler$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mHandler$delegate:Ly2/e;

    new-instance v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;

    invoke-direct {v1, p1, p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mToast$delegate:Ly2/e;

    new-instance p1, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTask$lambda-1(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V

    return-void
.end method

.method public static final synthetic access$getMHandler(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setMRetryShowBar$p(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mRetryShowBar:Z

    return-void
.end method

.method public static final synthetic access$showBarWhenEnterGame(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->showBarWhenEnterGame()V

    return-void
.end method

.method private final getMHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mHandler$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mToast$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/mistouch/MistouchToast;

    return-object p0
.end method

.method private static final mResetTask$lambda-1(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->reset(Z)V

    return-void
.end method

.method private final postCountdownTask(ZZJ)Z
    .registers 10

    const-string v0, "postCountdownTask(), showToast="

    const-string v1, ", showBar="

    const-string v2, ", mResetTaskDelay="

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTaskDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMistouchSwipeSideInterceptor"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTaskDelay:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    return v1

    :cond_2a
    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setHasSwipeOnce(Z)V

    if-eqz p1, :cond_38

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchToast;->show()V

    :cond_38
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v4, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-wide p3, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTaskDelay:J

    if-eqz p2, :cond_58

    cmp-long p0, p3, v2

    if-nez p0, :cond_54

    move p0, v1

    goto :goto_55

    :cond_54
    const/4 p0, 0x0

    :goto_55
    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->changeBarVisiablity(ZZ)V

    :cond_58
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->initResponseRegion()V

    return v1
.end method

.method public static synthetic postCountdownTask$default(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;ZZJILjava/lang/Object;)Z
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_11

    const-wide/16 p3, 0x9c4

    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->postCountdownTask(ZZJ)Z

    move-result p0

    return p0
.end method

.method private final showBarWhenEnterGame()V
    .registers 6

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isLandscape()Z

    move-result v0

    const-string v1, "showBarWhenEnterGame(), isLandscape="

    const-string v2, ", retry="

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mRetryShowBar:Z

    const-string v3, "LMistouchSwipeSideInterceptor"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1e
    const/4 v2, 0x0

    const-wide/16 v3, 0x1388

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->postCountdownTask(ZZJ)Z

    :cond_24
    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mRetryShowBar:Z

    return-void
.end method


# virtual methods
.method public destory()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "LMistouchSwipeSideInterceptor"

    const-string v2, "destory()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->setChangedAction(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->setChangedAction(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDisplay:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method public forceShowToast()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result v0

    const-string v1, "forceShowToast(), inGameMode="

    const-string v2, "LMistouchSwipeSideInterceptor"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/mistouch/MistouchToast;->setNeedRecordShowTimes(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->show()V

    :cond_22
    return-void
.end method

.method public interceptDownEvent(FF)Z
    .registers 14

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isAllow()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->isAutoRotateOn()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->updateValue()V

    :cond_29
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iput p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownX:F

    iput p2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownY:F

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isBarRealShowing()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->initResponseRegion()V

    :cond_41
    invoke-static {p1, p2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->containPoint(FF)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptDownEvent(), barShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hasSwipe="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getHasSwipeOnce()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", touchIn="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", responseRectf="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getResponseRectf()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string v4, "LMistouchSwipeSideInterceptor"

    invoke-static {p2, v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz v1, :cond_aa

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getResponseRectf()Landroid/graphics/RectF;

    move-result-object p2

    if-nez p2, :cond_98

    move p2, p1

    goto :goto_99

    :cond_98
    move p2, v3

    :goto_99
    iput-boolean p2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mIsTouchIn:Z

    if-nez v3, :cond_a7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->postCountdownTask$default(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;ZZJILjava/lang/Object;)Z

    :cond_a7
    xor-int/lit8 p0, v3, 0x1

    return p0

    :cond_aa
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/mistouch/MistouchToast;->setNeedRecordShowTimes(Z)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getHasSwipeOnce()Z

    move-result p0

    if-nez p0, :cond_b8

    return p1

    :cond_b8
    return v2
.end method

.method public interceptMoveEvent()Z
    .registers 15

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getHasSwipeOnce()Z

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isBarRealShowing()Z

    move-result v0

    iget v3, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownX:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    const/4 v6, 0x1

    if-nez v5, :cond_1c

    move v5, v6

    goto :goto_1d

    :cond_1c
    move v5, v2

    :goto_1d
    if-nez v5, :cond_54

    iget v5, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownY:F

    cmpg-float v7, v5, v4

    if-nez v7, :cond_27

    move v7, v6

    goto :goto_28

    :cond_27
    move v7, v2

    :goto_28
    if-nez v7, :cond_54

    invoke-static {v3, v5}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->containPoint(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mIsTouchIn:Z

    iput v4, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownX:F

    iput v4, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownY:F

    const-string v3, "interceptMoveEvent(), showing="

    const-string v4, ", isTouchIn="

    invoke-static {v3, v0, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mIsTouchIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasSwipe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "LMistouchSwipeSideInterceptor"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    if-eqz v0, :cond_5c

    iget-boolean p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mIsTouchIn:Z

    if-nez p0, :cond_69

    move v2, v6

    goto :goto_69

    :cond_5c
    if-nez v1, :cond_69

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->postCountdownTask$default(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;ZZJILjava/lang/Object;)Z

    move-result v2

    :cond_69
    :goto_69
    return v2
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 5

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x2

    if-nez p1, :cond_10

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    sget-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    iget p3, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p1, p3}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setRotation(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisplayInfoChanged(), rotation="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", retryShowBar="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mRetryShowBar:Z

    const-string v0, "LMistouchSwipeSideInterceptor"

    invoke-static {p3, p2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mRetryShowBar:Z

    if-eqz p2, :cond_3a

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->showBarWhenEnterGame()V

    goto :goto_60

    :cond_3a
    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isAllow()Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->updateValue()V

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result p1

    if-eqz p1, :cond_60

    const-string p1, "onDisplayInfoChanged(), in land game, show bar."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->showBarWhenEnterGame()V

    goto :goto_60

    :cond_5a
    const/4 p0, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p0, p2, p3}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->resetResponseRegion$default(Lcom/oplus/quickstep/mistouch/MistouchTracker;ZILjava/lang/Object;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_c

    :cond_4
    sget-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->increaseTimes()V

    return-void
.end method

.method public reset(Z)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mRetryShowBar:Z

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getHasSwipeOnce()Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    :cond_c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "reset(). removeResetTasks="

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "LMistouchSwipeSideInterceptor"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setHasSwipeOnce(Z)V

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mIsTouchIn:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownX:F

    iput p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mDownY:F

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isAllow()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_34
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchToast;->cancel()V

    iget-wide v2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTaskDelay:J

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    const/4 v2, 0x1

    if-nez p1, :cond_46

    move p1, v2

    goto :goto_47

    :cond_46
    move p1, v0

    :goto_47
    invoke-virtual {v1, v0, p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->changeBarVisiablity(ZZ)V

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->resetResponseRegion(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->mResetTaskDelay:J

    return-void
.end method
