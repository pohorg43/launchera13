.class public final synthetic Lcom/android/launcher3/allapps/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/k;->c:I

    iput-object p2, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BaseActivity;I)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/ArrowTipView;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/MultiStateCallback;I)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RotationTouchHelper;I)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;I)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lo1/b;I)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/k;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/k;->a:I

    packed-switch v0, :pswitch_data_72

    goto :goto_68

    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lo1/b;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    iget-object v0, v0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-interface {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    return-void

    :pswitch_18  #0x7
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->n(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V

    return-void

    :pswitch_22  #0x6
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->h(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;I)V

    return-void

    :pswitch_2c  #0x5
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RotationTouchHelper;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/RotationTouchHelper;->c(Lcom/android/quickstep/RotationTouchHelper;I)V

    return-void

    :pswitch_36  #0x4
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/MultiStateCallback;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/MultiStateCallback;->a(Lcom/android/quickstep/MultiStateCallback;I)V

    return-void

    :pswitch_40  #0x3
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->a(Lcom/android/launcher3/BaseActivity;I)V

    return-void

    :pswitch_4a  #0x2
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/ArrowTipView;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/views/ArrowTipView;->c(Lcom/android/launcher3/views/ArrowTipView;I)V

    return-void

    :pswitch_54  #0x1
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->a(Lcom/android/launcher3/OplusWorkspace;I)V

    return-void

    :pswitch_5e  #0x0
    iget-object v0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    iget p0, p0, Lcom/android/launcher3/allapps/k;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->m(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V

    return-void

    :goto_68
    iget v0, p0, Lcom/android/launcher3/allapps/k;->c:I

    iget-object p0, p0, Lcom/android/launcher3/allapps/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->a(ILcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V

    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_54  #00000001
        :pswitch_4a  #00000002
        :pswitch_40  #00000003
        :pswitch_36  #00000004
        :pswitch_2c  #00000005
        :pswitch_22  #00000006
        :pswitch_18  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
