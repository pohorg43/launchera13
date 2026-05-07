.class public Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field public static volatile i:Lcom/bumptech/glide/b;

.field public static volatile j:Z


# instance fields
.field public final a:Ln0/c;

.field public final b:Lo0/i;

.field public final c:Lcom/bumptech/glide/d;

.field public final d:Lcom/bumptech/glide/f;

.field public final e:Ln0/b;

.field public final f:Lz0/k;

.field public final g:Lz0/d;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm0/l;Lo0/i;Ln0/c;Ln0/b;Lz0/k;Lz0/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .registers 40
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lm0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lo0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ln0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ln0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lz0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lz0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lm0/l;",
            "Lo0/i;",
            "Ln0/c;",
            "Ln0/b;",
            "Lz0/k;",
            "Lz0/d;",
            "I",
            "Lcom/bumptech/glide/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    const-class v4, Li0/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/bumptech/glide/b;->a:Ln0/c;

    iput-object v3, v0, Lcom/bumptech/glide/b;->e:Ln0/b;

    move-object/from16 v8, p3

    iput-object v8, v0, Lcom/bumptech/glide/b;->b:Lo0/i;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/bumptech/glide/b;->f:Lz0/k;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/bumptech/glide/b;->g:Lz0/d;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Lcom/bumptech/glide/f;

    invoke-direct {v9}, Lcom/bumptech/glide/f;-><init>()V

    iput-object v9, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/f;

    new-instance v10, Lt0/h;

    invoke-direct {v10}, Lt0/h;-><init>()V

    iget-object v11, v9, Lcom/bumptech/glide/f;->g:Lb1/b;

    monitor-enter v11

    :try_start_3d
    iget-object v12, v11, Lb1/b;->a:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3cc

    monitor-exit v11

    new-instance v10, Lt0/m;

    invoke-direct {v10}, Lt0/m;-><init>()V

    iget-object v11, v9, Lcom/bumptech/glide/f;->g:Lb1/b;

    monitor-enter v11

    :try_start_4b
    iget-object v12, v11, Lb1/b;->a:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_3c9

    monitor-exit v11

    invoke-virtual {v9}, Lcom/bumptech/glide/f;->e()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {v11, v2, v10, v1, v3}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Landroid/content/Context;Ljava/util/List;Ln0/c;Ln0/b;)V

    new-instance v12, Lt0/u;

    new-instance v13, Lt0/u$g;

    invoke-direct {v13}, Lt0/u$g;-><init>()V

    invoke-direct {v12, v1, v13}, Lt0/u;-><init>(Ln0/c;Lt0/u$f;)V

    new-instance v13, Lt0/j;

    invoke-virtual {v9}, Lcom/bumptech/glide/f;->e()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-direct {v13, v14, v15, v1, v3}, Lt0/j;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Ln0/c;Ln0/b;)V

    const/4 v14, 0x0

    if-eqz p13, :cond_81

    new-instance v15, Lt0/p;

    invoke-direct {v15}, Lt0/p;-><init>()V

    new-instance v16, Lt0/g;

    invoke-direct/range {v16 .. v16}, Lt0/g;-><init>()V

    move-object/from16 v14, v16

    goto :goto_90

    :cond_81
    new-instance v15, Lt0/f;

    invoke-direct {v15, v13, v14}, Lt0/f;-><init>(Lt0/j;I)V

    new-instance v14, Lt0/r;

    invoke-direct {v14, v13, v3}, Lt0/r;-><init>(Lt0/j;Ln0/b;)V

    move-object/from16 v25, v15

    move-object v15, v14

    move-object/from16 v14, v25

    :goto_90
    new-instance v0, Lv0/d;

    invoke-direct {v0, v2}, Lv0/d;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v7

    new-instance v7, Lq0/s$c;

    invoke-direct {v7, v8}, Lq0/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Lq0/s$d;

    invoke-direct {v2, v8}, Lq0/s$d;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    new-instance v5, Lq0/s$b;

    invoke-direct {v5, v8}, Lq0/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v2

    new-instance v2, Lq0/s$a;

    invoke-direct {v2, v8}, Lq0/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p7, v2

    new-instance v2, Lt0/c;

    invoke-direct {v2, v3}, Lt0/c;-><init>(Ln0/b;)V

    move-object/from16 v18, v6

    new-instance v6, Ly0/a;

    invoke-direct {v6}, Ly0/a;-><init>()V

    move-object/from16 p13, v6

    new-instance v6, Ly0/d;

    invoke-direct {v6}, Ly0/d;-><init>()V

    move-object/from16 v19, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v20, v6

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v21, v5

    new-instance v5, Lq0/c;

    invoke-direct {v5}, Lq0/c;-><init>()V

    invoke-virtual {v9, v6, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Lj0/a;)Lcom/bumptech/glide/f;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lq0/t;

    invoke-direct {v6, v3}, Lq0/t;-><init>(Ln0/b;)V

    invoke-virtual {v9, v5, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Lj0/a;)Lcom/bumptech/glide/f;

    const-string v5, "Bitmap"

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v22, v7

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5, v6, v7, v14}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v5, "Bitmap"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5, v6, v7, v15}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    new-instance v0, Lt0/f;

    move-object/from16 v24, v4

    const/4 v4, 0x1

    invoke-direct {v0, v13, v4}, Lt0/f;-><init>(Lt0/j;I)V

    invoke-virtual {v9, v5, v6, v7, v0}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "Bitmap"

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0, v4, v5, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "Bitmap"

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lt0/u;

    new-instance v7, Lt0/u$c;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lt0/u$c;-><init>(Lt0/u$a;)V

    invoke-direct {v6, v1, v7}, Lt0/u;-><init>(Ln0/c;Lt0/u$f;)V

    invoke-virtual {v9, v0, v4, v5, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/Bitmap;

    sget-object v5, Lq0/v$a;->a:Lq0/v$a;

    invoke-virtual {v9, v0, v4, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-string v0, "Bitmap"

    const-class v4, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lt0/t;

    invoke-direct {v7}, Lt0/t;-><init>()V

    invoke-virtual {v9, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0, v2}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lj0/f;)Lcom/bumptech/glide/f;

    const-string v0, "BitmapDrawable"

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lt0/a;

    invoke-direct {v7, v8, v14}, Lt0/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v9, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "BitmapDrawable"

    const-class v4, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lt0/a;

    invoke-direct {v7, v8, v15}, Lt0/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v9, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "BitmapDrawable"

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lt0/a;

    invoke-direct {v7, v8, v12}, Lt0/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v9, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lt0/b;

    invoke-direct {v4, v1, v2}, Lt0/b;-><init>(Ln0/c;Lj0/f;)V

    invoke-virtual {v9, v0, v4}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lj0/f;)Lcom/bumptech/glide/f;

    const-string v0, "Gif"

    const-class v2, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/d;

    invoke-direct {v6, v10, v11, v3}, Lcom/bumptech/glide/load/resource/gif/d;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/f;Ln0/b;)V

    invoke-virtual {v9, v0, v2, v4, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "Gif"

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v9, v0, v2, v4, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v2, Lx0/b;

    invoke-direct {v2}, Lx0/b;-><init>()V

    invoke-virtual {v9, v0, v2}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lj0/f;)Lcom/bumptech/glide/f;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v0, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-string v2, "Bitmap"

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/c;

    invoke-direct {v6, v1}, Lcom/bumptech/glide/load/resource/gif/c;-><init>(Ln0/c;)V

    invoke-virtual {v9, v2, v0, v4, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v4, "legacy_append"

    move-object/from16 v6, v23

    invoke-virtual {v9, v4, v0, v2, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v4, Lt0/a;

    invoke-direct {v4, v6, v1}, Lt0/a;-><init>(Lv0/d;Ln0/c;)V

    const-string v6, "legacy_append"

    invoke-virtual {v9, v6, v0, v2, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    new-instance v0, Lu0/a$a;

    invoke-direct {v0}, Lu0/a$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/f;->h(Lk0/e$a;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v4, Lq0/d$b;

    invoke-direct {v4}, Lq0/d$b;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lq0/f$e;

    invoke-direct {v4}, Lq0/f$e;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    new-instance v4, Lw0/a;

    invoke-direct {v4}, Lw0/a;-><init>()V

    const-string v6, "legacy_append"

    invoke-virtual {v9, v6, v0, v2, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lq0/f$b;

    invoke-direct {v4}, Lq0/f$b;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    new-instance v0, Lk0/k$a;

    invoke-direct {v0, v3}, Lk0/k$a;-><init>(Ln0/b;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/f;->h(Lk0/e$a;)Lcom/bumptech/glide/f;

    new-instance v0, Lk0/m$a;

    invoke-direct {v0}, Lk0/m$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/f;->h(Lk0/e$a;)Lcom/bumptech/glide/f;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v4, v22

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v6, v21

    invoke-virtual {v9, v0, v2, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v7, v18

    invoke-virtual {v9, v7, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v7, v2, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/net/Uri;

    move-object/from16 v4, p6

    invoke-virtual {v9, v7, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v6, p7

    invoke-virtual {v9, v0, v2, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v9, v7, v2, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lq0/e$c;

    invoke-direct {v2}, Lq0/e$c;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v6, Lq0/e$c;

    invoke-direct {v6}, Lq0/e$c;-><init>()V

    invoke-virtual {v9, v0, v2, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lq0/u$c;

    invoke-direct {v2}, Lq0/u$c;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lq0/u$b;

    invoke-direct {v2}, Lq0/u$b;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v2, Lq0/u$a;

    invoke-direct {v2}, Lq0/u$a;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lr0/b$a;

    invoke-direct {v4}, Lr0/b$a;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lq0/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v4, v6}, Lq0/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lq0/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v4, v6}, Lq0/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lr0/c$a;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Lr0/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lr0/d$a;

    invoke-direct {v4, v6}, Lr0/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lr0/e$c;

    invoke-direct {v4, v6}, Lr0/e$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lr0/e$b;

    invoke-direct {v4, v6}, Lr0/e$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lq0/w$d;

    move-object/from16 v7, v20

    invoke-direct {v4, v7}, Lq0/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lq0/w$b;

    invoke-direct {v4, v7}, Lq0/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v4, Lq0/w$a;

    invoke-direct {v4, v7}, Lq0/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lq0/x$a;

    invoke-direct {v4}, Lq0/x$a;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/net/URL;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lr0/f$a;

    invoke-direct {v4}, Lr0/f$a;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/File;

    new-instance v4, Lq0/k$a;

    invoke-direct {v4, v6}, Lq0/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Lq0/g;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lr0/a$a;

    invoke-direct {v4}, Lr0/a$a;-><init>()V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v2, Lq0/b$a;

    invoke-direct {v2}, Lq0/b$a;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lq0/b$d;

    invoke-direct {v2}, Lq0/b$d;-><init>()V

    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v2, Landroid/graphics/drawable/Drawable;

    new-instance v5, Lv0/e;

    invoke-direct {v5}, Lv0/e;-><init>()V

    const-string v7, "legacy_append"

    invoke-virtual {v9, v7, v0, v2, v5}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Ly0/b;

    invoke-direct {v5, v8}, Ly0/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ly0/e;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v2, p13

    invoke-virtual {v9, v0, v4, v2}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ly0/e;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v5, Ly0/c;

    move-object/from16 v7, v19

    invoke-direct {v5, v1, v2, v7}, Ly0/c;-><init>(Ln0/c;Ly0/e;Ly0/e;)V

    invoke-virtual {v9, v0, v4, v5}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ly0/e;)Lcom/bumptech/glide/f;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ly0/e;)Lcom/bumptech/glide/f;

    new-instance v0, Lt0/u;

    new-instance v2, Lt0/u$d;

    invoke-direct {v2}, Lt0/u$d;-><init>()V

    invoke-direct {v0, v1, v2}, Lt0/u;-><init>(Ln0/c;Lt0/u$f;)V

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    const-string v4, "legacy_append"

    invoke-virtual {v9, v4, v1, v2, v0}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lt0/a;

    invoke-direct {v4, v8, v0}, Lt0/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    const-string v0, "legacy_append"

    invoke-virtual {v9, v0, v1, v2, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    new-instance v5, Ld1/b;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ld1/b;-><init>(I)V

    new-instance v0, Lcom/bumptech/glide/d;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v9

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;Ln0/b;Lcom/bumptech/glide/f;Ld1/b;Lcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lm0/l;ZI)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    return-void

    :catchall_3c9
    move-exception v0

    monitor-exit v11

    throw v0

    :catchall_3cc
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .registers 27
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    sget-boolean v0, Lcom/bumptech/glide/b;->j:Z

    if-nez v0, :cond_31e

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/b;->j:Z

    new-instance v1, Lcom/bumptech/glide/c;

    invoke-direct {v1}, Lcom/bumptech/glide/c;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const-string v2, "ManifestParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "Loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_26
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x2

    if-nez v5, :cond_45

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v4, "Got null app info metadata"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_45
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_61

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got app info metadata: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6b
    :goto_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "GlideModule"

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-static {v7}, La1/e;->a(Ljava/lang/String;)La1/c;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded Glide module: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_a6} :catch_315

    goto :goto_6b

    :cond_a7
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v4, "Finished loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    const-string v2, "Glide"

    if-eqz p1, :cond_fd

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->c()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->c()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La1/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_df

    goto :goto_c8

    :cond_df
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_f9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_c8

    :cond_fd
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_128

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_107
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_128

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/c;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    :cond_128
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/c;->m:Lz0/k$b;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La1/c;

    invoke-interface {v3, v15, v1}, La1/b;->a(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    goto :goto_12f

    :cond_13f
    iget-object v2, v1, Lcom/bumptech/glide/c;->f:Lp0/a;

    const/4 v13, 0x0

    if-nez v2, :cond_17c

    invoke-static {}, Lp0/a;->a()I

    move-result v18

    const-string/jumbo v2, "source"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_174

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lp0/a$a;

    sget-object v5, Lp0/a$b;->a:Lp0/a$b;

    invoke-direct {v4, v2, v5, v13}, Lp0/a$a;-><init>(Ljava/lang/String;Lp0/a$b;Z)V

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Lp0/a;

    invoke-direct {v2, v3}, Lp0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->f:Lp0/a;

    goto :goto_17c

    :cond_174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17c
    :goto_17c
    iget-object v2, v1, Lcom/bumptech/glide/c;->g:Lp0/a;

    if-nez v2, :cond_1b7

    sget v2, Lp0/a;->c:I

    const-string v2, "disk-cache"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1af

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lp0/a$a;

    sget-object v5, Lp0/a$b;->a:Lp0/a$b;

    invoke-direct {v4, v2, v5, v0}, Lp0/a$a;-><init>(Ljava/lang/String;Lp0/a$b;Z)V

    const/16 v18, 0x1

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Lp0/a;

    invoke-direct {v2, v3}, Lp0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->g:Lp0/a;

    goto :goto_1b7

    :cond_1af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b7
    :goto_1b7
    iget-object v2, v1, Lcom/bumptech/glide/c;->n:Lp0/a;

    if-nez v2, :cond_1fa

    invoke-static {}, Lp0/a;->a()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1c5

    move/from16 v18, v6

    goto :goto_1c7

    :cond_1c5
    move/from16 v18, v0

    :goto_1c7
    const-string v2, "animation"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f2

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lp0/a$a;

    sget-object v5, Lp0/a$b;->a:Lp0/a$b;

    invoke-direct {v4, v2, v5, v0}, Lp0/a$a;-><init>(Ljava/lang/String;Lp0/a$b;Z)V

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lp0/a;

    invoke-direct {v0, v3}, Lp0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->n:Lp0/a;

    goto :goto_1fa

    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fa
    :goto_1fa
    iget-object v0, v1, Lcom/bumptech/glide/c;->i:Lo0/j;

    if-nez v0, :cond_20a

    new-instance v0, Lo0/j$a;

    invoke-direct {v0, v15}, Lo0/j$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lo0/j;

    invoke-direct {v2, v0}, Lo0/j;-><init>(Lo0/j$a;)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->i:Lo0/j;

    :cond_20a
    iget-object v0, v1, Lcom/bumptech/glide/c;->j:Lz0/d;

    if-nez v0, :cond_215

    new-instance v0, Lz0/f;

    invoke-direct {v0}, Lz0/f;-><init>()V

    iput-object v0, v1, Lcom/bumptech/glide/c;->j:Lz0/d;

    :cond_215
    iget-object v0, v1, Lcom/bumptech/glide/c;->c:Ln0/c;

    if-nez v0, :cond_22f

    iget-object v0, v1, Lcom/bumptech/glide/c;->i:Lo0/j;

    iget v0, v0, Lo0/j;->a:I

    if-lez v0, :cond_228

    new-instance v2, Ln0/i;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Ln0/i;-><init>(J)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->c:Ln0/c;

    goto :goto_22f

    :cond_228
    new-instance v0, Ln0/d;

    invoke-direct {v0}, Ln0/d;-><init>()V

    iput-object v0, v1, Lcom/bumptech/glide/c;->c:Ln0/c;

    :cond_22f
    :goto_22f
    iget-object v0, v1, Lcom/bumptech/glide/c;->d:Ln0/b;

    if-nez v0, :cond_23e

    new-instance v0, Ln0/h;

    iget-object v2, v1, Lcom/bumptech/glide/c;->i:Lo0/j;

    iget v2, v2, Lo0/j;->d:I

    invoke-direct {v0, v2}, Ln0/h;-><init>(I)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->d:Ln0/b;

    :cond_23e
    iget-object v0, v1, Lcom/bumptech/glide/c;->e:Lo0/i;

    if-nez v0, :cond_24e

    new-instance v0, Lo0/h;

    iget-object v2, v1, Lcom/bumptech/glide/c;->i:Lo0/j;

    iget v2, v2, Lo0/j;->b:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lo0/h;-><init>(J)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->e:Lo0/i;

    :cond_24e
    iget-object v0, v1, Lcom/bumptech/glide/c;->h:Lo0/a$a;

    if-nez v0, :cond_259

    new-instance v0, Lo0/g;

    invoke-direct {v0, v15}, Lo0/g;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->h:Lo0/a$a;

    :cond_259
    iget-object v0, v1, Lcom/bumptech/glide/c;->b:Lm0/l;

    if-nez v0, :cond_296

    new-instance v0, Lm0/l;

    iget-object v3, v1, Lcom/bumptech/glide/c;->e:Lo0/i;

    iget-object v4, v1, Lcom/bumptech/glide/c;->h:Lo0/a$a;

    iget-object v5, v1, Lcom/bumptech/glide/c;->g:Lp0/a;

    iget-object v6, v1, Lcom/bumptech/glide/c;->f:Lp0/a;

    new-instance v7, Lp0/a;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v19, Lp0/a;->b:J

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lp0/a$a;

    sget-object v9, Lp0/a$b;->a:Lp0/a$b;

    const-string/jumbo v10, "source-unlimited"

    invoke-direct {v8, v10, v9, v13}, Lp0/a$a;-><init>(Ljava/lang/String;Lp0/a$b;Z)V

    const/16 v17, 0x0

    const v18, 0x7fffffff

    move-object/from16 v16, v2

    move-object/from16 v23, v8

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v7, v2}, Lp0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v8, v1, Lcom/bumptech/glide/c;->n:Lp0/a;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lm0/l;-><init>(Lo0/i;Lo0/a$a;Lp0/a;Lp0/a;Lp0/a;Lp0/a;Z)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->b:Lm0/l;

    :cond_296
    iget-object v0, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    if-nez v0, :cond_2a1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    goto :goto_2a7

    :cond_2a1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    :goto_2a7
    new-instance v8, Lz0/k;

    iget-object v0, v1, Lcom/bumptech/glide/c;->m:Lz0/k$b;

    invoke-direct {v8, v0}, Lz0/k;-><init>(Lz0/k$b;)V

    new-instance v0, Lcom/bumptech/glide/b;

    iget-object v4, v1, Lcom/bumptech/glide/c;->b:Lm0/l;

    iget-object v5, v1, Lcom/bumptech/glide/c;->e:Lo0/i;

    iget-object v6, v1, Lcom/bumptech/glide/c;->c:Ln0/c;

    iget-object v7, v1, Lcom/bumptech/glide/c;->d:Ln0/b;

    iget-object v9, v1, Lcom/bumptech/glide/c;->j:Lz0/d;

    iget v10, v1, Lcom/bumptech/glide/c;->k:I

    iget-object v11, v1, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    iget-object v12, v1, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    iget-object v1, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move-object v3, v15

    move/from16 v18, v13

    move-object v13, v1

    move-object v1, v14

    move/from16 v14, v16

    move-object/from16 v24, v15

    move/from16 v15, v17

    invoke-direct/range {v2 .. v15}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lm0/l;Lo0/i;Ln0/c;Ln0/b;Lz0/k;Lz0/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/c;

    :try_start_2e5
    iget-object v3, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/f;

    move-object/from16 v4, v24

    invoke-interface {v2, v4, v0, v3}, La1/f;->b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/f;)V
    :try_end_2ec
    .catch Ljava/lang/AbstractMethodError; {:try_start_2e5 .. :try_end_2ec} :catch_2ef

    move-object/from16 v24, v4

    goto :goto_2d9

    :catch_2ef
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_30b
    move-object/from16 v4, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    sput-boolean v18, Lcom/bumptech/glide/b;->j:Z

    return-void

    :catch_315
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_31e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .registers 8
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_29} :catch_3f
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_29} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_29} :catch_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_29} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_29} :catch_2b

    move-object v1, v0

    goto :goto_4d

    :catch_2b
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_30
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_35
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3a
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3f
    const/4 v0, 0x5

    const-string v2, "Glide"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    const-class v0, Lcom/bumptech/glide/b;

    monitor-enter v0

    :try_start_50
    sget-object v2, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    if-nez v2, :cond_57

    invoke-static {p0, v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    :cond_57
    monitor-exit v0

    goto :goto_5c

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_59

    throw p0

    :cond_5c
    :goto_5c
    sget-object p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 4

    invoke-static {}, Lg1/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lo0/i;

    check-cast v0, Lg1/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lg1/c;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Ln0/c;

    invoke-interface {v0}, Ln0/c;->b()V

    iget-object p0, p0, Lcom/bumptech/glide/b;->e:Ln0/b;

    invoke-interface {p0}, Ln0/b;->b()V

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTrimMemory(I)V
    .registers 7

    invoke-static {}, Lg1/f;->g()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/h;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lo0/i;

    check-cast v0, Lo0/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_2d

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lg1/c;->e(J)V

    goto :goto_3f

    :cond_2d
    const/16 v1, 0x14

    if-ge p1, v1, :cond_35

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3f

    :cond_35
    monitor-enter v0

    :try_start_36
    iget-wide v1, v0, Lg1/c;->b:J
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_4a

    monitor-exit v0

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lg1/c;->e(J)V

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Ln0/c;

    invoke-interface {v0, p1}, Ln0/c;->a(I)V

    iget-object p0, p0, Lcom/bumptech/glide/b;->e:Ln0/b;

    invoke-interface {p0, p1}, Ln0/b;->a(I)V

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must call this method on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
