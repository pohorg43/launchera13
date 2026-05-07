.class public final synthetic Lcom/android/quickstep/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/OplusBaseTouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/d0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d0;->b:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    return-void
.end method


# virtual methods
.method public newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 5

    iget v0, p0, Lcom/android/quickstep/d0;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/d0;->b:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->g(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0

    :goto_d
    iget-object p0, p0, Lcom/android/quickstep/d0;->b:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->d(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/d0;->b:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->c(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V

    return-void
.end method
