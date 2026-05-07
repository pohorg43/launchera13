.class public Lcom/android/launcher/batchdrag/BatchDragObject;
.super Lcom/android/launcher3/DropTarget$DragObject;
.source ""


# instance fields
.field public batchDrag:Z

.field public batchDragHead:Z

.field public batchDragViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;"
        }
    .end annotation
.end field

.field public batchStartSource:Lcom/android/launcher3/DragSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDragViewCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_a
    return p0
.end method
