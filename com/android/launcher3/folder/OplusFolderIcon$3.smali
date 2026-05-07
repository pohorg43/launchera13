.class Lcom/android/launcher3/folder/OplusFolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderIcon;->onDropFolder(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

.field public final synthetic val$addedItems:Ljava/util/List;

.field public final synthetic val$destItemCount:I

.field public final synthetic val$dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic val$dragView:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;ILcom/android/launcher3/dragndrop/DragView;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$destItemCount:I

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$dragView:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p4, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$addedItems:Ljava/util/List;

    iput-object p5, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->onItemsChanged(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v1, p1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$destItemCount:I

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItems(IIZ)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$addedItems:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/android/launcher3/folder/IFolderExt;->showItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_55

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->val$dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    instance-of v1, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_55

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :cond_55
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$3;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
