.class Lcom/android/launcher3/Workspace$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/Workspace;

.field public final synthetic val$container:I

.field public final synthetic val$item:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field public final synthetic val$screenId:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$5;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iput p3, p0, Lcom/android/launcher3/Workspace$5;->val$container:I

    iput p4, p0, Lcom/android/launcher3/Workspace$5;->val$screenId:I

    iput-object p5, p0, Lcom/android/launcher3/Workspace$5;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->deferRemoveExtraEmptyScreen()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$5;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v3, p0, Lcom/android/launcher3/Workspace$5;->val$container:I

    iget v4, p0, Lcom/android/launcher3/Workspace$5;->val$screenId:I

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object p0, p0, Lcom/android/launcher3/Workspace$5;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    return-void
.end method
