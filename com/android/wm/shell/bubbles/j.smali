.class public final synthetic Lcom/android/wm/shell/bubbles/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$6;Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/bubbles/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/bubbles/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/j;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_46

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->b(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->n(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void

    :pswitch_26  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->v(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$6;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$6;->b(Lcom/android/wm/shell/bubbles/BubbleController$6;Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :goto_46
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/j;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/j;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->s(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_26  #00000001
        :pswitch_16  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
