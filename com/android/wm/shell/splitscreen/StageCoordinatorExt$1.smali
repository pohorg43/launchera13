.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->createDividerMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSaveSplitPair()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getPackageName(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v2, v3}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getPackageName(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_43

    if-eqz v1, :cond_43

    if-eq v3, p0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :catch_43
    :cond_43
    :goto_43
    return v0
.end method

.method public canToggleDividerOrientation()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->canToggleDividerOrientation()Z

    move-result p0

    return p0
.end method

.method public supportToggleDividerOrientation()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportToggleDividerOrientation()Z

    move-result p0

    return p0
.end method
