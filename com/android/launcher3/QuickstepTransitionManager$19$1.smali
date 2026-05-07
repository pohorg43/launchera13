.class Lcom/android/launcher3/QuickstepTransitionManager$19$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager$19;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mHandled:Z

.field public final synthetic this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$19;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->mHandled:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/QuickstepTransitionManager$19$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->lambda$onDraw$0()V

    return-void
.end method

.method private synthetic lambda$onDraw$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->mHandled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->mHandled:Z

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->val$cuj:I

    invoke-static {v1, v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    new-instance v1, Lcom/android/launcher3/h0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/h0;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$19$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
