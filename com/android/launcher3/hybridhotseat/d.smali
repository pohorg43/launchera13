.class public final synthetic Lcom/android/launcher3/hybridhotseat/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/d;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->a(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_f  #0x0
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-static {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->c(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_18
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->a(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
