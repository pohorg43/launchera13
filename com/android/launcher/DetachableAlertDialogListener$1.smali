.class Lcom/android/launcher/DetachableAlertDialogListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/DetachableAlertDialogListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher/DetachableAlertDialogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/DetachableAlertDialogListener$1;->this$0:Lcom/android/launcher/DetachableAlertDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 1

    return-void
.end method

.method public onWindowDetached()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/DetachableAlertDialogListener$1;->this$0:Lcom/android/launcher/DetachableAlertDialogListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/DetachableAlertDialogListener;->access$002(Lcom/android/launcher/DetachableAlertDialogListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/launcher/DetachableAlertDialogListener$1;->this$0:Lcom/android/launcher/DetachableAlertDialogListener;

    invoke-static {v0, v1}, Lcom/android/launcher/DetachableAlertDialogListener;->access$102(Lcom/android/launcher/DetachableAlertDialogListener;Landroid/content/DialogInterface$OnKeyListener;)Landroid/content/DialogInterface$OnKeyListener;

    iget-object v0, p0, Lcom/android/launcher/DetachableAlertDialogListener$1;->this$0:Lcom/android/launcher/DetachableAlertDialogListener;

    invoke-static {v0, v1}, Lcom/android/launcher/DetachableAlertDialogListener;->access$202(Lcom/android/launcher/DetachableAlertDialogListener;Landroid/content/DialogInterface$OnShowListener;)Landroid/content/DialogInterface$OnShowListener;

    iget-object p0, p0, Lcom/android/launcher/DetachableAlertDialogListener$1;->this$0:Lcom/android/launcher/DetachableAlertDialogListener;

    invoke-static {p0, v1}, Lcom/android/launcher/DetachableAlertDialogListener;->access$302(Lcom/android/launcher/DetachableAlertDialogListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
