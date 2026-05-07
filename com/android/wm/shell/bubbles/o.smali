.class public final synthetic Lcom/android/wm/shell/bubbles/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/wm/shell/bubbles/RelativeTouchListener;)V
    .registers 4

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/util/SparseArray;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)V
    .registers 4

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/List;)V
    .registers 4

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .registers 4

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/o;->a:I

    packed-switch v0, :pswitch_data_b0

    goto/16 :goto_a3

    :pswitch_7  #0xc
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->a(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    return-void

    :pswitch_13  #0xb
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->b(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/List;)V

    return-void

    :pswitch_1f  #0xa
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->j(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)V

    return-void

    :pswitch_2b  #0x9
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->k(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_37  #0x8
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/Bubble;->a(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    return-void

    :pswitch_43  #0x7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->b(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void

    :pswitch_4f  #0x6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->d(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_5b  #0x5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->p(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/res/Configuration;)V

    return-void

    :pswitch_67  #0x4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->i(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/util/SparseArray;)V

    return-void

    :pswitch_73  #0x3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->r(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void

    :pswitch_7f  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->e(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void

    :pswitch_8b  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->f(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/os/Bundle;)V

    return-void

    :pswitch_97  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->a(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    return-void

    :goto_a3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->a(Landroid/view/View;Lcom/android/wm/shell/bubbles/RelativeTouchListener;)V

    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_8b  #00000001
        :pswitch_7f  #00000002
        :pswitch_73  #00000003
        :pswitch_67  #00000004
        :pswitch_5b  #00000005
        :pswitch_4f  #00000006
        :pswitch_43  #00000007
        :pswitch_37  #00000008
        :pswitch_2b  #00000009
        :pswitch_1f  #0000000a
        :pswitch_13  #0000000b
        :pswitch_7  #0000000c
    .end packed-switch
.end method
