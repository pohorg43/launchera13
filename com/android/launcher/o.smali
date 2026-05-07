.class public final synthetic Lcom/android/launcher/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher/o;

.field public static final synthetic c:Lcom/android/launcher/o;

.field public static final synthetic d:Lcom/android/launcher/o;

.field public static final synthetic e:Lcom/android/launcher/o;

.field public static final synthetic f:Lcom/android/launcher/o;

.field public static final synthetic g:Lcom/android/launcher/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/o;-><init>(I)V

    sput-object v0, Lcom/android/launcher/o;->b:Lcom/android/launcher/o;

    new-instance v0, Lcom/android/launcher/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/o;-><init>(I)V

    sput-object v0, Lcom/android/launcher/o;->c:Lcom/android/launcher/o;

    new-instance v0, Lcom/android/launcher/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/o;-><init>(I)V

    sput-object v0, Lcom/android/launcher/o;->d:Lcom/android/launcher/o;

    new-instance v0, Lcom/android/launcher/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/o;-><init>(I)V

    sput-object v0, Lcom/android/launcher/o;->e:Lcom/android/launcher/o;

    new-instance v0, Lcom/android/launcher/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/o;-><init>(I)V

    sput-object v0, Lcom/android/launcher/o;->f:Lcom/android/launcher/o;

    new-instance v0, Lcom/android/launcher/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher/o;-><init>(I)V

    sput-object v0, Lcom/android/launcher/o;->g:Lcom/android/launcher/o;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/o;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipExpand()V

    return-void

    :pswitch_c  #0x3
    check-cast p1, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void

    :pswitch_12  #0x2
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onOrganizerRegistered()V

    return-void

    :pswitch_18  #0x1
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->d(Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x0
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_24
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/SuperPowerSaveModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
