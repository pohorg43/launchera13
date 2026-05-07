.class public Lt0/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/u$d;,
        Lt0/u$g;,
        Lt0/u$c;,
        Lt0/u$f;,
        Lt0/u$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lt0/u$e;


# instance fields
.field public final a:Lt0/u$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/u$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ln0/c;

.field public final c:Lt0/u$e;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lt0/u$a;

    invoke-direct {v1}, Lt0/u$a;-><init>()V

    new-instance v2, Lj0/d;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    invoke-direct {v2, v3, v0, v1}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lj0/d$b;)V

    sput-object v2, Lt0/u;->d:Lj0/d;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lt0/u$b;

    invoke-direct {v1}, Lt0/u$b;-><init>()V

    new-instance v2, Lj0/d;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    invoke-direct {v2, v3, v0, v1}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lj0/d$b;)V

    sput-object v2, Lt0/u;->e:Lj0/d;

    new-instance v0, Lt0/u$e;

    invoke-direct {v0}, Lt0/u$e;-><init>()V

    sput-object v0, Lt0/u;->f:Lt0/u$e;

    return-void
.end method

.method public constructor <init>(Ln0/c;Lt0/u$f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln0/c;",
            "Lt0/u$f<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lt0/u;->f:Lt0/u$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/u;->b:Ln0/c;

    iput-object p2, p0, Lt0/u;->a:Lt0/u$f;

    iput-object v0, p0, Lt0/u;->c:Lt0/u$e;

    return-void
.end method

.method public static c(Landroid/media/MediaMetadataRetriever;JIIILt0/i;)Landroid/graphics/Bitmap;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_5a

    if-eq p5, v0, :cond_5a

    sget-object v0, Lt0/i;->b:Lt0/i;

    if-eq p6, v0, :cond_5a

    const/16 v0, 0x12

    :try_start_c
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_30

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_33

    :cond_30
    move v8, v1

    move v1, v0

    move v0, v8

    :cond_33
    invoke-virtual {p6, v0, v1, p4, p5}, Lt0/i;->b(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float/2addr p5, p4

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4b

    goto :goto_5b

    :catchall_4b
    move-exception p4

    const/4 p5, 0x3

    const-string p6, "VideoDecoder"

    invoke-static {p6, p5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_5a

    const-string p5, "Exception trying to decode frame on oreo+"

    invoke-static {p6, p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5a
    const/4 p4, 0x0

    :goto_5b
    if-nez p4, :cond_61

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_61
    return-object p4
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lj0/e;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lj0/e;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lm0/w;
    .registers 13
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lj0/e;",
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

    sget-object v0, Lt0/u;->d:Lj0/d;

    invoke-virtual {p4, v0}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_25

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_19

    goto :goto_25

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-static {p1, v2, v3}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    :goto_25
    sget-object v0, Lt0/u;->e:Lj0/d;

    invoke-virtual {p4, v0}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_34

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_34
    sget-object v1, Lt0/i;->d:Lj0/d;

    invoke-virtual {p4, v1}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lt0/i;

    if-nez p4, :cond_40

    sget-object p4, Lt0/i;->c:Lt0/i;

    :cond_40
    move-object v7, p4

    iget-object p4, p0, Lt0/u;->c:Lt0/u$e;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_4b
    iget-object v1, p0, Lt0/u;->a:Lt0/u$f;

    invoke-interface {v1, p4, p1}, Lt0/u$f;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p4

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lt0/u;->c(Landroid/media/MediaMetadataRetriever;JIIILt0/i;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_5b} :catch_67
    .catchall {:try_start_4b .. :try_end_5b} :catchall_65

    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-object p0, p0, Lt0/u;->b:Ln0/c;

    invoke-static {p1, p0}, Lt0/e;->d(Landroid/graphics/Bitmap;Ln0/c;)Lt0/e;

    move-result-object p0

    return-object p0

    :catchall_65
    move-exception p0

    goto :goto_6e

    :catch_67
    move-exception p0

    :try_start_68
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_65

    :goto_6e
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method
