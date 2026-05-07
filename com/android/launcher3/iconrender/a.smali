.class public final synthetic Lcom/android/launcher3/iconrender/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/iconrender/a;->a:I

    packed-switch p2, :pswitch_data_36

    goto :goto_30

    :pswitch_6  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_c  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_12  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_18  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_1e  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_24  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_2a  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :goto_30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/a;->b:I

    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
        :pswitch_18  #00000004
        :pswitch_12  #00000005
        :pswitch_c  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/iconrender/a;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3e

    :pswitch_6  #0x6
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedState;->a(ILcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;)V

    return-void

    :pswitch_e  #0x5
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->J(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_16  #0x4
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->i(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_1e  #0x3
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->d(ILcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void

    :pswitch_26  #0x2
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->e(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_2e  #0x1
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/quickstep/TopTaskTracker$OnTaskStageChangedListener;

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->a(ILcom/android/quickstep/TopTaskTracker$OnTaskStageChangedListener;)V

    return-void

    :pswitch_36  #0x0
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/launcher3/iconrender/IRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->d(ILcom/android/launcher3/iconrender/IRenderer;)V

    return-void

    :goto_3e
    iget p0, p0, Lcom/android/launcher3/iconrender/a;->b:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->a(ILcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2e  #00000001
        :pswitch_26  #00000002
        :pswitch_1e  #00000003
        :pswitch_16  #00000004
        :pswitch_e  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
