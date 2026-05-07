.class public Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;,
        Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    }
.end annotation


# static fields
.field private static final DRAG_ANIM_SURFACE_CORNER_RADIUS:F = 80.0f

.field private static final DRAG_ANIM_SURFACE_LOCATION_SCALE_DURATION:J = 0xfaL

.field private static final DROP_ANIM_SURFACE_RECT_SCALE_DURATION:J = 0x1b0L

.field private static final DROP_PANEL_IN:Landroid/view/animation/Interpolator;

.field private static final DROP_WAIT_TIMEOUT_MS:J = 0x3e8L

.field private static final FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

.field private static final MSG_DELAY_RELEASE_SURFACE_DURATION:J = 0x64L

.field private static final MSG_RELEASE_SURFACE:I = 0x1

.field public static final MULTI_WINDOW_DIM_NIGHT_CORLOR:I = -0xf0f8f6

.field public static final MULTI_WINDOW_DIM_NORMAL_CORLOR:I = -0xf070b

.field private static final PANEL_STATUS_ENLARGE:I = 0x1

.field private static final PANEL_STATUS_IDLE:I = -0x1

.field private static final PANEL_STATUS_SMALL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SplitScreenDragIconPanel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

.field private mDragScaleAnimator:Landroid/animation/ValueAnimator;

.field private mDragSurface:Landroid/view/SurfaceControl;

.field private mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

.field private mDropSplitAnimator:Landroid/animation/ValueAnimator;

.field private mDropTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHasLargeScreenFeature:Z

.field private mIconHeight:I

.field private mIconThumbOffsetX:I

.field private mIconThumbOffsetY:I

.field private mIconWidth:I

.field private mIsDragToSplitMiniZed:Z

.field private mIsDragging:Z

.field public mLandscapeMiniVisiableSize:I

.field private mPanelStatus:I

.field private mPanelSurface:Landroid/view/SurfaceControl;

.field public mPortraitMiniVisiableSize:I

.field private mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

.field private mScreenPixelHeight:I

.field private mScreenPixelWidth:I

.field private mSmartSideBarRegion:Landroid/graphics/Rect;

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

.field private mSplitStatusListener:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

.field public mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->DROP_PANEL_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHasLargeScreenFeature:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/splitscreen/SplitScreenDragUtils;

    invoke-direct {v2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;-><init>()V

    iput-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPortraitMiniVisiableSize:I

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mLandscapeMiniVisiableSize:I

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-direct {v0, p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitStatusListener:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHasLargeScreenFeature:Z

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_portrait_visible_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPortraitMiniVisiableSize:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_landscape_visible_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mLandscapeMiniVisiableSize:I

    new-instance p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;

    invoke-direct {p1, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitStatusListener:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

    invoke-virtual {p1, p2}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->addListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)V

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p2, "SplitScreenDragIconPanel()  feature:"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHasLargeScreenFeature:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    return p0
.end method

.method public static synthetic access$1202(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->showPanelSurface(Z)V

    return-void
.end method

.method public static synthetic access$1702(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startDropAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->findDragRunningTask(Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private cancelDropAnimatorIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    :cond_12
    return-void
.end method

.method private cancelScalePanelAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    :cond_12
    return-void
.end method

.method private createDragIconPanelSurface()Z
    .registers 8

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v0, "panel surface of drag surface"

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "View.startDragAndDrop"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    iget v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/wm/shell/R$color;->split_drag_icon_panel_color_dark:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_72

    :cond_66
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/wm/shell/R$color;->split_drag_icon_panel_color_normal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_72
    const/4 v3, 0x3

    new-array v3, v3, [F

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000  # 255.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    aput v1, v3, v2

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x42a00000  # 80.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v1, "createDragIconPanelSurface   ,mIconThumbOffsetX="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIconThumbOffsetY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",icon.width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",icon.height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private createDropAnimator(Landroid/view/DragEvent;I)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelScalePanelAnimator()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelDropAnimatorIfNeed()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->updateMinimizedVisibleSize()V

    sget v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    new-instance v8, Lcom/oplus/splitscreen/DropAnimatorInfo;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->getPanelWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->getPanelHeight()I

    move-result v3

    invoke-direct {v8, v0, p1, v2, v3}, Lcom/oplus/splitscreen/DropAnimatorInfo;-><init>(IIII)V

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    iget v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    iget v6, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    move-object v3, v8

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getDropTargetPosition(Lcom/oplus/splitscreen/DropAnimatorInfo;IIII)Lcom/oplus/splitscreen/DropAnimatorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    iget v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetX:I

    iget v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconThumbOffsetY:I

    invoke-virtual {v3, v8, v2, v4, v5}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->resetRect(Lcom/oplus/splitscreen/DropAnimatorInfo;Lcom/oplus/splitscreen/DropAnimatorInfo;II)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_a0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1b0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->DROP_PANEL_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropAnimatorListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v3, "createDropAnimator  x="

    const-string v4, ",y="

    const-string v5, ",targetDirection"

    invoke-static {v3, v0, v4, p1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",startPos{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "},endPos{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "},miniSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    nop

    :array_a0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private findDragRunningTask(Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getPackName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getUserId()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    if-eqz v1, :cond_78

    if-ltz v2, :cond_78

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->getRunningTasks()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_78

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    :goto_28
    if-ltz v3, :cond_74

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    sget-object v6, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findDragRunningTask ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_71

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_71

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    if-ne v2, v7, :cond_71

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v6, :cond_6c

    move-object v0, v5

    goto :goto_74

    :cond_6c
    if-nez v4, :cond_71

    if-eqz v6, :cond_71

    move-object v4, v5

    :cond_71
    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_74
    :goto_74
    if-eqz v0, :cond_77

    goto :goto_78

    :cond_77
    move-object v0, v4

    :cond_78
    :goto_78
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDragRunningTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRunningTasks()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method private handleDragDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    if-nez v0, :cond_a

    goto :goto_50

    :cond_a
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop  was in  isInSplit"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1a
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result v0

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->convertPosToDirection(ZI)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2f

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop  direction was in unknown"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop   drop in sideBar "

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3d
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragMirageBgTask()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragDrop isDragMirageTask,no drop animator"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4b
    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->createDropAnimator(Landroid/view/DragEvent;I)Z

    move-result p0

    return p0

    :cond_50
    :goto_50
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p2, "handleDragDrop no need animator,isDragging="

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",dragToSplitMiniZed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private handleDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mCurrentY:F

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    if-nez v1, :cond_14

    return v0

    :cond_14
    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result p1

    if-nez p1, :cond_25

    if-eqz p2, :cond_1f

    if-nez p3, :cond_1f

    goto :goto_25

    :cond_1f
    if-eqz p3, :cond_29

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(Z)Z

    goto :goto_29

    :cond_25
    :goto_25
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(Z)Z

    :cond_29
    :goto_29
    return v0
.end method

.method private handleDragStart(Landroid/view/DragEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleDragStart() need to cancel and reset"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelScalePanelAnimator()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelDropAnimatorIfNeed()V

    const-string v0, "handleDragStart"

    invoke-direct {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;)Z

    :cond_16
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    invoke-virtual {v1, p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isValidDragMimetype(Landroid/view/DragEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    invoke-virtual {v2, p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->parseSmartSideBarRegion(Landroid/view/DragEvent;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    move v4, v3

    :goto_39
    if-eqz v1, :cond_b1

    if-eqz v4, :cond_b1

    iget-object v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    if-nez v5, :cond_42

    goto :goto_b1

    :cond_42
    iput-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->parseDragEvent(Landroid/view/DragEvent;)Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_53

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    goto :goto_54

    :cond_53
    move-object p1, v0

    :goto_54
    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_5a
    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_a9

    :cond_63
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v0, "handleDragStart() sidBarRegion"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->createDragIconPanelSurface()Z

    move-result p0

    return p0

    :cond_a9
    :goto_a9
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string p1, "handleDragStart()  screenRect no Valid."

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b1
    :goto_b1
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v0, "handleDragStart()  no Valid hasType="

    const-string v2, ",hasRect="

    const-string v5, ",surface="

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private parseDragEvent(Landroid/view/DragEvent;)Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    :try_start_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    goto :goto_b

    :catch_8
    move-exception p0

    goto :goto_58

    :cond_a
    move-object v1, v0

    :goto_b
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_18

    :cond_17
    move-object v3, v0

    :goto_18
    if-eqz p1, :cond_6e

    if-eqz v1, :cond_6e

    if-nez v3, :cond_1f

    goto :goto_6e

    :cond_1f
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    const-string v4, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    if-eqz v1, :cond_57

    if-nez v3, :cond_34

    goto :goto_57

    :cond_34
    invoke-virtual {v3, v2}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_4c

    :cond_4b
    move-object v2, v0

    :goto_4c
    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->parseDragFlag(Landroid/view/DragEvent;)I

    move-result p1

    new-instance v3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_55} :catch_8

    move-object v0, v3

    goto :goto_6e

    :cond_57
    :goto_57
    return-object v0

    :goto_58
    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDragEvent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method private releasePanelSurface(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePanelSurface   -E reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private releaseSurface(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseSurface   -E reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    :cond_26
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_3a

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragSurface:Landroid/view/SurfaceControl;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method private releaseWhenDrop(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    if-nez p1, :cond_f

    const-string p1, "releaseWhenDrop"

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;)Z

    :cond_f
    return-void
.end method

.method private showPanelSurface(Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_14

    :cond_e
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_14
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_19
    return-void
.end method

.method private startDropAnimation(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDropAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDropSplitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_25
    return-void
.end method

.method private startScalePanel(Z)V
    .registers 9

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->cancelScalePanelAnimator()V

    const/4 v0, 0x2

    if-eqz p1, :cond_12

    new-array v0, v0, [F

    fill-array-data v0, :array_84

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1d

    :cond_12
    new-array v0, v0, [F

    fill-array-data v0, :array_8c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    :goto_1d
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSplitScreenDragUtils:Lcom/oplus/splitscreen/SplitScreenDragUtils;

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelWidth:I

    iget v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScreenPixelHeight:I

    iget v5, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconWidth:I

    iget v6, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIconHeight:I

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->getPanelRect(IIZII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v2, v1, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->init(Landroid/graphics/Rect;Z)V

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->FAST_OUT_FAST_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mScalePaneListener:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    sget-object p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScalePanel  isEnlarge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",panelOffsetRect="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",isLandScreen="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_84
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    return-object p0
.end method

.method public handleHidePanel(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->getTagId()I

    move-result v0

    if-ne v0, v1, :cond_d

    return v2

    :cond_d
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    iget p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    if-eq p1, v1, :cond_2e

    iput v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v0}, Lcom/oplus/splitscreen/SplitScreenVibrator;->vibrateEffectId(Landroid/content/Context;IZ)V

    invoke-direct {p0, v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startScalePanel(Z)V

    goto :goto_2d

    :cond_1f
    iget p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    if-eq p1, v0, :cond_2e

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mPanelStatus:I

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v0}, Lcom/oplus/splitscreen/SplitScreenVibrator;->vibrateEffectId(Landroid/content/Context;IZ)V

    invoke-direct {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startScalePanel(Z)V

    :goto_2d
    move v2, v0

    :cond_2e
    return v2
.end method

.method public isDragMirageBgTask()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isMirageBackgroundTask:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isInSideBarRegion(Landroid/view/DragEvent;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_22

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v3, "isInSideBarRegion() res="

    const-string v4, ",region="

    invoke-static {v3, v0, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",x="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",y="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSideBarDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    return p0
.end method

.method public notifyDragActionEvent(Landroid/view/DragEvent;IZ)V
    .registers 9

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    :try_start_c
    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleDragStart(Landroid/view/DragEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    goto :goto_65

    :cond_13
    iget-boolean v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_4e

    if-eqz v3, :cond_65

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3b

    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleDragDrop(Landroid/view/DragEvent;I)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_20

    move v1, p1

    goto :goto_37

    :catch_20
    move-exception p1

    :try_start_21
    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDragActionEvent() drop ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    invoke-direct {p0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseWhenDrop(Z)V

    goto :goto_65

    :cond_3b
    const/4 p1, 0x6

    if-ne v0, p1, :cond_42

    invoke-virtual {p0, v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleHidePanel(Z)Z

    goto :goto_65

    :cond_42
    const/4 p1, 0x4

    if-ne v0, p1, :cond_65

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mDragItemInfo:Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    if-nez p3, :cond_65

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseWhenEndNoDrop()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_4e

    goto :goto_65

    :catch_4e
    move-exception p1

    sget-object v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDragActionEvent() ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    const/4 p1, 0x2

    if-eq v0, p1, :cond_a0

    sget-object p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->TAG:Ljava/lang/String;

    const-string v2, "notifyDragActionEvent() "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mIsDragging="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",position="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",dropHandled="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",hasDropped="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->handleDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;)Z

    return-void
.end method

.method public releaseWhenEndNoDrop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mSmartSideBarRegion:Landroid/graphics/Rect;

    const-string v0, "releaseWhenEndNoDrop"

    invoke-direct {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releasePanelSurface(Ljava/lang/String;)Z

    return-void
.end method

.method public setStatusDragToSplitMiniZed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mIsDragToSplitMiniZed:Z

    return-void
.end method
