.class public final Lr0/e$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk0/d<",
        "TDataT;>;"
    }
.end annotation


# static fields
.field public static final k:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lq0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Lq0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Landroid/net/Uri;

.field public final e:I

.field public final f:I

.field public final g:Lj0/e;

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public volatile j:Lk0/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/e$d;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq0/n;Lq0/n;Landroid/net/Uri;IILj0/e;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq0/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lq0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Landroid/net/Uri;",
            "II",
            "Lj0/e;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr0/e$d;->a:Landroid/content/Context;

    iput-object p2, p0, Lr0/e$d;->b:Lq0/n;

    iput-object p3, p0, Lr0/e$d;->c:Lq0/n;

    iput-object p4, p0, Lr0/e$d;->d:Landroid/net/Uri;

    iput p5, p0, Lr0/e$d;->e:I

    iput p6, p0, Lr0/e$d;->f:I

    iput-object p7, p0, Lr0/e$d;->g:Lj0/e;

    iput-object p8, p0, Lr0/e$d;->h:Ljava/lang/Class;

    return-void
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
            "TDataT;>;"
        }
    .end annotation

    iget-object p0, p0, Lr0/e$d;->h:Ljava/lang/Class;

    return-object p0
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Lr0/e$d;->j:Lk0/d;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lk0/d;->b()V

    :cond_7
    return-void
.end method

.method public final c()Lk0/d;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk0/d<",
            "TDataT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lr0/e$d;->b:Lq0/n;

    iget-object v8, p0, Lr0/e$d;->d:Landroid/net/Uri;

    :try_start_b
    iget-object v2, p0, Lr0/e$d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lr0/e$d;->k:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_77

    if-eqz v2, :cond_5d

    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5d

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_74

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget v2, p0, Lr0/e$d;->e:I

    iget v3, p0, Lr0/e$d;->f:I

    iget-object p0, p0, Lr0/e$d;->g:Lj0/e;

    invoke-interface {v0, v4, v2, v3, p0}, Lq0/n;->b(Ljava/lang/Object;IILj0/e;)Lq0/n$a;

    move-result-object p0

    goto :goto_a2

    :cond_46
    :try_start_46
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File path was empty in media store for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to media store entry for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_74
    .catchall {:try_start_46 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p0

    move-object v1, v2

    goto :goto_78

    :catchall_77
    move-exception p0

    :goto_78
    if-eqz v1, :cond_7d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw p0

    :cond_7e
    iget-object v0, p0, Lr0/e$d;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8a

    const/4 v0, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    if-eqz v0, :cond_94

    iget-object v0, p0, Lr0/e$d;->d:Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_96

    :cond_94
    iget-object v0, p0, Lr0/e$d;->d:Landroid/net/Uri;

    :goto_96
    iget-object v2, p0, Lr0/e$d;->c:Lq0/n;

    iget v3, p0, Lr0/e$d;->e:I

    iget v4, p0, Lr0/e$d;->f:I

    iget-object p0, p0, Lr0/e$d;->g:Lj0/e;

    invoke-interface {v2, v0, v3, v4, p0}, Lq0/n;->b(Ljava/lang/Object;IILj0/e;)Lq0/n$a;

    move-result-object p0

    :goto_a2
    if-eqz p0, :cond_a6

    iget-object v1, p0, Lq0/n$a;->c:Lk0/d;

    :cond_a6
    return-object v1
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/e$d;->i:Z

    iget-object p0, p0, Lr0/e$d;->j:Lk0/d;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lk0/d;->cancel()V

    :cond_a
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
    .registers 5
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
            "-TDataT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lr0/e$d;->c()Lk0/d;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to build fetcher for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr0/e$d;->d:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lk0/d$a;->c(Ljava/lang/Exception;)V

    return-void

    :cond_22
    iput-object v0, p0, Lr0/e$d;->j:Lk0/d;

    iget-boolean v1, p0, Lr0/e$d;->i:Z

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lr0/e$d;->cancel()V

    goto :goto_34

    :cond_2c
    invoke-interface {v0, p1, p2}, Lk0/d;->e(Lcom/bumptech/glide/e;Lk0/d$a;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    invoke-interface {p2, p0}, Lk0/d$a;->c(Ljava/lang/Exception;)V

    :goto_34
    return-void
.end method
