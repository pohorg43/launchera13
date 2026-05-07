.class Lcom/oplus/quickstep/dock/DockView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockView;->playDockIconEnterAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$400(Lcom/oplus/quickstep/dock/DockView;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$400(Lcom/oplus/quickstep/dock/DockView;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$400(Lcom/oplus/quickstep/dock/DockView;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockView;->access$500(Lcom/oplus/quickstep/dock/DockView;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$400(Lcom/oplus/quickstep/dock/DockView;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openGpu()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView$4;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockView;->access$400(Lcom/oplus/quickstep/dock/DockView;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    return-void
.end method
