.class Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/download/DownloadAppDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageSpaceAlertDialog"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/download/DownloadAppDialogManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager;Lcom/android/launcher/download/DownloadAppDialogManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager;)V

    return-void
.end method


# virtual methods
.method public createDialog(Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)Landroidx/appcompat/app/AlertDialog;
    .registers 5

    if-nez p1, :cond_d

    const-string p0, "InstallApp"

    const-string p1, "DownloadAppDialogManager"

    const-string p2, "StorageSpaceAlertDialog -- createDialog, appInfo is null!"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v1, 0x7f1303b6

    invoke-direct {v0, p2, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppDialogManager;->access$400(Lcom/android/launcher/download/DownloadAppDialogManager;)Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f120173

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$1;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    invoke-virtual {v0, p2, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppDialogManager;->access$400(Lcom/android/launcher/download/DownloadAppDialogManager;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120167

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$2;

    invoke-direct {p2, p0}, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog$2;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;)V

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppDialogManager;->setDialogIgnoreHomeKey(Landroid/app/Dialog;)V

    return-object p0
.end method
