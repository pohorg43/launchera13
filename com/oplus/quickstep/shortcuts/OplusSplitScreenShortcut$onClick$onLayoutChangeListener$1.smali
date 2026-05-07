.class public final Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $taskId:I

.field public final synthetic this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    iput p2, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    const-string p1, "removeOnLayoutChangeListener: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreen"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getTaskContainer$p(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getRecentsView$p(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    iget p3, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->$taskId:I

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/RecentsView;->clearIgnoreResetTask(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_3d

    const-string p0, "We should not go back to home when we are in multi-window mode"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_5a

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    goto :goto_78

    :cond_5a
    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_78
    return-void
.end method
