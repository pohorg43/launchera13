.class Lcom/android/launcher3/folder/OplusFolder$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolder;

.field public final synthetic val$relayout:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolder;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder$7;->val$relayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v8, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :cond_53
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v4, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v5, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/launcher3/folder/OplusFolder$7;->val$relayout:Z

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v3, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v4, v3, Lcom/android/launcher3/DropTarget;

    if-eqz v4, :cond_78

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v3, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_78
    if-eqz v2, :cond_a4

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :cond_90
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder$7;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v2, p0}, Lcom/android/launcher3/OplusWorkspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_a4
    return-void
.end method
