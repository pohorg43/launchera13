.class public final synthetic Lcom/android/wm/shell/bubbles/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleData;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleData;II)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/bubbles/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/w;->b:Lcom/android/wm/shell/bubbles/BubbleData;

    iput p2, p0, Lcom/android/wm/shell/bubbles/w;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/w;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/w;->b:Lcom/android/wm/shell/bubbles/BubbleData;

    iget p0, p0, Lcom/android/wm/shell/bubbles/w;->c:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->i(Lcom/android/wm/shell/bubbles/BubbleData;ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/w;->b:Lcom/android/wm/shell/bubbles/BubbleData;

    iget p0, p0, Lcom/android/wm/shell/bubbles/w;->c:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->d(Lcom/android/wm/shell/bubbles/BubbleData;ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
