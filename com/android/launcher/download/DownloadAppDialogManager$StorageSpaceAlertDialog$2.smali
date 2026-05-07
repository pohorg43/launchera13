.class Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->createDialog(Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$2;->this$1:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$2;->this$1:Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager;->access$502(Lcom/android/launcher/download/DownloadAppDialogManager;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
