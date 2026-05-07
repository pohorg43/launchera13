.class public final synthetic Lcom/android/launcher3/allapps/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/OplusWidgetCell;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/allapps/i;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3c

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->b(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_f  #0x4
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->c(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_18  #0x3
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->d(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_21  #0x2
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/OplusWidgetCell;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->c(Lcom/android/launcher3/widget/OplusWidgetCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_2a  #0x1
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardUtil;->a(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_33  #0x0
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->a(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :goto_3c
    iget-object p0, p0, Lcom/android/launcher3/allapps/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->a(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_2a  #00000001
        :pswitch_21  #00000002
        :pswitch_18  #00000003
        :pswitch_f  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
