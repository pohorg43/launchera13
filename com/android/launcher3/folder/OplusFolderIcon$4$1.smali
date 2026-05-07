.class Lcom/android/launcher3/folder/OplusFolderIcon$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderIcon$4;->onAlarm(Lcom/android/launcher3/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher3/folder/OplusFolderIcon$4;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon$4;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4$1;->this$1:Lcom/android/launcher3/folder/OplusFolderIcon$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4$1;->this$1:Lcom/android/launcher3/folder/OplusFolderIcon$4;

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4$1;->this$1:Lcom/android/launcher3/folder/OplusFolderIcon$4;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->beginExternalDrag()V

    :cond_17
    return-void
.end method
