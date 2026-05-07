.class public final synthetic Lcom/android/launcher3/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/c0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/c0;->b:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/c0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/c0;->b:Lcom/android/launcher3/Launcher;

    check-cast p1, Ljava/util/function/Predicate;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/c0;->b:Lcom/android/launcher3/Launcher;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->t(Lcom/android/launcher3/Launcher;Ljava/lang/Integer;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher3/c0;->b:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
