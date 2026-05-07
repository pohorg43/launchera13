.class public Lcom/oplus/quickstep/dock/DockIconView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;
.implements Lcom/android/launcher3/util/ViewPool$Reusable;


# static fields
.field public static final CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final DOCK_ICON_EXIT:Landroid/view/animation/Interpolator;

.field public static final DOCK_VIEW_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/dock/DockIconView;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDGE_SCALE_DOWN_FACTOR:F = 0.13f

.field public static final MAX_PAGE_SCRIM_ALPHA:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mCurveInterpolation:F

.field private mCurveScale:F

.field private mDimAlpha:F

.field private final mDimColor:I

.field private mFeedbackEffect:Lcom/oplus/quickstep/dock/DockFeedbackEffect;

.field private mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

.field private mIconViewVisible:Z

.field private mInClearAnimation:Z

.field private mIsLog:Z

.field private mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private mTask:Lcom/android/quickstep/util/GroupTask;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/oplus/quickstep/dock/DockIconView;

    const-string v0, "DockIconView"

    sput-object v0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3f666666  # 0.9f

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockIconView;->DOCK_ICON_EXIT:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/oplus/quickstep/dock/DockIconView$1;

    const-string v1, "dockIconScale"

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dock/DockIconView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockIconView;->DOCK_VIEW_SCALE:Landroid/util/FloatProperty;

    sget-object v0, Lcom/oplus/quickstep/dock/b;->a:Lcom/oplus/quickstep/dock/b;

    sput-object v0, Lcom/oplus/quickstep/dock/DockIconView;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/dock/DockIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/dock/DockIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveInterpolation:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mInClearAnimation:Z

    iput v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimAlpha:F

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p3, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {p3, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimColor:I

    new-instance p1, Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-direct {p1, p0, p2}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;-><init>(Landroid/view/View;Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mFeedbackEffect:Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dock/DockIconView;Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->lambda$onIconListVisibilityChanged$4(Lcom/android/quickstep/util/GroupTask;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->lambda$launchGroupedTask$3(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/dock/DockIconView;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->lambda$onIconListVisibilityChanged$5(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private cancelPendingLoadTasks()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    :cond_a
    return-void
.end method

.method public static synthetic d(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->lambda$launchTask$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(F)F
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockIconView;->lambda$static$0(F)F

    move-result p0

    return p0
.end method

.method public static getCurveScaleForCurveInterpolation(F)F
    .registers 2

    const v0, 0x3e051eb8  # 0.13f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private getTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_f

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic lambda$launchGroupedTask$3(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method private synthetic lambda$launchTask$2(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->notifyTaskLaunchFailed()V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->clearTaskRecorderIfNeeded(I)V

    :cond_24
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->launchTask()V

    return-void
.end method

.method private synthetic lambda$onIconListVisibilityChanged$4(Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->splitIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onIconListVisibilityChanged$5(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic lambda$static$0(F)F
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method private launchGroupedTask(Lcom/android/quickstep/views/RecentsView;)Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-nez v0, :cond_19

    return v1

    :cond_19
    check-cast p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/views/d;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/quickstep/views/d;-><init>(Lcom/android/launcher3/util/RunnableList;I)V

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    return v4
.end method

.method private launchTask()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getRecentView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object p0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string v0, "onClick : all task dismiss anim is running , so return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->launchGroupedTask(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object p0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string v0, "onClick : launch grouped task"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3d

    sget-object p0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string v0, "QuickStep"

    const-string v1, "aunchTask resultCallbackHandler = null"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromDock()V

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    new-instance v4, Lcom/oplus/quickstep/dock/c;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/oplus/quickstep/dock/c;-><init>(Lcom/oplus/quickstep/dock/DockIconView;I)V

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private refresh(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .registers 6

    if-eqz p1, :cond_89

    invoke-virtual {p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getDockIconSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_38

    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_38
    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sget-object v1, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh: scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",bm.width="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",icon.width="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockView;->getDockIconSize()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",measureWidth="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_89
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_91
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIsLog:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->updatePaintFilter()V

    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->refresh(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->refresh(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateLeftTopTask(Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void

    :cond_6
    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method private updatePaintFilter()V
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveInterpolation:F

    const v1, 0x3e4ccccd  # 0.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimColor:I

    iget v3, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimAlpha:F

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3a

    :cond_2a
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3a
    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIsLog:Z

    if-eqz v1, :cond_70

    sget-object v1, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string v2, "updatePaintFilter: mBitmapShader = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mul="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",alpha="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",mDimAlpha="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimAlpha:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->cancelPendingLoadTasks()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->updateLeftTopTask(Lcom/android/quickstep/util/GroupTask;)V

    return-void
.end method

.method public getDimAlpha()F
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimAlpha:F

    return p0
.end method

.method public getDockView()Lcom/oplus/quickstep/dock/DockView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dock/DockView;

    return-object p0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public notifyClearAnimationState(Z)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClearAnimationState: running = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mInClearAnimation:Z

    if-nez p1, :cond_25

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->resetCurveScale()V

    :cond_25
    return-void
.end method

.method public notifyTaskLaunchFailed()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    const-string v1, "Failed to launch task"

    if-eqz v0, :cond_2a

    const-string v0, " (task="

    invoke-static {v1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2a
    sget-object v0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyTaskLaunchFailed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1200af

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oplus/quickstep/dock/DockIconView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onIconListVisibilityChanged(Z)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->setIconViewVisible(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    if-nez v0, :cond_11

    sget-object p0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string p1, "QuickStep"

    const-string v0, "updateTaskIcon: mTask == null"

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->cancelPendingLoadTasks()V

    if-eqz p1, :cond_a6

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p1

    sget-object v0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string v1, "onIconListVisibilityChanged: mTask = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_97

    instance-of v1, p1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    if-eqz v1, :cond_97

    check-cast p1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    new-instance v1, Lcom/oplus/quickstep/dock/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/dock/c;-><init>(Lcom/oplus/quickstep/dock/DockIconView;I)V

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateIconInBackground(Lcom/android/quickstep/util/GroupTask;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_aa

    :cond_97
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mLeftTopTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Lcom/oplus/quickstep/dock/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/dock/c;-><init>(Lcom/oplus/quickstep/dock/DockIconView;I)V

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_aa

    :cond_a6
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_aa
    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V
    .registers 3

    iget-boolean p2, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconViewVisible:Z

    if-nez p2, :cond_5

    return-void

    :cond_5
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIsLog:Z

    sget-object p2, Lcom/oplus/quickstep/dock/DockIconView;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getLinearInterpolation()F

    move-result p1

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveInterpolation:F

    const p2, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->setDimAlpha(F)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->updatePaintFilter()V

    iget p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveInterpolation:F

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockIconView;->getCurveScaleForCurveInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->setCurveScale(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onRecycle()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->resetViewStatus()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    return-void
.end method

.method public resetCurveScale()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/oplus/quickstep/dock/DockIconView;->TAG:Ljava/lang/String;

    const-string v1, "QuickStep"

    const-string v2, "resetCurveScale()"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveScale:F

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->setCurveScale(F)V

    return-void
.end method

.method public resetViewStatus()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_22

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    if-ne v0, v1, :cond_22

    goto :goto_23

    :cond_1d
    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/dock/DockIconView;->resetViewStatus(Z)V

    return-void
.end method

.method public resetViewStatus(Z)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->setCurveScale(F)V

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    move p1, v0

    goto :goto_10

    :cond_d
    const p1, -0x3a448000  # -6000.0f

    :goto_10
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->setDimAlpha(F)V

    return-void
.end method

.method public setCurveScale(F)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mCurveScale:F

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mInClearAnimation:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setDimAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimAlpha:F

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mFeedbackEffect:Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->setDockScrimAlpha(F)V

    return-void
.end method

.method public setIconViewVisible(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconViewVisible:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockIconView;->mIconViewVisible:Z

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mDimAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbind()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockIconView;->cancelPendingLoadTasks()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockIconView;->mTask:Lcom/android/quickstep/util/GroupTask;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->updateLeftTopTask(Lcom/android/quickstep/util/GroupTask;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockIconView;->refresh(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    return-void
.end method
