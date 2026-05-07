.class Lcom/android/launcher/download/DownloadAppsManager$DownloadAppsManagerHandler;
.super Lcom/android/common/util/StaticHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/download/DownloadAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadAppsManagerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/common/util/StaticHandler<",
        "Lcom/android/launcher/download/DownloadAppsManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/DownloadAppsManager;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/util/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/android/launcher/download/DownloadAppsManager;)V
    .registers 6

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "DownloadAppsManager"

    const-string v2, "InstallApp"

    packed-switch p0, :pswitch_data_9a

    goto/16 :goto_98

    :pswitch_c  #0x3f0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "MSG_EXPANSIONS_DOWNLOADING_INIT_TIMEOUT,pkg="

    invoke-static {p1, p0, v2, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p0, v0, v0}, Lcom/android/launcher/download/DownloadAppsManager;->access$600(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;ZZ)V

    goto/16 :goto_98

    :pswitch_1a  #0x3ee
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_NEW_INSTALL_TYPE_PKG_TIMEOUT,pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/android/launcher/download/DownloadAppsManager;->access$500(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V

    goto :goto_98

    :pswitch_36  #0x3ed
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "MSG_MAKE_EXPANSIONS_DOWNLOAD_FINISH,pkg="

    invoke-static {p1, p0, v2, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p0, v0, v0}, Lcom/android/launcher/download/DownloadAppsManager;->access$600(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;ZZ)V

    goto :goto_98

    :pswitch_43  #0x3ec
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/launcher/download/DownloadAppsManager;->access$400(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V

    goto :goto_98

    :pswitch_4b  #0x3eb
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/launcher/download/DownloadAppsManager;->access$400(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V

    goto :goto_98

    :pswitch_53  #0x3ea
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    const-string v1, "flowSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_64
    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppsManager;->access$300(Lcom/android/launcher/download/DownloadAppsManager;)Lcom/android/launcher/download/DownloadAppDialogManager;

    move-result-object p2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/launcher/download/DownloadAppDialogManager;->showDownloadAppWarningDialog(ILjava/lang/String;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_98

    :pswitch_6e  #0x3e9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-static {p2, p0}, Lcom/android/launcher/download/DownloadAppsManager;->access$200(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_98

    :pswitch_76  #0x3e8, 0x3ef
    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppsManager;->access$000(Lcom/android/launcher/download/DownloadAppsManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p0

    if-eqz p0, :cond_8a

    const-string p0, "MSG_UPDATE_APPS in children mode, ignore update message"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8a
    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppsManager;->access$100(Lcom/android/launcher/download/DownloadAppsManager;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher/download/DownloadAppsManager;->notifyDownloadAppsUpdated(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppsManager;->access$100(Lcom/android/launcher/download/DownloadAppsManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x3e8
        :pswitch_76  #000003e8
        :pswitch_6e  #000003e9
        :pswitch_53  #000003ea
        :pswitch_4b  #000003eb
        :pswitch_43  #000003ec
        :pswitch_36  #000003ed
        :pswitch_1a  #000003ee
        :pswitch_76  #000003ef
        :pswitch_c  #000003f0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppsManager$DownloadAppsManagerHandler;->handleMessage(Landroid/os/Message;Lcom/android/launcher/download/DownloadAppsManager;)V

    return-void
.end method
