.class Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->onUninstallButtonClick(Lcom/android/launcher/views/CommonAlertView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

.field public final synthetic val$hasEncryptedItems:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->val$hasEncryptedItems:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogOutsideClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->batchTipViewShow()V

    return-void
.end method

.method public onNegativeButtonClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->batchTipViewShow()V

    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->clearSelectData()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->updateSearchViewState()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->batchTipViewShow()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->val$hasEncryptedItems:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    const v1, 0x7f12047d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_32
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;->this$1:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
