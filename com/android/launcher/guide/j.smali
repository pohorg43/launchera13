.class public final synthetic Lcom/android/launcher/guide/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/PendingCardGuide;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerRotationTips;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/guide/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/guide/j;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_46

    :pswitch_6  #0x7
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/DividerRotationTips;

    invoke-static {p0}, Lcom/oplus/splitscreen/DividerRotationTips;->f(Lcom/oplus/splitscreen/DividerRotationTips;)V

    return-void

    :pswitch_e  #0x6
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/DividerMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/DividerMenu;->b(Lcom/oplus/splitscreen/DividerMenu;)V

    return-void

    :pswitch_16  #0x5
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    invoke-static {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->a(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V

    return-void

    :pswitch_1e  #0x4
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->a(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V

    return-void

    :pswitch_26  #0x3
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->b(Landroid/content/Context;)V

    return-void

    :pswitch_2e  #0x2
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-static {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->b(Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V

    return-void

    :pswitch_36  #0x1
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->a(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    return-void

    :pswitch_3e  #0x0
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/PendingCardGuide;

    invoke-static {p0}, Lcom/android/launcher/guide/PendingCardGuide;->c(Lcom/android/launcher/guide/PendingCardGuide;)V

    return-void

    :goto_46
    iget-object p0, p0, Lcom/android/launcher/guide/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->a(Lcom/oplus/splitscreen/SplitControlBarMenu;)V

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
