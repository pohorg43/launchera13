.class Lcom/android/launcher/pagepreview/PagePreviewItemView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-static {v0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->access$000(Lcom/android/launcher/pagepreview/PagePreviewItemView;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-static {v0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->access$100(Lcom/android/launcher/pagepreview/PagePreviewItemView;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-static {v0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->access$100(Lcom/android/launcher/pagepreview/PagePreviewItemView;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getScreenIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_27
    return-void
.end method
