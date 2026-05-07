.class public Lcom/android/launcher/download/DownloadAppDialogManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;,
        Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_BY_APPOINTMENT:I = 0x2

.field private static final DOWNLOAD_DIRECTLY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DownloadAppDialogManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/download/DownloadAppDialogManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/launcher/download/DownloadAppDialogManager;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static setDialogIgnoreHomeKey(Landroid/app/Dialog;)V
    .registers 6

    const-string v0, "DownloadAppDialogManager"

    if-nez p0, :cond_b

    const-string/jumbo p0, "setDialogNotHome. The dialog is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :try_start_15
    sget v2, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_KEY:I

    invoke-static {v1, v2}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_1a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_34

    :catch_1b
    move-exception v2

    const-string/jumbo v3, "setHomeAndMenuKeyState e:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3d

    :cond_38
    const-string p0, "The window of dialog is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method private showMobileNetworkAlertDialog(Ljava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "DownloadAppDialogManager"

    if-nez p2, :cond_b

    const-string/jumbo p0, "showMobileNetworkAlertDialog. The appInfo is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo p0, "showMobileNetworkAlertDialog - dialog already showing, don\'t show another!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    new-instance p1, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager;Lcom/android/launcher/download/DownloadAppDialogManager$1;)V

    invoke-static {p1, p3, p2}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->access$100(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/Launcher;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_3a

    :cond_2f
    new-instance v0, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager;Lcom/android/launcher/download/DownloadAppDialogManager$1;)V

    invoke-static {v0, p3, p1, p2}, Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;->access$200(Lcom/android/launcher/download/DownloadAppDialogManager$MobileNetworkAlertDialog;Lcom/android/launcher/Launcher;Ljava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_3a
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSpaceAlertDialog(Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "DownloadAppDialogManager"

    if-nez p1, :cond_b

    const-string/jumbo p0, "showSpaceAlertDialog. The appInfo is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo p0, "showSpaceAlertDialog - dialog already showing, don\'t show another!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    new-instance v0, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;-><init>(Lcom/android/launcher/download/DownloadAppDialogManager;Lcom/android/launcher/download/DownloadAppDialogManager$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/download/DownloadAppDialogManager$StorageSpaceAlertDialog;->createDialog(Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mContext:Landroid/content/Context;

    const v0, 0x7f1204d5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4d

    :cond_3f
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mContext:Landroid/content/Context;

    const v0, 0x7f1204d4

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_4d
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public dismissMobileNetworkDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mMobileNetworkAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_a
    return-void
.end method

.method public dismissStorageSpaceDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppDialogManager;->mStorageSpaceAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_a
    return-void
.end method

.method public showDownloadAppWarningDialog(ILjava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDownloadAppWarningDialog -- warningId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppDialogManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_26

    const-string/jumbo p0, "showDownloadAppWarningDialog --- LauncherAppState is null, return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_37

    const-string/jumbo p0, "showDownloadAppWarningDialog -- launcher is null, return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_44

    const-string/jumbo p0, "showDownloadAppWarningDialog -- launcher is paused, return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    if-nez p3, :cond_4d

    const-string/jumbo p0, "showDownloadAppWarningDialog -- appInfo is null, return!"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    const/4 v3, 0x2

    if-ne p1, v3, :cond_54

    invoke-direct {p0, p2, p3, v0}, Lcom/android/launcher/download/DownloadAppDialogManager;->showMobileNetworkAlertDialog(Ljava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)V

    goto :goto_75

    :cond_54
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5b

    invoke-direct {p0, p3, v0}, Lcom/android/launcher/download/DownloadAppDialogManager;->showSpaceAlertDialog(Lcom/android/launcher/download/OplusPackageInstallInfo;Lcom/android/launcher/Launcher;)V

    goto :goto_75

    :cond_5b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showDownloadAppWarningDialog warningId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is illegal!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_75
    return-void
.end method
