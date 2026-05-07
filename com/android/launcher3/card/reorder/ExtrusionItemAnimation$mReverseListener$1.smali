.class public final Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/reorder/ExtrusionItem;FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_35

    :cond_30
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-static {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->access$applySwitchStateForView(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)V

    :cond_35
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-static {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->access$getMNeedResetParentClip$p(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->access$setMNeedResetParentClip$p(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;Z)V

    :cond_43
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation$mReverseListener$1;->this$0:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    if-nez p0, :cond_6a

    goto :goto_74

    :cond_6a
    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object p0

    if-nez p0, :cond_71

    goto :goto_74

    :cond_71
    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->notifyDragVisualizeDrop()V

    :cond_74
    :goto_74
    return-void
.end method
