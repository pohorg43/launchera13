.class public final synthetic Lcom/android/wm/shell/bubbles/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$3;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/h;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/h;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$3;

    iget p0, p0, Lcom/android/wm/shell/bubbles/h;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$3;->a(Lcom/android/wm/shell/bubbles/BubbleController$3;I)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntConsumer;

    iget p0, p0, Lcom/android/wm/shell/bubbles/h;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->h(Ljava/util/function/IntConsumer;I)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
