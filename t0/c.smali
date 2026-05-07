.class public Lt0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ln0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    invoke-static {v1, v0}, Lj0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lj0/d;

    move-result-object v0

    sput-object v0, Lt0/c;->b:Lj0/d;

    new-instance v0, Lj0/d;

    sget-object v1, Lj0/d;->e:Lj0/d$b;

    const/4 v2, 0x0

    const-string v3, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    invoke-direct {v0, v3, v2, v1}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lj0/d$b;)V

    sput-object v0, Lt0/c;->c:Lj0/d;

    return-void
.end method

.method public constructor <init>(Ln0/b;)V
    .registers 2
    .param p1  # Ln0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/c;->a:Ln0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/File;Lj0/e;)Z
    .registers 12
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lm0/w;

    const-string v0, "BitmapEncoder"

    invoke-interface {p1}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v1, Lt0/c;->c:Lj0/d;

    invoke-virtual {p3, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v1, :cond_15

    goto :goto_20

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_20

    :cond_1e
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    :try_start_26
    sget v2, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sget-object v4, Lt0/c;->b:Lj0/d;

    invoke-virtual {p3, v4}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_c3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_3a
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_5c
    .catchall {:try_start_3a .. :try_end_3f} :catchall_5a

    :try_start_3f
    iget-object p2, p0, Lt0/c;->a:Ln0/b;

    if-eqz p2, :cond_4c

    new-instance p2, Lk0/c;

    iget-object p0, p0, Lt0/c;->a:Ln0/b;

    invoke-direct {p2, v7, p0}, Lk0/c;-><init>(Ljava/io/OutputStream;Ln0/b;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4a} :catch_57
    .catchall {:try_start_3f .. :try_end_4a} :catchall_55

    move-object v6, p2

    goto :goto_4d

    :cond_4c
    move-object v6, v7

    :goto_4d
    :try_start_4d
    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_53} :catch_5c
    .catchall {:try_start_4d .. :try_end_53} :catchall_5a

    const/4 v5, 0x1

    goto :goto_6b

    :catchall_55
    move-exception p0

    goto :goto_bd

    :catch_57
    move-exception p0

    move-object v6, v7

    goto :goto_5d

    :catchall_5a
    move-exception p0

    goto :goto_bc

    :catch_5c
    move-exception p0

    :goto_5d
    const/4 p2, 0x3

    :try_start_5e
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_69

    const-string p2, "Failed to encode Bitmap"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_5a

    :cond_69
    if-eqz v6, :cond_6e

    :goto_6b
    :try_start_6b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c3

    :catch_6e
    :cond_6e
    const/4 p0, 0x2

    :try_start_6f
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_bb

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Compressed with type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of size "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lg1/f;->c(Landroid/graphics/Bitmap;)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lg1/b;->a(J)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", options format: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lt0/c;->c:Lj0/d;

    invoke-virtual {p3, p2}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", hasAlpha: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_6f .. :try_end_bb} :catchall_c3

    :cond_bb
    return v5

    :goto_bc
    move-object v7, v6

    :goto_bd
    if-eqz v7, :cond_c2

    :try_start_bf
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    :catch_c2
    :cond_c2
    :try_start_c2
    throw p0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    :catchall_c3
    move-exception p0

    throw p0
.end method

.method public b(Lj0/e;)Lcom/bumptech/glide/load/c;
    .registers 2
    .param p1  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/c;->b:Lcom/bumptech/glide/load/c;

    return-object p0
.end method
