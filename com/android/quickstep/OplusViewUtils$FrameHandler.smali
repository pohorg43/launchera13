.class final Lcom/android/quickstep/OplusViewUtils$FrameHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OplusViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameHandler"
.end annotation


# instance fields
.field private final mCancelled:Ljava/util/function/BooleanSupplier;

.field private mDeferFrameCount:I

.field private final mFinishCallback:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)V
    .registers 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCancelled"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mCancelled:Ljava/util/function/BooleanSupplier;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mDeferFrameCount:I

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusViewUtils$FrameHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->onFrameDraw$lambda-0(Lcom/android/quickstep/OplusViewUtils$FrameHandler;)V

    return-void
.end method

.method private final onFrame()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mCancelled:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const-string v1, "OplusViewUtils"

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    const-string v0, "postDrawWithLog-onPostDraw: canceled so detach, mFinishCallback="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget v0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mDeferFrameCount:I

    if-lez v0, :cond_24

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mDeferFrameCount:I

    invoke-virtual {p0}, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->schedule()Z

    return-void

    :cond_24
    iget-object p0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    if-nez p0, :cond_29

    goto :goto_35

    :cond_29
    const-string v0, "postDrawWithLog-onPostDraw: execute runnable, mFinishCallback="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_35
    return-void
.end method

.method private static final onFrameDraw$lambda-0(Lcom/android/quickstep/OplusViewUtils$FrameHandler;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->onFrame()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/quickstep/l;

    invoke-direct {p2, p0}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/OplusViewUtils$FrameHandler;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final schedule()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method
