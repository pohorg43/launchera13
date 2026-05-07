.class public final synthetic Lcom/android/wm/shell/bubbles/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;II)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput p2, p0, Lcom/android/wm/shell/bubbles/m;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget p0, p0, Lcom/android/wm/shell/bubbles/m;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->c(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget p0, p0, Lcom/android/wm/shell/bubbles/m;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->l(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
