.class Lcom/android/launcher/batchdrag/BatchDragViewManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragViewManager;->mergeFolder(Lcom/android/launcher/batchdrag/FolderDragObject;Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

.field public final synthetic val$destFolder:Lcom/android/launcher3/folder/OplusFolder;

.field public final synthetic val$srcFolder:Lcom/android/launcher3/folder/OplusFolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Lcom/android/launcher3/folder/OplusFolder;Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->val$srcFolder:Lcom/android/launcher3/folder/OplusFolder;

    iput-object p3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->val$destFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/batchdrag/BatchDragViewManager$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$700(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->this$0:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->access$700(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/batchdrag/e;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/e;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager$4;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->val$srcFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->val$srcFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->val$destFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->val$destFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    return-void
.end method
