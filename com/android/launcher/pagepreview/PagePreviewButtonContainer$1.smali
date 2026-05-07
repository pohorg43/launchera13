.class Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->uninstallApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

.field public final synthetic val$hasEncryptedItems:Z

.field public final synthetic val$manager:Lcom/android/launcher/batchdrag/BatchDragViewManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;Lcom/android/launcher/batchdrag/BatchDragViewManager;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->val$manager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    iput-boolean p3, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->val$hasEncryptedItems:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogOutsideClick()V
    .registers 1

    return-void
.end method

.method public onNegativeButtonClick()V
    .registers 1

    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->val$manager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Z)V

    iget-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->val$hasEncryptedItems:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-static {v0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->access$000(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;)Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;->this$0:Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;

    invoke-static {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->access$000(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;)Lcom/android/launcher/Launcher;

    move-result-object p0

    const v2, 0x7f120481

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_24
    return-void
.end method
