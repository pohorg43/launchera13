.class public final synthetic Lcom/android/wm/shell/bubbles/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLjava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/ManageEducationView;ZLcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/bubbles/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/p;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->b(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->d(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLjava/lang/Runnable;)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->x(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/p;->d:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/p;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->a(Lcom/android/wm/shell/bubbles/ManageEducationView;ZLcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
