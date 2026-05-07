.class public final synthetic Lcom/android/launcher/download/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

.field public final synthetic c:Lcom/android/launcher/download/OplusPackageInstallInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/a;->b:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    iput-object p2, p0, Lcom/android/launcher/download/a;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/download/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/download/a;->b:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    iget-object p0, p0, Lcom/android/launcher/download/a;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->b(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/download/a;->b:Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    iget-object p0, p0, Lcom/android/launcher/download/a;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->a(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
