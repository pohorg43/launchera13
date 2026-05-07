.class public final synthetic Lcom/android/systemui/shared/rotation/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/shared/rotation/b;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_46

    :pswitch_6  #0x7
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->b(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x6
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->b(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x5
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->a(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x4
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->b(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Landroid/view/View;)V

    return-void

    :pswitch_26  #0x3
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->d(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)V

    return-void

    :pswitch_2e  #0x2
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->c(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x1
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->a(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;Landroid/view/View;)V

    return-void

    :pswitch_3e  #0x0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->d(Lcom/android/systemui/shared/rotation/RotationButtonController;Landroid/view/View;)V

    return-void

    :goto_46
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxInteractView;->c(Lcom/oplus/uxicon/ui/ui/UxInteractView;Landroid/view/View;)V

    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_36  #00000001
        :pswitch_2e  #00000002
        :pswitch_26  #00000003
        :pswitch_1e  #00000004
        :pswitch_16  #00000005
        :pswitch_e  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
