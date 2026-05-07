.class public final synthetic Lcom/android/wm/shell/bubbles/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/bubbles/f0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/f0;->b:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/f0;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/f0;->b:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->R(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/f0;->b:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->u(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/f0;->b:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->z(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
