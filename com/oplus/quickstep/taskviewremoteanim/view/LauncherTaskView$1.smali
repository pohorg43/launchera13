.class public final Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Landroid/hardware/display/VirtualDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$getTaskViewRect$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setTaskViewTouchable(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$getTaskViewRect$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$setTaskViewWidth$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;I)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$getTaskViewRect$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$setTaskViewHeight$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;I)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$getTaskViewWidth$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-static {v2}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$getTaskViewHeight$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->access$resize(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;II)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
