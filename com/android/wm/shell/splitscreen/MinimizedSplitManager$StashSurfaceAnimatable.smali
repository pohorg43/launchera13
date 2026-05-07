.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;
.super Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StashSurfaceAnimatable"
.end annotation


# instance fields
.field private final mSurfacePosition:Landroid/graphics/Point;

.field private final mTargetSurfaceScale:F

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl;Landroid/graphics/Point;F)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;-><init>(Landroid/view/SurfaceControl;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->mSurfacePosition:Landroid/graphics/Point;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->mTargetSurfaceScale:F

    return-void
.end method


# virtual methods
.method public attachAnimLeashToParentSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachToOriginalParentSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_24
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;->mTargetSurfaceScale:F

    invoke-virtual {p1, p2, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_15
    return-void
.end method
