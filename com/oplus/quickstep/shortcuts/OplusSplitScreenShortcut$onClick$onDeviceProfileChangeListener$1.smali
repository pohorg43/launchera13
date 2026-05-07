.class public final Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $onLayoutChangeListener:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;

.field public final synthetic this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    iput-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;->$onLayoutChangeListener:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    const-string v0, "dp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {v0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;->$onLayoutChangeListener:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;

    const-string v0, "addOnLayoutChangeListener: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreen"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;->this$0:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-static {p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->access$getTaskContainer$p(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onDeviceProfileChangeListener$1;->$onLayoutChangeListener:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$onClick$onLayoutChangeListener$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_34
    return-void
.end method
