.class public final synthetic Lcom/android/wm/shell/bubbles/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/bubbles/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/y;->b:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/y;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/y;->b:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->b(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/y;->b:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->e(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
