.class Lcom/android/launcher/download/DownloadAppsManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/DownloadAppsManager;->onClickDownloadApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/download/DownloadAppsManager;

.field public final synthetic val$appInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager$1;->this$0:Lcom/android/launcher/download/DownloadAppsManager;

    iput-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager$1;->val$appInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager$1;->this$0:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->access$000(Lcom/android/launcher/download/DownloadAppsManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/download/DownloadAppsManager$1;->val$appInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager$1;->val$appInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p0

    invoke-static {v0, v1, v3, v2, p0}, Lcom/android/launcher/download/DownloadAppsManager;->access$700(Lcom/android/launcher/download/DownloadAppsManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
