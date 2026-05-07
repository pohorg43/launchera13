.class Lcom/android/launcher/batchdrag/BatchDragViewManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragViewManager;->generateFolderIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

.field public final synthetic val$fi:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;->val$fi:Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$900(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$1002(Lcom/android/launcher/batchdrag/BatchDragViewManager;Z)Z

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;->val$fi:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method
