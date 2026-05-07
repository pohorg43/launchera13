.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskRemoved(I)V
    .registers 5

    const-string v0, "onTaskRemoved: "

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->isTaskListenerRegistered()Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3b

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v1

    if-ne p1, v1, :cond_3b

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v1

    if-ne v1, p1, :cond_36

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    :cond_36
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->releaseTaskView()V

    :cond_3b
    return-void
.end method
