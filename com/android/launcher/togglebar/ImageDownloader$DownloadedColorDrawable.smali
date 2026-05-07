.class Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadedColorDrawable"
.end annotation


# instance fields
.field private final mTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;)V
    .registers 4

    const v0, -0x171718

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;->mUrlReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;->mTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBitmapUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;->mUrlReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTask()Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;->mTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    return-object p0
.end method
