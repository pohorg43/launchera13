.class Lcom/android/launcher/pagepreview/PagePreviewItemView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDropBatchIcons(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$3;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView$3;->this$0:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
