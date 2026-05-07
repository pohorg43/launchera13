.class Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/batchdrag/BatchDragTailAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 8

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_a9

    const/16 v1, 0x2000

    const/4 v2, 0x0

    if-eq p1, v1, :cond_93

    const/16 v0, 0x5000

    if-eq p1, v0, :cond_11

    goto/16 :goto_bb

    :cond_11
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$000(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$100(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$100(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_92

    :cond_2e
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$100(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {v0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$100(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    if-nez p1, :cond_45

    return-void

    :cond_45
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :goto_48
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {v1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$200(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000  # 10.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_83

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_83

    goto :goto_48

    :cond_83
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_92
    :goto_92
    return-void

    :cond_93
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_a0

    const-string p1, "BatchDragTailAnimation"

    const-string v1, "BatchDragTailAnimation mTailHandler MSG_ANIMATION_STOP "

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p0, v2}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$002(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Z)Z

    goto :goto_bb

    :cond_a9
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$000(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)Z

    move-result p1

    if-eqz p1, :cond_bb

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->access$300(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_bb
    :goto_bb
    return-void
.end method
