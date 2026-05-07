.class public final synthetic Lcom/android/launcher3/popup/pendingcard/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/popup/pendingcard/j;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/j;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/j;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/j;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/j;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/j;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->b(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/j;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/j;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->d(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/j;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/j;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->a(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
