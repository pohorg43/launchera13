.class public final Lt0/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/j$b;
    }
.end annotation


# static fields
.field public static final f:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Lcom/bumptech/glide/load/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Lcom/bumptech/glide/load/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lt0/j$b;

.field public static final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ln0/c;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Ln0/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lt0/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/b;->a:Lcom/bumptech/glide/load/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    invoke-static {v1, v0}, Lj0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lj0/d;

    move-result-object v0

    sput-object v0, Lt0/j;->f:Lj0/d;

    sget-object v0, Lcom/bumptech/glide/load/e;->a:Lcom/bumptech/glide/load/e;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    invoke-static {v1, v0}, Lj0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lj0/d;

    move-result-object v0

    sput-object v0, Lt0/j;->g:Lj0/d;

    sget-object v0, Lt0/i;->d:Lj0/d;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v1, v0}, Lj0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lj0/d;

    move-result-object v1

    sput-object v1, Lt0/j;->h:Lj0/d;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v1, v0}, Lj0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lj0/d;

    move-result-object v0

    sput-object v0, Lt0/j;->i:Lj0/d;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    new-instance v0, Lt0/j$a;

    invoke-direct {v0}, Lt0/j$a;-><init>()V

    sput-object v0, Lt0/j;->j:Lt0/j$b;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    sget-object v0, Lg1/f;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lt0/j;->k:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Ln0/c;Ln0/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Ln0/c;",
            "Ln0/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lt0/n;->a()Lt0/n;

    move-result-object v0

    iput-object v0, p0, Lt0/j;->e:Lt0/n;

    iput-object p1, p0, Lt0/j;->d:Ljava/util/List;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lt0/j;->b:Landroid/util/DisplayMetrics;

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lt0/j;->a:Ln0/c;

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lt0/j;->c:Ln0/b;

    return-void
.end method

.method public static d(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Downsampler"

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_c

    invoke-interface {p2}, Lt0/j$b;->a()V

    invoke-interface {p0}, Lt0/o;->c()V

    :cond_c
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v4, Lt0/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_17
    invoke-interface {p0, p1}, Lt0/o;->b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1b} :catch_21
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_1f
    move-exception p0

    goto :goto_48

    :catch_21
    move-exception v4

    :try_start_22
    invoke-static {v4, v1, v2, v3, p1}, Lt0/j;->i(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_1f

    if-eqz v0, :cond_47

    :try_start_36
    invoke-interface {p3, v0}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Lt0/j;->d(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_46
    .catchall {:try_start_36 .. :try_end_40} :catchall_1f

    sget-object p1, Lt0/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_46
    :try_start_46
    throw v1

    :cond_47
    throw v1
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_1f

    :goto_48
    sget-object p1, Lt0/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static e(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, " ("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(D)I
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_7

    goto :goto_9

    :cond_7
    div-double p0, v0, p0

    :goto_9
    const-wide v0, 0x41dfffffffc00000L  # 2.147483647E9

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static g(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2, p3}, Lt0/j;->d(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method public static h(I)Z
    .registers 2

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static i(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .registers 9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception decoding bitmap, outWidth: "

    const-string v2, ", outHeight: "

    const-string v3, ", outMimeType: "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", inBitmap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lt0/j;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static j(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3

    invoke-static {p0}, Lt0/j;->k(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v0, Lt0/j;->k:Ljava/util/Queue;

    monitor-enter v0

    :try_start_6
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static k(Landroid/graphics/BitmapFactory$Options;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public static l(D)I
    .registers 4

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILj0/e;Lt0/j$b;)Lm0/w;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lj0/e;",
            "Lt0/j$b;",
            ")",
            "Lm0/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lt0/o$a;

    iget-object v0, p0, Lt0/j;->d:Ljava/util/List;

    iget-object v2, p0, Lt0/j;->c:Ln0/b;

    invoke-direct {v1, p1, v0, v2}, Lt0/o$a;-><init>(Ljava/io/InputStream;Ljava/util/List;Ln0/b;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lt0/j;->b(Lt0/o;IILj0/e;Lt0/j$b;)Lm0/w;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lt0/o;IILj0/e;Lt0/j$b;)Lm0/w;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/o;",
            "II",
            "Lj0/e;",
            "Lt0/j$b;",
            ")",
            "Lm0/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p4

    iget-object v1, v12, Lt0/j;->c:Ln0/b;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    const-class v1, Lt0/j;

    monitor-enter v1

    :try_start_13
    sget-object v2, Lt0/j;->k:Ljava/util/Queue;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_97

    :try_start_16
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_94

    if-nez v3, :cond_2a

    :try_start_22
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v3}, Lt0/j;->k(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_97

    :cond_2a
    move-object v14, v3

    monitor-exit v1

    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v1, Lt0/j;->f:Lj0/d;

    invoke-virtual {v0, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/b;

    sget-object v1, Lt0/j;->g:Lj0/d;

    invoke-virtual {v0, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/bumptech/glide/load/e;

    sget-object v1, Lt0/i;->d:Lj0/d;

    invoke-virtual {v0, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lt0/i;

    sget-object v1, Lt0/j;->h:Lj0/d;

    invoke-virtual {v0, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, Lt0/j;->i:Lj0/d;

    invoke-virtual {v0, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v0, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    move v7, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    :try_start_77
    invoke-virtual/range {v1 .. v11}, Lt0/j;->c(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/i;Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/e;ZIIZLt0/j$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v12, Lt0/j;->a:Ln0/c;

    invoke-static {v0, v1}, Lt0/e;->d(Landroid/graphics/Bitmap;Ln0/c;)Lt0/e;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_8a

    invoke-static {v14}, Lt0/j;->j(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v1, v12, Lt0/j;->c:Ln0/b;

    invoke-interface {v1, v13}, Ln0/b;->d(Ljava/lang/Object;)V

    return-object v0

    :catchall_8a
    move-exception v0

    invoke-static {v14}, Lt0/j;->j(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v1, v12, Lt0/j;->c:Ln0/b;

    invoke-interface {v1, v13}, Ln0/b;->d(Ljava/lang/Object;)V

    throw v0

    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/i;Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/e;ZIIZLt0/j$b;)Landroid/graphics/Bitmap;
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p10

    sget v8, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    iget-object v10, v1, Lt0/j;->a:Ln0/c;

    invoke-static {v2, v3, v7, v10}, Lt0/j;->g(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)[I

    move-result-object v10

    const/4 v11, 0x0

    aget v12, v10, v11

    const/4 v13, 0x1

    aget v10, v10, v13

    iget-object v14, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v15, -0x1

    if-eq v12, v15, :cond_2d

    if-ne v10, v15, :cond_2a

    goto :goto_2d

    :cond_2a
    move/from16 v15, p6

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v15, v11

    :goto_2e
    invoke-interface/range {p1 .. p1}, Lt0/o;->a()I

    move-result v16

    packed-switch v16, :pswitch_data_4e8

    move/from16 p6, v11

    goto :goto_42

    :pswitch_38  #0x7, 0x8
    const/16 v17, 0x10e

    goto :goto_40

    :pswitch_3b  #0x5, 0x6
    const/16 v17, 0x5a

    goto :goto_40

    :pswitch_3e  #0x3, 0x4
    const/16 v17, 0xb4

    :goto_40
    move/from16 p6, v17

    :goto_42
    packed-switch v16, :pswitch_data_4f8

    goto :goto_47

    :pswitch_46  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    move v11, v13

    :goto_47
    const/high16 v13, -0x80000000

    if-ne v5, v13, :cond_59

    invoke-static/range {p6 .. p6}, Lt0/j;->h(I)Z

    move-result v17

    if-eqz v17, :cond_55

    move-wide/from16 v17, v8

    move v8, v10

    goto :goto_5c

    :cond_55
    move-wide/from16 v17, v8

    move v8, v12

    goto :goto_5c

    :cond_59
    move-wide/from16 v17, v8

    move v8, v5

    :goto_5c
    if-ne v6, v13, :cond_68

    invoke-static/range {p6 .. p6}, Lt0/j;->h(I)Z

    move-result v9

    if-eqz v9, :cond_66

    move v9, v12

    goto :goto_69

    :cond_66
    move v9, v10

    goto :goto_69

    :cond_68
    move v9, v6

    :goto_69
    invoke-interface/range {p1 .. p1}, Lt0/o;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v13

    iget-object v6, v1, Lt0/j;->a:Ln0/c;

    const-string v5, "]"

    move-object/from16 v19, v14

    const-string v14, ", target density: "

    const-string v4, ", density: "

    move/from16 v20, v11

    const-string/jumbo v11, "x"

    move/from16 v21, v15

    const-string v15, "Downsampler"

    if-lez v12, :cond_252

    if-gtz v10, :cond_90

    const/4 v0, 0x3

    move v6, v9

    move v9, v12

    move-object v1, v14

    move-object v7, v15

    move v14, v10

    move v10, v8

    move v8, v0

    move-object v0, v5

    move-object v5, v11

    goto/16 :goto_25b

    :cond_90
    invoke-static/range {p6 .. p6}, Lt0/j;->h(I)Z

    move-result v22

    move-object/from16 v23, v4

    if-eqz v22, :cond_9d

    move-object/from16 v22, v5

    move v1, v10

    move v5, v12

    goto :goto_a1

    :cond_9d
    move-object/from16 v22, v5

    move v5, v10

    move v1, v12

    :goto_a1
    invoke-virtual {v0, v1, v5, v8, v9}, Lt0/i;->b(IIII)F

    move-result v4

    const/16 v24, 0x0

    cmpg-float v24, v4, v24

    if-lez v24, :cond_216

    move-object/from16 v24, v14

    invoke-virtual {v0, v1, v5, v8, v9}, Lt0/i;->a(IIII)I

    move-result v14

    if-eqz v14, :cond_20e

    move/from16 v25, v10

    int-to-float v10, v1

    move-object/from16 v26, v11

    mul-float v11, v4, v10

    move/from16 v27, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Lt0/j;->l(D)I

    move-result v11

    int-to-float v12, v5

    move-object/from16 v28, v15

    mul-float v15, v4, v12

    move/from16 v29, v8

    move/from16 v30, v9

    float-to-double v8, v15

    invoke-static {v8, v9}, Lt0/j;->l(D)I

    move-result v8

    div-int v9, v1, v11

    div-int v8, v5, v8

    const/4 v11, 0x1

    if-ne v14, v11, :cond_db

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_df

    :cond_db
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_df
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-ne v14, v11, :cond_f3

    int-to-float v9, v8

    const/high16 v11, 0x3f800000  # 1.0f

    div-float/2addr v11, v4

    cmpg-float v9, v9, v11

    if-gez v9, :cond_f3

    shl-int/lit8 v8, v8, 0x1

    :cond_f3
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v9, :cond_119

    const/16 v1, 0x8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v10, v1

    float-to-double v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-float/2addr v12, v1

    float-to-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    div-int/lit8 v6, v8, 0x8

    if-lez v6, :cond_114

    div-int/2addr v5, v6

    div-int/2addr v1, v6

    :cond_114
    :goto_114
    move/from16 v10, v29

    move/from16 v6, v30

    goto :goto_167

    :cond_119
    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v13, v9, :cond_157

    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v9, :cond_122

    goto :goto_157

    :cond_122
    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v13, v9, :cond_14b

    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v9, :cond_12b

    goto :goto_14b

    :cond_12b
    rem-int v9, v1, v8

    if-nez v9, :cond_140

    rem-int v9, v5, v8

    if-eqz v9, :cond_134

    goto :goto_140

    :cond_134
    div-int/2addr v1, v8

    div-int/2addr v5, v8

    move/from16 v10, v29

    move/from16 v6, v30

    move/from16 v31, v5

    move v5, v1

    move/from16 v1, v31

    goto :goto_167

    :cond_140
    :goto_140
    invoke-static {v2, v3, v7, v6}, Lt0/j;->g(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)[I

    move-result-object v1

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v1, v1, v6

    goto :goto_114

    :cond_14b
    :goto_14b
    int-to-float v1, v8

    div-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-float/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_114

    :cond_157
    :goto_157
    int-to-float v1, v8

    div-float/2addr v10, v1

    float-to-double v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-float/2addr v12, v1

    float-to-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v1, v9

    goto :goto_114

    :goto_167
    invoke-virtual {v0, v5, v1, v10, v6}, Lt0/i;->b(IIII)F

    move-result v0

    float-to-double v11, v0

    invoke-static {v11, v12}, Lt0/j;->f(D)I

    move-result v0

    int-to-double v13, v0

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Lt0/j;->l(D)I

    move-result v9

    int-to-float v13, v9

    int-to-float v0, v0

    div-float/2addr v13, v0

    float-to-double v13, v13

    div-double v13, v11, v13

    move v15, v8

    int-to-double v7, v9

    mul-double/2addr v13, v7

    invoke-static {v13, v14}, Lt0/j;->l(D)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {v11, v12}, Lt0/j;->f(D)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v7, :cond_195

    if-lez v0, :cond_195

    if-eq v7, v0, :cond_195

    const/4 v0, 0x1

    goto :goto_196

    :cond_195
    const/4 v0, 0x0

    :goto_196
    if-eqz v0, :cond_19c

    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_1a1

    :cond_19c
    const/4 v0, 0x0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_1a1
    const/4 v0, 0x2

    move-object/from16 v7, v28

    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1ff

    const-string v0, "Calculate scaling, source: ["

    const-string v8, "], degreesToRotate: "

    move/from16 v14, v25

    move-object/from16 v13, v26

    move/from16 v9, v27

    invoke-static {v0, v9, v13, v14, v8}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", target: ["

    move/from16 p3, v15

    move/from16 v15, p6

    invoke-static {v0, v15, v8, v10, v13}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v8, "], power of two scaled: ["

    invoke-static {v0, v6, v8, v5, v13}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], exact scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power of 2 sample size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjusted scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_209

    :cond_1ff
    move-object/from16 v4, v23

    move-object/from16 v1, v24

    move/from16 v14, v25

    move-object/from16 v13, v26

    move/from16 v9, v27

    :goto_209
    move-object/from16 v8, p0

    move-object v5, v13

    goto/16 :goto_288

    :cond_20e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_216
    move v6, v9

    move v14, v10

    move-object v13, v11

    move v9, v12

    move v10, v8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot scale with factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-static {v2, v9, v13, v14, v0}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_252
    move-object v0, v5

    move v6, v9

    move-object v5, v11

    move v9, v12

    move-object v1, v14

    move-object v7, v15

    move v14, v10

    move v10, v8

    const/4 v8, 0x3

    :goto_25b
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_286

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to determine dimensions for: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " with target ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_286
    move-object/from16 v8, p0

    :goto_288
    iget-object v0, v8, Lt0/j;->e:Lt0/n;

    move/from16 v13, v20

    move/from16 v11, v21

    invoke-virtual {v0, v10, v6, v11, v13}, Lt0/n;->b(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_29b

    sget-object v11, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x0

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_29b
    if-eqz v0, :cond_2a0

    const/4 v0, 0x1

    move-object v11, v4

    goto :goto_2e4

    :cond_2a0
    sget-object v0, Lcom/bumptech/glide/load/b;->a:Lcom/bumptech/glide/load/b;

    move-object v11, v4

    move-object/from16 v4, p4

    if-eq v4, v0, :cond_2df

    :try_start_2a7
    invoke-interface/range {p1 .. p1}, Lt0/o;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2af} :catch_2b0

    goto :goto_2cd

    :catch_2b0
    move-exception v0

    const/4 v12, 0x3

    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2cc

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2cc
    const/4 v0, 0x0

    :goto_2cd
    if-eqz v0, :cond_2d2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2d4

    :cond_2d2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_2d4
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    if-ne v0, v4, :cond_2dd

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    :cond_2dd
    move v0, v12

    goto :goto_2e4

    :cond_2df
    const/4 v0, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_2e4
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ltz v9, :cond_2f2

    if-ltz v14, :cond_2f2

    if-eqz p9, :cond_2f2

    move/from16 v31, v10

    move v10, v6

    move/from16 v6, v31

    goto :goto_35d

    :cond_2f2
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v6, :cond_2fd

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v10, :cond_2fd

    if-eq v6, v10, :cond_2fd

    goto :goto_2fe

    :cond_2fd
    const/4 v0, 0x0

    :goto_2fe
    if-eqz v0, :cond_306

    int-to-float v0, v6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    goto :goto_308

    :cond_306
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_308
    int-to-float v6, v9

    int-to-float v10, v4

    div-float/2addr v6, v10

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    int-to-float v12, v14

    div-float/2addr v12, v10

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v10, v10

    mul-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v12, 0x2

    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_35d

    const-string v12, "Calculated target ["

    const-string v13, "] for source ["

    invoke-static {v12, v6, v5, v10, v13}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], sampleSize: "

    invoke-static {v12, v9, v5, v14, v13}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", targetDensity: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", density multiplier: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35d
    :goto_35d
    if-lez v6, :cond_376

    if-lez v10, :cond_376

    iget-object v0, v8, Lt0/j;->a:Ln0/c;

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v12, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v12, :cond_36a

    goto :goto_376

    :cond_36a
    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    if-nez v12, :cond_36f

    goto :goto_370

    :cond_36f
    move-object v4, v12

    :goto_370
    invoke-interface {v0, v6, v10, v4}, Ln0/c;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_376
    :goto_376
    sget-object v0, Lcom/bumptech/glide/load/e;->b:Lcom/bumptech/glide/load/e;

    move-object/from16 v4, p5

    if-ne v4, v0, :cond_388

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_388

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_388

    const/4 v0, 0x1

    goto :goto_389

    :cond_388
    const/4 v0, 0x0

    :goto_389
    if-eqz v0, :cond_38e

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_390

    :cond_38e
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_390
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    iget-object v0, v8, Lt0/j;->a:Ln0/c;

    move-object/from16 v4, p10

    invoke-static {v2, v3, v4, v0}, Lt0/j;->d(Lt0/o;Landroid/graphics/BitmapFactory$Options;Lt0/j$b;Ln0/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v8, Lt0/j;->a:Ln0/c;

    invoke-interface {v4, v2, v0}, Lt0/j$b;->b(Ln0/c;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_426

    const-string v2, "Decoded "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lt0/j;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    const-string v6, " with inBitmap "

    move-object/from16 v9, v19

    invoke-static {v2, v4, v9, v6}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lt0/j;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], sample size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lg1/b;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_426
    const/4 v1, 0x0

    if-eqz v0, :cond_4e7

    iget-object v2, v8, Lt0/j;->b:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v2, v8, Lt0/j;->a:Ln0/c;

    packed-switch v16, :pswitch_data_50a

    const/4 v3, 0x0

    goto :goto_438

    :pswitch_437  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const/4 v3, 0x1

    :goto_438
    if-nez v3, :cond_43d

    move-object v1, v0

    goto/16 :goto_4d4

    :cond_43d
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, -0x3d4c0000  # -90.0f

    const/high16 v5, 0x42b40000  # 90.0f

    const/high16 v6, 0x43340000  # 180.0f

    const/high16 v7, -0x40800000  # -1.0f

    packed-switch v16, :pswitch_data_51c

    goto :goto_47a

    :pswitch_44e  #0x8
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_47a

    :pswitch_452  #0x7
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_47a

    :pswitch_45b  #0x6
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_47a

    :pswitch_45f  #0x5
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_47a

    :pswitch_468  #0x4
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_47a

    :pswitch_471  #0x3
    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_47a

    :pswitch_475  #0x2
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_47a
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-eqz v7, :cond_4a8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    goto :goto_4aa

    :cond_4a8
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_4aa
    invoke-interface {v2, v5, v6, v7}, Ln0/c;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v5, v4, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v4, Lt0/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_4c3
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v6, Lt0/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4d0
    .catchall {:try_start_4c3 .. :try_end_4d0} :catchall_4e0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v2

    :goto_4d4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e7

    iget-object v2, v8, Lt0/j;->a:Ln0/c;

    invoke-interface {v2, v0}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    goto :goto_4e7

    :catchall_4e0
    move-exception v0

    sget-object v1, Lt0/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4e7
    :goto_4e7
    return-object v1

    :pswitch_data_4e8
    .packed-switch 0x3
        :pswitch_3e  #00000003
        :pswitch_3e  #00000004
        :pswitch_3b  #00000005
        :pswitch_3b  #00000006
        :pswitch_38  #00000007
        :pswitch_38  #00000008
    .end packed-switch

    :pswitch_data_4f8
    .packed-switch 0x2
        :pswitch_46  #00000002
        :pswitch_46  #00000003
        :pswitch_46  #00000004
        :pswitch_46  #00000005
        :pswitch_46  #00000006
        :pswitch_46  #00000007
        :pswitch_46  #00000008
    .end packed-switch

    :pswitch_data_50a
    .packed-switch 0x2
        :pswitch_437  #00000002
        :pswitch_437  #00000003
        :pswitch_437  #00000004
        :pswitch_437  #00000005
        :pswitch_437  #00000006
        :pswitch_437  #00000007
        :pswitch_437  #00000008
    .end packed-switch

    :pswitch_data_51c
    .packed-switch 0x2
        :pswitch_475  #00000002
        :pswitch_471  #00000003
        :pswitch_468  #00000004
        :pswitch_45f  #00000005
        :pswitch_45b  #00000006
        :pswitch_452  #00000007
        :pswitch_44e  #00000008
    .end packed-switch
.end method
