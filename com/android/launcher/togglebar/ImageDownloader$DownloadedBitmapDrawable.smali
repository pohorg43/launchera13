.class public Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadedBitmapDrawable"
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
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;->mUrlReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;->mTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBitmapUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;->mUrlReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTask()Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;->mTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    return-object p0
.end method
