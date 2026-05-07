.class public final Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;
.super Lcom/oplus/app/IOplusSplitScreenObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-direct {p0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;->onStateChanged$lambda-0(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)V

    return-void
.end method

.method private static final onStateChanged$lambda-0(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "isInSplitScreenMode"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "onStateChanged: isInSplitScreenMode = "

    const-string v0, "SplitScreen"

    invoke-static {p1, p2, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_26

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    new-instance v0, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v0, p2}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_26
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    return-void
.end method
