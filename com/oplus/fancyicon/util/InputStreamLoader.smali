.class public Lcom/oplus/fancyicon/util/InputStreamLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "InputStreamLoader"


# instance fields
.field public mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field private mContext:Landroid/content/Context;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mPath:Ljava/lang/String;

    goto :goto_1a

    :cond_16
    iput-object p1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    :goto_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object p0, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method

.method public get()Ljava/io/InputStream;
    .registers 5

    const-string v0, "InputStreamLoader"

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_77

    :cond_18
    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    if-eqz v1, :cond_32

    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_77

    :cond_32
    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_40

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_77

    :cond_40
    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iput-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_4b} :catch_62
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_77

    :catch_4c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveToFile IOException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :catch_62
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveToFile FileNotFoundException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_8a

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_8a

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    :cond_8a
    iget-object p0, p0, Lcom/oplus/fancyicon/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method
