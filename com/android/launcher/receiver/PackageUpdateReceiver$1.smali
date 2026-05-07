.class Lcom/android/launcher/receiver/PackageUpdateReceiver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/receiver/PackageUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/receiver/PackageUpdateReceiver;

.field public final synthetic val$downloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

.field public final synthetic val$installSource:Ljava/lang/String;

.field public final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher/receiver/PackageUpdateReceiver;Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->this$0:Lcom/android/launcher/receiver/PackageUpdateReceiver;

    iput-object p2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->val$downloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    iput-object p3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->val$installSource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->val$downloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->val$pkgName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;->val$installSource:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->onAppInstallFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
