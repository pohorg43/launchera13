.class public final Lt0/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt0/o;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln0/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk0/m;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ln0/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ln0/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lt0/o$b;->a:Ln0/b;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lt0/o$b;->b:Ljava/util/List;

    new-instance p2, Lk0/m;

    invoke-direct {p2, p1}, Lk0/m;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lt0/o$b;->c:Lk0/m;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lt0/o$b;->b:Ljava/util/List;

    iget-object v1, p0, Lt0/o$b;->c:Lk0/m;

    iget-object p0, p0, Lt0/o$b;->a:Ln0/b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    const/4 v4, -0x1

    if-ge v3, v2, :cond_45

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/ImageHeaderParser;

    const/4 v6, 0x0

    :try_start_15
    new-instance v7, Lt0/q;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v8, p0}, Lt0/q;-><init>(Ljava/io/InputStream;Ln0/b;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_3b

    :try_start_27
    invoke-interface {v5, v7, p0}, Lcom/bumptech/glide/load/ImageHeaderParser;->c(Ljava/io/InputStream;Ln0/b;)I

    move-result v5
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_38

    :try_start_2b
    invoke-virtual {v7}, Lt0/q;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    invoke-virtual {v1}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    if-eq v5, v4, :cond_35

    move v4, v5

    goto :goto_45

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_38
    move-exception p0

    move-object v6, v7

    goto :goto_3c

    :catchall_3b
    move-exception p0

    :goto_3c
    if-eqz v6, :cond_41

    :try_start_3e
    invoke-virtual {v6}, Lt0/q;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    invoke-virtual {v1}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    throw p0

    :cond_45
    :goto_45
    return v4
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lt0/o$b;->c:Lk0/m;

    invoke-virtual {p0}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lt0/o$b;->b:Ljava/util/List;

    iget-object v1, p0, Lt0/o$b;->c:Lk0/m;

    iget-object p0, p0, Lt0/o$b;->a:Ln0/b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_45

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/ImageHeaderParser;

    const/4 v5, 0x0

    :try_start_14
    new-instance v6, Lt0/q;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7, p0}, Lt0/q;-><init>(Ljava/io/InputStream;Ln0/b;)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_3b

    :try_start_26
    invoke-interface {v4, v6}, Lcom/bumptech/glide/load/ImageHeaderParser;->b(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_38

    :try_start_2a
    invoke-virtual {v6}, Lt0/q;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2d

    :catch_2d
    invoke-virtual {v1}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v4, v5, :cond_35

    goto :goto_47

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_38
    move-exception p0

    move-object v5, v6

    goto :goto_3c

    :catchall_3b
    move-exception p0

    :goto_3c
    if-eqz v5, :cond_41

    :try_start_3e
    invoke-virtual {v5}, Lt0/q;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    invoke-virtual {v1}, Lk0/m;->c()Landroid/os/ParcelFileDescriptor;

    throw p0

    :cond_45
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_47
    return-object v4
.end method
