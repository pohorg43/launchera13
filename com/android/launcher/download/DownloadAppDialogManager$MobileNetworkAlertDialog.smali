.class Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/download/DownloadAppDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileNetworkAlertDialog"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/download/DownloadAppDialogManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadAppDialogManager;Lcom/android/launcher/download/DownloadAppDialogManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->lambda$createListDialog$0(Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/Launcher;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->createListDialog(Lcom/android/launcher/Launcher;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/Launcher;Ljava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->createListDialog(Lcom/android/launcher/Launcher;Ljava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->lambda$createListDialog$1(Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private continueDownload(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 5

    new-instance v0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$1;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createListDialog(Lcom/android/launcher/Launcher;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v2, 0x7f130163

    invoke-direct {v1, p1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f12030c

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v2, 0x7f12030b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->e(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance v2, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    new-instance p1, Lcom/android/launcher/download/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lcom/android/launcher/download/a;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {v1, v2, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :array_40
    .array-data 4
        0x7f13064c
        0x7f13064c
        0x7f13064c
    .end array-data
.end method

.method private createListDialog(Lcom/android/launcher/Launcher;Ljava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;
    .registers 9

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v2, 0x7f130163

    invoke-direct {v1, p1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const p2, 0x7f12030d

    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->l(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance p2, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p1, v2, v0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    new-instance p1, Lcom/android/launcher/download/a;

    invoke-direct {p1, p0, p3, v4}, Lcom/android/launcher/download/a;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {v1, p2, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    nop

    :array_40
    .array-data 4
        0x7f13064c
        0x7f13064c
        0x7f13064c
    .end array-data
.end method

.method private downloadByAppointment(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 5

    new-instance v0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog$2;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic lambda$createListDialog$0(Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    if-eqz p3, :cond_a

    const/4 p2, 0x1

    if-eq p3, p2, :cond_6

    goto :goto_d

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->continueDownload(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->downloadByAppointment(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    :goto_d
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadAppDialogManager;->dismissMobileNetworkDialog()V

    return-void
.end method

.method private synthetic lambda$createListDialog$1(Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    if-eqz p3, :cond_a

    const/4 p2, 0x1

    if-eq p3, p2, :cond_6

    goto :goto_d

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->downloadByAppointment(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->continueDownload(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    :goto_d
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->this$0:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadAppDialogManager;->dismissMobileNetworkDialog()V

    return-void
.end method
