.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/a;->b:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/a;->b:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/a;->b:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->d(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/a;->b:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
