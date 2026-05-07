.class public Lcom/android/launcher/batchdrag/FolderDragObject;
.super Lcom/android/launcher3/DropTarget$DragObject;
.source ""


# instance fields
.field private mBatchDragViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBatchDragViewList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/batchdrag/FolderDragObject;->mBatchDragViewList:Ljava/util/List;

    return-object p0
.end method

.method public setBatchDragViewList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/batchdrag/FolderDragObject;->mBatchDragViewList:Ljava/util/List;

    return-void
.end method
