.class public Lcom/android/wm/shell/splitscreen/SplitControlBarManager;
.super Landroid/view/WindowlessWindowManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitControlBarManager$TapListener;,
        Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;,
        Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;
    }
.end annotation


# static fields
.field private static final CONTROL_BAR_HEIGHT:I = 0x24

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControlBar:Landroid/widget/ImageButton;

.field private mControlBarBg:Landroid/widget/ImageView;

.field private mControlBarBgAnimator:Landroid/animation/AnimatorSet;

.field private mControlBarHeight:I

.field private mControlBarLeash:Landroid/view/SurfaceControl;

.field private mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

.field private mControlBarLocalBound:Landroid/graphics/Rect;

.field private final mHiddenFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mHostLeash:Landroid/view/SurfaceControl;

.field private mIsFocused:Z

.field private mRootBound:Landroid/graphics/Rect;

.field private mSplitBarVisibleForgesture:Z

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private mTapDetector:Landroid/view/GestureDetector;

.field private mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

.field private mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

.field private mUpdateDrawableScheduled:Z

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field private mYOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    const-string v0, "SplitControlBarManager"

    sput-object v0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/SurfaceSession;Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    const-class p2, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHiddenFlags:Ljava/util/EnumSet;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mSplitBarVisibleForgesture:Z

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42100000  # 36.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarHeight:I

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarHeight:I

    invoke-virtual {p3, v1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->setBarHeight(I)V

    new-instance p3, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;-><init>(Landroid/view/ViewConfiguration;Landroid/view/WindowManager;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$TapListener;

    invoke-direct {p3, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$TapListener;-><init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Lcom/android/wm/shell/splitscreen/SplitControlBarManager$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTapDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateDrawable()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private adjustControlBarYPosition(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_43

    :cond_b
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    goto :goto_38

    :cond_35
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    :goto_38
    iget p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    if-eq v0, p1, :cond_43

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    int-to-float p1, p1

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_43
    :goto_43
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->lambda$inflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->lambda$inflate$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_36

    if-eq p1, p2, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    goto :goto_46

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    if-eqz p1, :cond_46

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;->onTouchMove(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    goto :goto_46

    :cond_24
    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateControlBarBgWithAnim(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;->onTouchUp(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :cond_30
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->reset()V

    goto :goto_46

    :cond_36
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateControlBarBgWithAnim(Z)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->hideTips()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    if-eqz p1, :cond_46

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTouchState:Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;->onTouchDown(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :cond_46
    :goto_46
    return p2
.end method

.method private hideTips()V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTipsIfNeed(Z)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$inflate$0(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;->onSingleTapUp(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$inflate$1(Landroid/view/View;IIIIIIII)V
    .registers 10

    if-ne p2, p6, :cond_8

    if-ne p3, p7, :cond_8

    if-ne p4, p8, :cond_8

    if-eq p5, p9, :cond_26

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    invoke-interface {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;->onControlBarLayoutChanged(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->setTouchRegion(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->adjustControlBarYPosition(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_26
    return-void
.end method

.method private scheduleUpdateDrawable()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mUpdateDrawableScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mUpdateDrawableScheduled:Z

    invoke-static {}, Lcom/android/wm/shell/ShellMainThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/wm/shell/ShellMainThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/u;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/u;-><init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_20

    :cond_1d
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateDrawable()V

    :goto_20
    return-void
.end method

.method private setTouchRegion(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    :cond_14
    return-void
.end method

.method private updateControlBarBgWithAnim(Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBg:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    return-void

    :cond_22
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBg:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const v5, 0x3e4ccccd  # 0.2f

    if-eqz p1, :cond_37

    move v6, v5

    goto :goto_38

    :cond_37
    move v6, v1

    :goto_38
    const/4 v7, 0x0

    aput v6, v4, v7

    if-eqz p1, :cond_3e

    move v5, v1

    :cond_3e
    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBg:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    const/high16 v8, 0x3f200000  # 0.625f

    const/high16 v9, 0x3f800000  # 1.0f

    if-eqz p1, :cond_53

    move v10, v9

    goto :goto_54

    :cond_53
    move v10, v8

    :goto_54
    aput v10, v5, v7

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    move v8, v9

    :goto_5a
    aput v8, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object p1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xd9

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    const v3, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v1, v3, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBgAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateDrawable()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mUpdateDrawableScheduled:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mIsFocused:Z

    if-eqz p0, :cond_f

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_12

    :cond_f
    const p0, 0x3ecccccd  # 0.4f

    :goto_12
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method private updateVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHiddenFlags:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    if-nez p0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public addHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHiddenFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    return-void
.end method

.method public attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .registers 4

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SplitControlBar"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHostLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SplitControlBarManager#attachToParentSurface"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public getControlBarLocalBound()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getControlBarSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSplitControlBarRootBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSplitControlBarYOffset()I
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHiddenFlags:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    return p0
.end method

.method public inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHostLeash:Landroid/view/SurfaceControl;

    new-instance p2, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->split_screen_control_bar:I

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget p2, Lcom/android/wm/shell/R$id;->split_screen_control_bar:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    new-instance v0, Lcom/android/launcher3/allapps/i;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/i;-><init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    new-instance v0, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarListener:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    new-instance v0, Lcom/android/wm/shell/bubbles/g0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/g0;-><init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_57
    sget p2, Lcom/android/wm/shell/R$id;->split_screen_control_bar_bg:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateDrawable()V

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7f6

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarHeight:I

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string p3, "SplitControlBar"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p3, v0

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    const p3, 0x7ffffffd

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result p2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p3

    if-eqz p3, :cond_bf

    if-nez p2, :cond_bf

    sget-object p2, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->DEVICE_FOLD:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->addHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    :cond_bf
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mSplitBarVisibleForgesture:Z

    if-nez p2, :cond_c9

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_c9
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateVisibility(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-eq v1, p1, :cond_12

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLocalBound:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->adjustControlBarYPosition(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :cond_12
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez p1, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mRootBound:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarHeight:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    :cond_13
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHostLeash:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBar:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarBg:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHiddenFlags:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mYOffset:I

    return-void
.end method

.method public removeHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mHiddenFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->updateVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    return-void
.end method

.method public setDividerShow(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mSplitBarVisibleForgesture:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_22

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mControlBarLeash:Landroid/view/SurfaceControl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mSplitBarVisibleForgesture:Z

    if-eqz p0, :cond_1a

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_22
    return-void
.end method

.method public updateFocusIfNeed(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mIsFocused:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->mIsFocused:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->scheduleUpdateDrawable()V

    return-void
.end method
