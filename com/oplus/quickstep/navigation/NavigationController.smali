.class public final Lcom/oplus/quickstep/navigation/NavigationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;,
        Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;,
        Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;,
        Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;
    }
.end annotation


# static fields
.field private static final GESTURE_ORIGIN_CLONE_PHONE:I = 0x1

.field public static final INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "NavigationController"


# instance fields
.field private final mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

.field private final mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

.field private final mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

.field private mGestureBottomArea:I

.field private final mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

.field private mIsMistouchPreventionActive:Z

.field private mIsSwipeUpGestureWithKeysModeSideBack:Z

.field private final mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

.field private mMistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

.field private mModeChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;

.field private final mNavStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

.field private final mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

.field private final mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

.field private final mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

.field private final mPauseAppListUpdateListener:Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

.field private final mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

.field private final mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

.field private final mSwipeTouchRegion:Landroid/graphics/RectF;

.field private final mSwipeUpGestureKeysModeListener:Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

.field private final mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

.field private final mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

.field private mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

.field private final mVirtualKeyCombinationTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

.field private final mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

.field private swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeTouchRegion:Landroid/graphics/RectF;

    new-instance v0, Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/NavStateObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/DisableGestureObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeListener:Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateListener:Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

    return-void
.end method

.method public static final synthetic access$notifyMistouchStateChange(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyMistouchStateChange()V

    return-void
.end method

.method public static final synthetic access$updateMistouchState(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateMistouchState()V

    return-void
.end method

.method public static final synthetic access$updateTouchBounds(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchBounds()V

    return-void
.end method

.method private final calculatePixelSizeByDp(Landroid/content/res/Resources;I)I
    .registers 6

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float v0, p2

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculatePixelSizeByDp: density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", rDensity = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", value = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "NavigationController"

    invoke-static {v1, v0, p0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v0
.end method

.method private final notifyMistouchStateChange()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;->onMistouchStateChange()V

    :goto_8
    return-void
.end method

.method private final notifyTouchBoundsChange()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;->onTouchBoundsChange()V

    :goto_8
    return-void
.end method

.method private final updateMistouchState()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_21

    :cond_f
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    if-ne v0, v3, :cond_21

    goto :goto_20

    :cond_18
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    if-ne v0, v3, :cond_21

    :goto_20
    move v2, v3

    :cond_21
    :goto_21
    iput-boolean v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsMistouchPreventionActive:Z

    return-void
.end method

.method private final updateTouchBounds()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-boolean v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsSwipeUpGestureWithKeysModeSideBack:Z

    if-eq v1, v0, :cond_1d

    iput-boolean v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsSwipeUpGestureWithKeysModeSideBack:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyTouchBoundsChange()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final addOplusSystemDeviceStateChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public final calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 7

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "NavigationController"

    const/4 v4, 0x2

    if-eqz v1, :cond_40

    const/4 v5, 0x1

    if-eq v1, v5, :cond_40

    if-eq v1, v4, :cond_19

    if-eq v1, v2, :cond_16

    goto :goto_66

    :cond_16
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    goto :goto_66

    :cond_19
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " calculateSpecificNavigationMode: swipeUpGestureKeysMode = "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    if-eq v1, v5, :cond_3d

    if-eq v1, v4, :cond_3d

    goto :goto_66

    :cond_3d
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    goto :goto_66

    :cond_40
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, " calculateSpecificNavigationMode: virtualKeyCombinationType = "

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    if-eq v1, v4, :cond_64

    if-eq v1, v2, :cond_64

    goto :goto_66

    :cond_64
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    :goto_66
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " calculateSpecificNavigationMode: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNavStateObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", virtualKeyCombinationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", swipeUpGestureKeysMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    return-object v0
.end method

.method public final changeGestureBottomArea(I)V
    .registers 5

    const-string v0, "changeGestureBottomArea: newSize = "

    const-string v1, ", mGestureBottomArea = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    const-string v2, "NavigationController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    if-eq p1, v0, :cond_25

    iput p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeBottomGestureAreaRatio(F)V

    :cond_25
    return-void
.end method

.method public final getColorGestureAreaSize(Landroid/content/Context;)I
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b000c

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculatePixelSizeByDp(Landroid/content/res/Resources;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getColorGestureAreaSize() bottomGestureAreaSize="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->changeGestureBottomArea(I)V

    return p1
.end method

.method public final getGestureAreaSizeInMistouch(Landroid/content/res/Resources;I)F
    .registers 6

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b000c

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculatePixelSizeByDp(Landroid/content/res/Resources;I)I

    move-result v0

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v1, p2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setRotation(I)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_17

    const/4 v1, 0x3

    if-ne p2, v1, :cond_33

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result v1

    if-eqz v1, :cond_33

    const v1, 0x7f0b000d

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->calculatePixelSizeByDp(Landroid/content/res/Resources;I)I

    move-result p1

    goto :goto_34

    :cond_33
    move p1, v0

    :goto_34
    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    if-eq p1, v1, :cond_3b

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->changeGestureBottomArea(I)V

    :cond_3b
    const-string p0, "getGestureAreaSizeInMistouch(), rotation="

    const-string v1, ", newSize="

    const-string v2, ", size="

    invoke-static {p0, p2, v1, p1, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "NavigationController"

    invoke-static {p0, v0, p2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    int-to-float p0, p1

    return p0
.end method

.method public final getSwipeSlideModeChangedFun()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSwipeTouchRegion()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeTouchRegion:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSystemDeviceState()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeListener:Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateListener:Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchBounds()V

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateMistouchState()V

    return-void
.end method

.method public final initBeforeRegistered(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public final isBracketSpaceSwitchOpen()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;->isBracketSpaceSwitchOpen()Z

    move-result p0

    return p0
.end method

.method public final isDeviceInHalfOn()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;->isInHalfOpen()Z

    move-result p0

    return p0
.end method

.method public final isGestureDisabled()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/DisableGestureObserver;->isGestureDisabled()Z

    move-result p0

    return p0
.end method

.method public final isGestureMistouchPreventionActive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsMistouchPreventionActive:Z

    return p0
.end method

.method public final isGestureNavbarHidden()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;->isNavbarHidden()Z

    move-result p0

    return p0
.end method

.method public final isInBracketSpaceMode()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;->isInBracketSpaceMode()Z

    move-result p0

    return p0
.end method

.method public final isOneHandedModeEnable()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->isIsOneHandedModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSwipeSideGesture()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isSwipeUpGesture()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isSwipeUpGestureWithKeysModeSideBack()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsSwipeUpGestureWithKeysModeSideBack:Z

    return p0
.end method

.method public final notifyModeChange()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mModeChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;->onModeChange(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    :goto_c
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_11

    goto :goto_1c

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    return-void
.end method

.method public final reInitNavState(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public final releaseTouchBoundChangeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

    return-void
.end method

.method public final removeOplusSystemDeviceStateChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->removeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public final setMistouchStateChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    return-void
.end method

.method public final setModeChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mModeChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    return-object p0
.end method

.method public final setSwipeSlideModeChangedFun(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSwipeTouchRegion(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeTouchRegion:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setTouchBoundsChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

    return-void
.end method
