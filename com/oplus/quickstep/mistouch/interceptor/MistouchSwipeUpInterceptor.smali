.class public final Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$Companion;

.field private static final DELAY_MISTOUCH_RESET_SWIPE:J = 0x7d0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LMistouchSwipeUpInterceptor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mHandler$delegate:Ly2/e;

.field private final mResetTask:Ljava/lang/Runnable;

.field private final mToast$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly2/g;->c:Ly2/g;

    sget-object v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mHandler$delegate:Ly2/e;

    new-instance v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mToast$2;

    invoke-direct {v1, p1, p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mToast$2;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;)V

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mToast$delegate:Ly2/e;

    new-instance p1, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;)V

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mResetTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mResetTask$lambda-0(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;)V

    return-void
.end method

.method public static final synthetic access$getMHandler(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private final getMHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mHandler$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mToast$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/mistouch/MistouchToast;

    return-object p0
.end method

.method private static final mResetTask$lambda-0(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->reset$default(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->destory(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;)V

    return-void
.end method

.method public forceShowToast()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->forceShowToast(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;)V

    return-void
.end method

.method public interceptDownEvent(FF)Z
    .registers 4

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isAllow()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_a

    return p2

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->updateValue()V

    :cond_1b
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result p1

    if-nez p1, :cond_26

    return p2

    :cond_26
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getHasSwipeOnce()Z

    move-result p0

    const-string p1, "interceptDownEvent(), hasSwipe="

    const-string p2, "QuickStep"

    const-string v0, "LMistouchSwipeUpInterceptor"

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public interceptMoveEvent()Z
    .registers 7

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getHasSwipeOnce()Z

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "interceptMoveEvent(), hasSwipe="

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "LMistouchSwipeUpInterceptor"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-nez v1, :cond_47

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setHasSwipeOnce(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->show()V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mResetTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_47
    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setHasSwipeOnce(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->cancel()V

    return v2
.end method

.method public onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->onGestureEnded(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    return-void
.end method

.method public reset(Z)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isAllow()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setHasSwipeOnce(Z)V

    if-nez v1, :cond_d

    return-void

    :cond_d
    const-string v0, "QuickStep"

    const-string v1, "LMistouchSwipeUpInterceptor"

    const-string v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;->getMToast()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->cancel()V

    :cond_28
    return-void
.end method
