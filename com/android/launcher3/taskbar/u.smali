.class public final synthetic Lcom/android/launcher3/taskbar/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic c:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic d:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic e:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic f:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic g:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic h:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic i:Lcom/android/launcher3/taskbar/u;

.field public static final synthetic j:Lcom/android/launcher3/taskbar/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->b:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->c:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->d:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->e:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->f:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->g:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->h:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->i:Lcom/android/launcher3/taskbar/u;

    new-instance v0, Lcom/android/launcher3/taskbar/u;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/u;->j:Lcom/android/launcher3/taskbar/u;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher3/taskbar/u;->a:I

    packed-switch p0, :pswitch_data_3c

    goto :goto_36

    :pswitch_6  #0x7
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/StudyModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void

    :pswitch_c  #0x6
    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onEnterSplit()V

    return-void

    :pswitch_12  #0x5
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->f(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_18  #0x4
    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-virtual {p1}, Lcom/android/wm/shell/apppairs/AppPairsController;->onOrganizerRegistered()V

    return-void

    :pswitch_1e  #0x3
    check-cast p1, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;

    invoke-interface {p1}, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;->onScreenTurnedOn()V

    return-void

    :pswitch_24  #0x2
    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->hideAllApps()V

    return-void

    :pswitch_2a  #0x1
    check-cast p1, Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    invoke-interface {p1}, Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;->onSlideInViewClosed()V

    return-void

    :pswitch_30  #0x0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->b(Landroid/view/MotionEvent;)V

    return-void

    :goto_36
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
        :pswitch_18  #00000004
        :pswitch_12  #00000005
        :pswitch_c  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
