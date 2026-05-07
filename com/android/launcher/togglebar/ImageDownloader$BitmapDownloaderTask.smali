.class Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapDownloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private final mHeight:I

.field private final mImageViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;

.field private final mWidth:I

.field public final synthetic this$0:Lcom/android/launcher/togglebar/ImageDownloader;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/ImageDownloader;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/android/launcher/togglebar/ImageDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    iput p2, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mWidth:I

    iput p3, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mHeight:I

    return-void
.end method

.method private contains(Landroid/widget/ImageView;Z)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_21

    if-eqz p2, :cond_1f

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method private setAllImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_22

    iget-object v3, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/android/launcher/togglebar/ImageDownloader;

    invoke-static {v3}, Lcom/android/launcher/togglebar/ImageDownloader;->access$400(Lcom/android/launcher/togglebar/ImageDownloader;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v2, p1}, Lcom/android/launcher/togglebar/ImageDownloader;->access$500(Lcom/android/launcher/togglebar/ImageDownloader;Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setImageDefaultDrawable()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_37

    :try_start_9
    iget-object v2, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_34

    iget-object v3, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/android/launcher/togglebar/ImageDownloader;

    invoke-static {v3}, Lcom/android/launcher/togglebar/ImageDownloader;->access$600(Lcom/android/launcher/togglebar/ImageDownloader;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/android/launcher/togglebar/ImageDownloader;

    invoke-static {v3}, Lcom/android/launcher/togglebar/ImageDownloader;->access$600(Lcom/android/launcher/togglebar/ImageDownloader;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception v2

    const-string/jumbo v3, "setImageDefaultDrawable e ="

    const-string v4, "ImageDownloader"

    invoke-static {v3, v2, v4}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_37
    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addImageView(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->contains(Landroid/widget/ImageView;Z)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mImageViewList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mCachePath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p0, 0x0

    return-object p0

    :cond_17
    iget-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/android/launcher/togglebar/ImageDownloader;

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mCachePath:Ljava/lang/String;

    iget v2, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mWidth:I

    iget p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mHeight:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/launcher/togglebar/ImageDownloader;->access$100(Lcom/android/launcher/togglebar/ImageDownloader;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lcom/android/launcher/togglebar/ImageDownloader;->access$200()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/launcher/togglebar/ImageDownloader;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public onCancelled(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/togglebar/ImageDownloader;->access$200()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/android/launcher/togglebar/ImageDownloader;->access$200()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/togglebar/ImageDownloader;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/android/launcher/togglebar/ImageDownloader;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->mCachePath:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/launcher/togglebar/ImageDownloader;->access$300(Lcom/android/launcher/togglebar/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->setAllImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_20

    :cond_1d
    invoke-direct {p0}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->setImageDefaultDrawable()V

    :goto_20
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public removeImageView(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->contains(Landroid/widget/ImageView;Z)Z

    return-void
.end method
