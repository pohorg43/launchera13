.class Lcom/android/launcher/batchdrag/BatchDragViewManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragViewManager;->goBackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$3;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$3;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->destroyDragViewsInDragLayer()V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$3;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$002(Lcom/android/launcher/batchdrag/BatchDragViewManager;I)I

    return-void
.end method
