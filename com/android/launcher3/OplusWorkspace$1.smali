.class Lcom/android/launcher3/OplusWorkspace$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$pageIndex:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Landroid/view/View;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$1;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace$1;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/OplusWorkspace$1;->val$pageIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$1;->val$child:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->showDragViewAfterCancel(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$1;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/OplusWorkspace$1;->val$pageIndex:I

    invoke-virtual {v0, p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onDropAnimationComplete(I)V

    return-void
.end method
