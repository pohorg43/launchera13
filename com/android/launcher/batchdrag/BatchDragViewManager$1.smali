.class Lcom/android/launcher/batchdrag/BatchDragViewManager$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragViewManager;->startBatchDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/DragSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

.field public final synthetic val$longClickView:Landroid/view/View;

.field public final synthetic val$options:Lcom/android/launcher3/dragndrop/DragOptions;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->val$longClickView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->val$options:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 11

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$000(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$700(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->val$longClickView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$100(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object v2

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$200(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Ljava/util/List;

    move-result-object v3

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$300(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I

    move-result v4

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$400(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I

    move-result v5

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$500(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I

    move-result v6

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$600(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->val$options:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/OplusWorkspace;->beginBatchDragShared(Landroid/view/View;Lcom/android/launcher/batchdrag/BatchDragView;Ljava/util/List;IIIILcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$800(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V

    return-void
.end method
