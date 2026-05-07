.class public final synthetic Lcom/android/launcher/powersave/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher/powersave/g;

.field public static final synthetic c:Lcom/android/launcher/powersave/g;

.field public static final synthetic d:Lcom/android/launcher/powersave/g;

.field public static final synthetic e:Lcom/android/launcher/powersave/g;

.field public static final synthetic f:Lcom/android/launcher/powersave/g;

.field public static final synthetic g:Lcom/android/launcher/powersave/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/powersave/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher/powersave/g;->b:Lcom/android/launcher/powersave/g;

    new-instance v0, Lcom/android/launcher/powersave/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher/powersave/g;->c:Lcom/android/launcher/powersave/g;

    new-instance v0, Lcom/android/launcher/powersave/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher/powersave/g;->d:Lcom/android/launcher/powersave/g;

    new-instance v0, Lcom/android/launcher/powersave/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher/powersave/g;->e:Lcom/android/launcher/powersave/g;

    new-instance v0, Lcom/android/launcher/powersave/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher/powersave/g;->f:Lcom/android/launcher/powersave/g;

    new-instance v0, Lcom/android/launcher/powersave/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher/powersave/g;->g:Lcom/android/launcher/powersave/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/powersave/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/powersave/g;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipShowMenu()V

    return-void

    :pswitch_c  #0x3
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->initialize()V

    return-void

    :pswitch_12  #0x2
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->A(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_18  #0x1
    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->I(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void

    :pswitch_1e  #0x0
    check-cast p1, Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;

    invoke-interface {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;->onAllAppsLoaded()V

    return-void

    :goto_24
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/WellBeingAssistantModeInputConsumer;->a(Ljava/lang/Boolean;)V

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
