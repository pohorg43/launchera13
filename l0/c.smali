.class public Ll0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk0/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/c$a;,
        Ll0/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk0/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ll0/e;

.field public c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ll0/e;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/c;->a:Landroid/net/Uri;

    iput-object p2, p0, Ll0/c;->b:Ll0/e;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Ll0/d;)Ll0/c;
    .registers 6

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->e:Ln0/b;

    new-instance v1, Ll0/e;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/f;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Ll0/e;-><init>(Ljava/util/List;Ll0/d;Ln0/b;Landroid/content/ContentResolver;)V

    new-instance p0, Ll0/c;

    invoke-direct {p0, p1, v1}, Ll0/c;-><init>(Landroid/net/Uri;Ll0/e;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Ll0/c;->c:Ljava/io/InputStream;

    if-eqz p0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

.method public d()Lcom/bumptech/glide/load/a;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/a;->a:Lcom/bumptech/glide/load/a;

    return-object p0
.end method

.method public e(Lcom/bumptech/glide/e;Lk0/d$a;)V
    .registers 4
    .param p1  # Lcom/bumptech/glide/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lk0/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Lk0/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ll0/c;->f()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->c:Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_a

    invoke-interface {p2, p1}, Lk0/d$a;->f(Ljava/lang/Object;)V

    return-void

    :catch_a
    move-exception p0

    const/4 p1, 0x3

    const-string v0, "MediaStoreThumbFetcher"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "Failed to find thumbnail file"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    invoke-interface {p2, p0}, Lk0/d$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final f()Ljava/io/InputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "ThumbStreamOpener"

    iget-object v1, p0, Ll0/c;->b:Ll0/e;

    iget-object v2, p0, Ll0/c;->a:Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    :try_start_c
    iget-object v6, v1, Ll0/e;->a:Ll0/d;

    invoke-interface {v6, v2}, Ll0/d;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_12} :catch_2e
    .catchall {:try_start_c .. :try_end_12} :catchall_2b

    if-eqz v6, :cond_28

    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1e} :catch_26
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_51

    :catchall_22
    move-exception p0

    move-object v5, v6

    goto/16 :goto_f3

    :catch_26
    move-exception v7

    goto :goto_31

    :cond_28
    if-eqz v6, :cond_50

    goto :goto_4d

    :catchall_2b
    move-exception p0

    goto/16 :goto_f3

    :catch_2e
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    :goto_31
    :try_start_31
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to query for thumbnail for Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_22

    :cond_4b
    if-eqz v6, :cond_50

    :goto_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    move-object v7, v5

    :goto_51
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    :goto_57
    move-object v1, v5

    goto :goto_7c

    :cond_59
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6f

    const-wide/16 v7, 0x0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6f

    const/4 v3, 0x1

    :cond_6f
    if-nez v3, :cond_72

    goto :goto_57

    :cond_72
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :try_start_76
    iget-object v1, v1, Ll0/e;->c:Landroid/content/ContentResolver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7c
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_7c} :catch_cd

    :goto_7c
    const/4 v2, -0x1

    if-eqz v1, :cond_c3

    iget-object v3, p0, Ll0/c;->b:Ll0/e;

    iget-object p0, p0, Ll0/c;->a:Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_86
    iget-object v6, v3, Ll0/e;->c:Landroid/content/ContentResolver;

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, v3, Ll0/e;->d:Ljava/util/List;

    iget-object v3, v3, Ll0/e;->b:Ln0/b;

    invoke-static {v6, v5, v3}, Lcom/bumptech/glide/load/d;->a(Ljava/util/List;Ljava/io/InputStream;Ln0/b;)I

    move-result p0
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_94} :catch_9c
    .catch Ljava/lang/NullPointerException; {:try_start_86 .. :try_end_94} :catch_9c
    .catchall {:try_start_86 .. :try_end_94} :catchall_9a

    if-eqz v5, :cond_c4

    :try_start_96
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_c4

    goto :goto_c4

    :catchall_9a
    move-exception p0

    goto :goto_bd

    :catch_9c
    move-exception v3

    :try_start_9d
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open uri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_9d .. :try_end_b7} :catchall_9a

    :cond_b7
    if-eqz v5, :cond_c3

    :try_start_b9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_c3

    goto :goto_c3

    :goto_bd
    if-eqz v5, :cond_c2

    :try_start_bf
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c2

    :catch_c2
    :cond_c2
    throw p0

    :catch_c3
    :cond_c3
    :goto_c3
    move p0, v2

    :catch_c4
    :cond_c4
    :goto_c4
    if-eq p0, v2, :cond_cc

    new-instance v0, Lk0/g;

    invoke-direct {v0, v1, p0}, Lk0/g;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v0

    :cond_cc
    return-object v1

    :catch_cd
    move-exception p0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE opening uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/FileNotFoundException;

    throw p0

    :goto_f3
    if-eqz v5, :cond_f8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f8
    throw p0
.end method
