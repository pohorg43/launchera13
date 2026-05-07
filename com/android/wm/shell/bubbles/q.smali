.class public final synthetic Lcom/android/wm/shell/bubbles/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/bubbles/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/q;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/q;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/q;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/q;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/q;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/q;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->g(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/q;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->w(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/q;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->H(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
