.class Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->continueDownload(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
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
.field public final synthetic this$1:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

.field public final synthetic val$downloadAppInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;->this$1:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    iput-object p2, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;->val$downloadAppInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;->this$1:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    iget-object p1, p1, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppDialogManager;->access$400(Lcom/android/launcher/download/DownloadAppDialogManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;->val$downloadAppInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/android/launcher/download/DownloadAppsManager;->downloadNowOrByAppointment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method
