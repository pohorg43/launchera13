.class public final synthetic Lcom/android/wm/shell/bubbles/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/bubbles/l;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/l;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/l;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/l;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->y(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/l;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->o(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/l;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->b(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    return-void

    :goto_18
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/l;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->u(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
