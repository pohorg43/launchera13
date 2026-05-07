.class public final Lcom/oplus/quickstep/mistouch/MistouchTracker$mistouchStateChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/mistouch/MistouchTracker;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMistouchStateChange()V
    .registers 5

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setHasSwipeOnce(Z)V

    sget-object v1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v1

    if-nez v2, :cond_22

    if-nez v1, :cond_23

    if-nez v2, :cond_23

    :cond_22
    const/4 v0, 0x1

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->update(ZI)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;->update(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->update(Z)V

    return-void
.end method
