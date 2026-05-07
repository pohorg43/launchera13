.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 2

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isCanceled()Z

    move-result p0

    return p0

    :pswitch_f  #0x0
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    sget v0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->a:I

    invoke-virtual {p0}, Lcom/android/launcher3/touch/OplusAbstractStateChangeTouchController;->isEndToTarget()Z

    move-result p0

    return p0

    :goto_1a
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->b0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
