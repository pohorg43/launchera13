.class public Lcom/android/launcher/togglebar/ImageDownloader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;,
        Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;,
        Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;
    }
.end annotation


# static fields
.field private static final DOWNLOADED_COLOR:I = -0x171718

.field private static final FADE_IN_TIME:I = 0x32

.field private static final HARD_CACHE_CAPACITY:I = 0x0

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "ImageDownloader"

.field private static final mUrlTastMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultResId:I

.field private mHardBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnim:Z

.field private final mIsStoped:Z

.field private mIsThumb:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->mUrlTastMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsStoped:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsAnim:Z

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsThumb:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mContext:Landroid/content/Context;

    const v1, 0x7f060674

    iput v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultResId:I

    :try_start_1c
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_26

    :catch_23
    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_26
    invoke-direct {p0, v0}, Lcom/android/launcher/togglebar/ImageDownloader;->createHardBitmapCache(I)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/launcher/togglebar/ImageDownloader;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/togglebar/ImageDownloader;->downloadBitmap(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->mUrlTastMap:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/launcher/togglebar/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/togglebar/ImageDownloader;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/togglebar/ImageDownloader;Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/ImageDownloader;->setImageBitmap(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/togglebar/ImageDownloader;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1a

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsThumb:Z

    if-nez p0, :cond_1d

    sget-object p0, Lcom/android/launcher/togglebar/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method private static cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .registers 3

    const/4 p1, 0x1

    if-eqz p0, :cond_10

    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->mUrlTastMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_10
    return p1
.end method

.method private clearCache()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v2, v1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static clearSoftCache()V
    .registers 3

    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->mUrlTastMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_f

    sget-object v2, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_f

    :cond_29
    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private createHardBitmapCache(I)V
    .registers 9

    new-instance v6, Lcom/android/launcher/togglebar/ImageDownloader$1;

    const/high16 v3, 0x3f400000  # 0.75f

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/togglebar/ImageDownloader$1;-><init>(Lcom/android/launcher/togglebar/ImageDownloader;IFZI)V

    iput-object v6, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    return-void
.end method

.method private downloadBitmap(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/common/util/BitmapUtils;->decodeFile(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_18

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_18
    return-object p0
.end method

.method private forceDownload(Ljava/lang/String;Ljava/lang/String;IILandroid/widget/ImageView;)V
    .registers 11

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_6

    move-object p1, p2

    :cond_6
    invoke-direct {p0, p5}, Lcom/android/launcher/togglebar/ImageDownloader;->getBitmapUrl(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lcom/android/launcher/togglebar/ImageDownloader;->mUrlTastMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p5}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->removeImageView(Landroid/widget/ImageView;)V

    :cond_1f
    sget-object v0, Lcom/android/launcher/togglebar/ImageDownloader;->mUrlTastMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_34

    :cond_32
    move p3, v2

    goto :goto_46

    :cond_34
    :goto_34
    invoke-direct {p0, p5}, Lcom/android/launcher/togglebar/ImageDownloader;->getTask(Landroid/widget/ImageView;)Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3d
    new-instance v1, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;-><init>(Lcom/android/launcher/togglebar/ImageDownloader;II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, v3

    :goto_46
    invoke-virtual {v1, p5}, Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;->addImageView(Landroid/widget/ImageView;)V

    if-eqz p3, :cond_85

    :try_start_4b
    iget-object p3, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_6a

    new-instance p3, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;

    iget-object p4, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultResId:I

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p3, p4, p0, p1, v1}, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;)V

    invoke-virtual {p5, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_72

    :cond_6a
    new-instance p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;-><init>(Ljava/lang/String;Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;)V

    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_72
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object p1, p0, v2

    aput-object p2, p0, v3

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7c} :catch_7d

    goto :goto_85

    :catch_7d
    move-exception p0

    const-string p1, "forceDownload e = "

    const-string p2, "ImageDownloader"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_85
    :goto_85
    return-void
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v2

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_35

    sget-object p0, Lcom/android/launcher/togglebar/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_31

    return-object v1

    :cond_31
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v0

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method private getBitmapUrl(Landroid/widget/ImageView;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;

    if-eqz p1, :cond_11

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;->getBitmapUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;

    if-eqz p1, :cond_1c

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;->getBitmapUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTask(Landroid/widget/ImageView;)Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;
    .registers 2

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;

    if-eqz p1, :cond_11

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedColorDrawable;->getTask()Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of p1, p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;

    if-eqz p1, :cond_1c

    check-cast p0, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ImageDownloader$DownloadedBitmapDrawable;->getTask()Lcom/android/launcher/togglebar/ImageDownloader$BitmapDownloaderTask;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private setImageBitmap(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 7

    if-eqz p3, :cond_3e

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3e

    :try_start_8
    iget-boolean p0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsAnim:Z

    if-eqz p0, :cond_31

    new-instance p0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v2, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_3e

    :cond_31
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception p0

    const-string/jumbo p1, "setImageBitmap e ="

    const-string p2, "ImageDownloader"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/togglebar/ImageDownloader;->clearCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public loadBitmap(Ljava/lang/String;Ljava/lang/String;IILandroid/widget/ImageView;)V
    .registers 7

    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_a
    invoke-direct {p0, p2}, Lcom/android/launcher/togglebar/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/togglebar/ImageDownloader;->forceDownload(Ljava/lang/String;Ljava/lang/String;IILandroid/widget/ImageView;)V

    goto :goto_1d

    :cond_14
    if-nez p1, :cond_17

    move-object p1, p2

    :cond_17
    invoke-static {p1, p5}, Lcom/android/launcher/togglebar/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1d
    return-void
.end method

.method public setIsAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsAnim:Z

    return-void
.end method

.method public setIsThumb(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/ImageDownloader;->mIsThumb:Z

    return-void
.end method
