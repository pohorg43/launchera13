.class public final synthetic Lcom/android/wm/shell/bubbles/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$5;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView$5;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3e

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->n(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_e  #0x5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->startEmptyStateAnimation()V

    return-void

    :pswitch_16  #0x4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->b(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void

    :pswitch_1e  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->c(Lcom/android/wm/shell/bubbles/BadgedImageView;)V

    return-void

    :pswitch_26  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->a(Lcom/android/wm/shell/bubbles/BubbleStackView$5;)V

    return-void

    :pswitch_2e  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->a(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;)V

    return-void

    :pswitch_36  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$5;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$5;->a(Lcom/android/wm/shell/bubbles/BubbleController$5;)V

    return-void

    :goto_3e
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->a(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2e  #00000001
        :pswitch_26  #00000002
        :pswitch_1e  #00000003
        :pswitch_16  #00000004
        :pswitch_e  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
