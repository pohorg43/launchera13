.class Lcom/android/launcher3/card/DefaultCardView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/DefaultCardView;->initial(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/DefaultCardView;

.field public final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    iput-object p2, p0, Lcom/android/launcher3/card/DefaultCardView$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->access$002(Lcom/android/launcher3/card/DefaultCardView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/DefaultCardView;->access$000(Lcom/android/launcher3/card/DefaultCardView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->getClipRoundRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/DefaultCardView;->access$000(Lcom/android/launcher3/card/DefaultCardView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->access$102(Lcom/android/launcher3/card/DefaultCardView;I)I

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/DefaultCardView;->access$200(Lcom/android/launcher3/card/DefaultCardView;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    const v1, 0x3e2b020c  # 0.167f

    invoke-static {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->access$300(Lcom/android/launcher3/card/DefaultCardView;F)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView$1;->val$callback:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->access$400(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-static {v0}, Lcom/android/launcher3/card/DefaultCardView;->access$500(Lcom/android/launcher3/card/DefaultCardView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView$1;->this$0:Lcom/android/launcher3/card/DefaultCardView;

    invoke-static {p0}, Lcom/android/launcher3/card/DefaultCardView;->access$500(Lcom/android/launcher3/card/DefaultCardView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5b
    return-void
.end method
