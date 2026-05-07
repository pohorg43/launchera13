.class Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallAnimationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;->this$0:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;-><init>(Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;)V

    return-void
.end method


# virtual methods
.method public onInstallAnimationFinish()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;->this$0:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->clearDownloadDrawable()V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;->this$0:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;

    invoke-static {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->access$100(Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;)Lcom/android/launcher3/iconrender/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    if-eqz v0, :cond_25

    check-cast p0, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    invoke-interface {p0}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    if-eqz p0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->onItemsChanged(Z)V

    :cond_25
    return-void
.end method
