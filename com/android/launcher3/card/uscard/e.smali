.class public final synthetic Lcom/android/launcher3/card/uscard/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/card/uscard/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/card/uscard/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/card/uscard/e;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;->a(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->b(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
