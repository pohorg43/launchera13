.class Lcom/android/launcher3/folder/OplusFolderIcon$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderIcon;->onDrop(Ljava/util/List;Landroid/graphics/Rect;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

.field public final synthetic val$addedItems:Ljava/util/List;

.field public final synthetic val$reorderIcon:Z

.field public final synthetic val$startIndex:I

.field public final synthetic val$workspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;ILjava/util/List;ZLcom/android/launcher3/Workspace;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$startIndex:I

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$addedItems:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$reorderIcon:Z

    iput-object p5, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$startIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItems(IIZ)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$addedItems:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher3/folder/IFolderExt;->showItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$reorderIcon:Z

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$2;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_42

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_42
    return-void
.end method
