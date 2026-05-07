.class Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1$1;->this$2:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1$1;->this$2:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;

    iget-object p1, p1, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;->this$1:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;

    iget-object p1, p1, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppDialogManager;->access$400(Lcom/android/launcher/download/DownloadAppDialogManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1$1;->this$2:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;->val$appInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->cleanStorageSpace(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
