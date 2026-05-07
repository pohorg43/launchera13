.class final Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/mistouch/MistouchTracker;->init(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $this_apply:Lcom/oplus/quickstep/navigation/NavigationController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;->$this_apply:Lcom/oplus/quickstep/navigation/NavigationController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;->invoke(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;->$this_apply:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;->$this_apply:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGesture()Z

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_23

    if-nez v2, :cond_21

    if-nez v0, :cond_21

    goto :goto_23

    :cond_21
    move v5, v3

    goto :goto_24

    :cond_23
    :goto_23
    move v5, v4

    :goto_24
    const-string v6, "swipeSlideModeChanged(), isSwipeSlide="

    const-string v7, ", isSwipeUp="

    const-string v8, ", isMistouchActive="

    invoke-static {v6, p1, v7, v1, v8}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isGestureNavbarHidden = "

    const-string v8, ", shouldRegister = "

    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, "QuickStep"

    const-string v7, "LMistouchTracker"

    invoke-static {v6, v5, v2, v7}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-eqz p1, :cond_49

    sget-object v6, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v6}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->update(ZI)V

    goto :goto_52

    :cond_49
    sget-object v5, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v5}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->update(ZI)V

    :goto_52
    sget-object v2, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    move-result-object v5

    if-eqz p1, :cond_5e

    if-eqz v0, :cond_5e

    move v6, v4

    goto :goto_5f

    :cond_5e
    move v6, v3

    :goto_5f
    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;->update(Z)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object v5

    if-eqz p1, :cond_6b

    if-eqz v0, :cond_6b

    move v3, v4

    :cond_6b
    invoke-virtual {v5, v3}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->update(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;->$this_apply:Lcom/oplus/quickstep/navigation/NavigationController;

    if-nez p1, :cond_77

    if-eqz v1, :cond_75

    goto :goto_77

    :cond_75
    const/4 p1, 0x0

    goto :goto_7b

    :cond_77
    :goto_77
    invoke-virtual {v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getMistouchStateChangeListener()Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    move-result-object p1

    :goto_7b
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->setMistouchStateChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;)V

    :try_start_7e
    invoke-virtual {v2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_97

    :catch_82
    move-exception p0

    sget-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    sget-object p1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->access$setMInterceptor$p(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;)V

    const-string p1, "getInterceptor(), e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    return-void
.end method
