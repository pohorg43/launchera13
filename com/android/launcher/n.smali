.class public final synthetic Lcom/android/launcher/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher/n;

.field public static final synthetic c:Lcom/android/launcher/n;

.field public static final synthetic d:Lcom/android/launcher/n;

.field public static final synthetic e:Lcom/android/launcher/n;

.field public static final synthetic f:Lcom/android/launcher/n;

.field public static final synthetic g:Lcom/android/launcher/n;

.field public static final synthetic h:Lcom/android/launcher/n;

.field public static final synthetic i:Lcom/android/launcher/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->b:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->c:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->d:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->e:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->f:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->g:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->h:Lcom/android/launcher/n;

    new-instance v0, Lcom/android/launcher/n;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher/n;-><init>(I)V

    sput-object v0, Lcom/android/launcher/n;->i:Lcom/android/launcher/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/n;->a:I

    packed-switch p0, :pswitch_data_36

    goto :goto_30

    :pswitch_6  #0x6
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->s(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_c  #0x5
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_12  #0x4
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->c(Landroid/view/View;)V

    return-void

    :pswitch_18  #0x3
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/Workspace;->v(Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x2
    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->O(Ljava/lang/Runnable;)V

    return-void

    :pswitch_24  #0x1
    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->H(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void

    :pswitch_2a  #0x0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->g0(Landroid/view/View;)V

    return-void

    :goto_30
    check-cast p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/wm/shell/ShellInitImpl;->a(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
        :pswitch_18  #00000003
        :pswitch_12  #00000004
        :pswitch_c  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
