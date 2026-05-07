.class public final Lcom/oplus/quickstep/mistouch/MistouchTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FROM_MISTOUCH_STATE_CHANGED:I = 0x2

.field private static final FROM_SERVICE:I = 0x1

.field private static final FROM_SLIDE_MODE_STATE_CHANGED:I = 0x3

.field public static final INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

.field private static final RESPONSE_RANGE_LEFT:F = 0.275f

.field private static final RESPONSE_RANGE_RIGHT:F = 0.725f

.field private static final RESPONSE_RANGE_TOP:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "LMistouchTracker"

.field private static appContext:Landroid/content/Context;

.field private static final barVisibilityObserver$delegate:Ly2/e;

.field private static currentActiveTouchedRectf:Landroid/graphics/RectF;

.field private static enabled:Z

.field private static final gameModeObserver$delegate:Ly2/e;

.field private static final gestureBarHideObserver$delegate:Ly2/e;

.field private static hasSwipeOnce:Z

.field private static isAllow:Z

.field private static mBarShowingByMistouch:Z

.field private static mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private static mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

.field private static final mistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

.field private static responseRectf:Landroid/graphics/RectF;

.field private static rotation:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-direct {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    sget-object v0, Ly2/g;->c:Ly2/g;

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker$gameModeObserver$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker$gameModeObserver$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    sput-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->gameModeObserver$delegate:Ly2/e;

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker$gestureBarHideObserver$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker$gestureBarHideObserver$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    sput-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->gestureBarHideObserver$delegate:Ly2/e;

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker$barVisibilityObserver$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker$barVisibilityObserver$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->barVisibilityObserver$delegate:Ly2/e;

    new-instance v0, Lcom/oplus/quickstep/mistouch/MistouchTracker$mistouchStateChangeListener$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker$mistouchStateChangeListener$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    sget-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setMInterceptor$p(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    return-void
.end method

.method public static synthetic changeBarVisiablity$default(Lcom/oplus/quickstep/mistouch/MistouchTracker;ZZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->changeBarVisiablity(ZZ)V

    return-void
.end method

.method public static final containPoint(FF)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_9

    goto :goto_10

    :cond_9
    invoke-direct {v0, v1, p0, p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->containsEqual(Landroid/graphics/RectF;FF)Z

    move-result p0

    if-ne p0, v3, :cond_10

    move v2, v3

    :cond_10
    :goto_10
    return v2
.end method

.method private final containsEqual(Landroid/graphics/RectF;FF)Z
    .registers 10

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v4, p1

    if-gez v5, :cond_17

    move v5, v2

    goto :goto_18

    :cond_17
    move v5, v3

    :goto_18
    and-int/2addr v1, v5

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1f

    move p0, v2

    goto :goto_20

    :cond_1f
    move p0, v3

    :goto_20
    and-int/2addr p0, v1

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_27

    move p2, v2

    goto :goto_28

    :cond_27
    move p2, v3

    :goto_28
    and-int/2addr p0, p2

    cmpl-float p2, p3, v4

    if-ltz p2, :cond_2f

    move p2, v2

    goto :goto_30

    :cond_2f
    move p2, v3

    :goto_30
    and-int/2addr p0, p2

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    :goto_37
    and-int/2addr p0, v2

    return p0
.end method

.method public static final destory()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->update(ZI)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;->update(Z)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->update(Z)V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/navigation/NavigationController;->setMistouchStateChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/navigation/NavigationController;->setSwipeSlideModeChangedFun(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    invoke-interface {v0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->destory()V

    sget-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    sput-object v2, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    sput-object v2, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    sput-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init(), isSwipeSide="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isMistouchActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "LMistouchTracker"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4c

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGesture()Z

    move-result v3

    if-eqz v3, :cond_73

    :cond_4c
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz v1, :cond_64

    if-eqz v1, :cond_62

    if-nez v2, :cond_64

    if-nez p0, :cond_62

    if-nez v2, :cond_62

    goto :goto_64

    :cond_62
    const/4 p0, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    move p0, v3

    :goto_65
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->update(ZI)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getMistouchStateChangeListener()Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->setMistouchStateChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;)V

    :cond_73
    if-eqz v1, :cond_83

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;->update(Z)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->update(Z)V

    :cond_83
    new-instance p0, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker$init$1$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->setSwipeSlideModeChangedFun(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final isValid(Landroid/graphics/RectF;)Z
    .registers 3

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1b

    iget p0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1b

    iget p0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1b

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static synthetic resetResponseRegion$default(Lcom/oplus/quickstep/mistouch/MistouchTracker;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->resetResponseRegion(Z)V

    return-void
.end method


# virtual methods
.method public final changeBarVisiablity(ZZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isBarRealShowing()Z

    move-result p0

    sput-boolean p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mBarShowingByMistouch:Z

    if-ne p1, p0, :cond_a

    if-eqz p2, :cond_18

    :cond_a
    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    return-void

    :cond_19
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeMistouchBarVisiablity(ZZ)V

    return-void
.end method

.method public final getAppContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->barVisibilityObserver$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    return-object p0
.end method

.method public final getCurrentActiveTouchedRectf()Landroid/graphics/RectF;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->currentActiveTouchedRectf:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isAllow()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->gameModeObserver$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    return-object p0
.end method

.method public final getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->gestureBarHideObserver$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    return-object p0
.end method

.method public final getHasSwipeOnce()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->hasSwipeOnce:Z

    return p0
.end method

.method public final getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    instance-of v0, v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result p0

    if-nez p0, :cond_3a

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    invoke-interface {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->destory()V

    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    goto/16 :goto_e9

    :cond_3a
    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    goto/16 :goto_e9

    :cond_3e
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result p0

    if-eqz p0, :cond_63

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    invoke-interface {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->destory()V

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    if-nez p0, :cond_54

    goto :goto_59

    :cond_54
    new-instance v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;-><init>(Landroid/content/Context;)V

    :goto_59
    if-nez v1, :cond_e1

    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    goto/16 :goto_e9

    :cond_63
    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    goto/16 :goto_e9

    :cond_6b
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGesture()Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_9c

    :cond_90
    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    invoke-interface {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->destory()V

    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    goto :goto_e9

    :cond_9c
    :goto_9c
    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    instance-of v0, v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result p0

    if-nez p0, :cond_ba

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    invoke-interface {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->destory()V

    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    goto :goto_e9

    :cond_ba
    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    goto :goto_e9

    :cond_bd
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result p0

    if-eqz p0, :cond_e3

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    invoke-interface {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->destory()V

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    if-nez p0, :cond_d3

    goto :goto_d8

    :cond_d3
    new-instance v1, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;-><init>(Landroid/content/Context;)V

    :goto_d8
    if-nez v1, :cond_e1

    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    goto :goto_e9

    :cond_e1
    move-object p0, v1

    goto :goto_e9

    :cond_e3
    sget-object p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;->getINSTANCE()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    move-result-object p0

    :goto_e9
    sput-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mInterceptor:Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    return-object p0
.end method

.method public final getMistouchStateChangeListener()Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    return-object p0
.end method

.method public final getResponseRectf()Landroid/graphics/RectF;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRotation()I
    .registers 1

    sget p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->rotation:I

    return p0
.end method

.method public final initResponseRegion()V
    .registers 8

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isValid(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_e

    return-void

    :cond_e
    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->currentActiveTouchedRectf:Landroid/graphics/RectF;

    if-nez p0, :cond_13

    return-void

    :cond_13
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const v2, 0x3e8ccccd  # 0.275f

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v4, v3

    const v6, 0x3e4ccccd  # 0.2f

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    const v5, 0x3f39999a  # 0.725f

    mul-float/2addr v1, v5

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResponseRegion(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", responseRectf="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "LMistouchTracker"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isAllow()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isLandscape()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_c
    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public final isBarRealShowing()Z
    .registers 4

    sget-boolean v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mBarShowingByMistouch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    :goto_6
    move v1, v2

    goto :goto_1e

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getBarVisibilityObserver()Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1e

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;->isHide()Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_6

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final isLandscape()Z
    .registers 3

    sget p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->rotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method public final resetResponseRegion(Z)V
    .registers 4

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const-string v0, "resetResponseRegion(), responseRectf="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "LMistouchTracker"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->responseRectf:Landroid/graphics/RectF;

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    if-eqz p1, :cond_20

    if-nez p0, :cond_1c

    goto :goto_26

    :cond_1c
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->resetSwipeRegionsForce()V

    goto :goto_26

    :cond_20
    if-nez p0, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->resetSwipeRegionsNeeded()V

    :goto_26
    return-void
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->appContext:Landroid/content/Context;

    return-void
.end method

.method public final setCurrentActiveTouchedRectf(Landroid/graphics/RectF;)V
    .registers 2

    if-eqz p1, :cond_8

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    sput-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->currentActiveTouchedRectf:Landroid/graphics/RectF;

    return-void
.end method

.method public final setHasSwipeOnce(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->hasSwipeOnce:Z

    return-void
.end method

.method public final setRotation(I)V
    .registers 2

    sput p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->rotation:I

    return-void
.end method
