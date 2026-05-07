.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->interceptStartTaskOrIntentToSplit(ILandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$fillInIntent:Landroid/content/Intent;

.field public final synthetic val$intent:Landroid/app/PendingIntent;

.field public final synthetic val$isNeedToMini:Z

.field public final synthetic val$options:Landroid/os/Bundle;

.field public final synthetic val$position:I

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V
    .registers 8

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$isNeedToMini:Z

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$intent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$fillInIntent:Landroid/content/Intent;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$position:I

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$options:Landroid/os/Bundle;

    iput p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->lambda$onStageHasChildrenChanged$0(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$0(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->removeOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedEnterMinimizedSplit()V

    :cond_c
    if-eqz p3, :cond_1a

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_25

    :cond_1a
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    invoke-virtual {p0, p7, p5, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    :goto_25
    return-void
.end method


# virtual methods
.method public onStageHasChildrenChanged(Z)V
    .registers 12

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$isNeedToMini:Z

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$intent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$fillInIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$position:I

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$options:Landroid/os/Bundle;

    iget v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->val$taskId:I

    new-instance v9, Lcom/android/wm/shell/splitscreen/h1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/h1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V

    const-wide/16 v0, 0x1

    invoke-interface {p1, v9, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_33
    return-void
.end method
