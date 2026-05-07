.class public Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;
.super Lcom/oplus/fancyicon/content/res/ResourceLoader;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FancyDrawableResourceLoader"


# instance fields
.field private mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindZipProvider(Lcom/oplus/fancyicon/IconZipFileProvider;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

    invoke-virtual {p1, p0, p2}, Lcom/oplus/fancyicon/IconZipFileProvider;->bindResource(Lcom/oplus/fancyicon/content/res/ResourceLoader;Landroid/content/Context;)Ljava/util/zip/ZipFile;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/IconZipFileProvider;->unBindResource(Lcom/oplus/fancyicon/content/res/ResourceLoader;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 5

    const-string v0, "fancy_icons/"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->mName:Ljava/lang/String;

    return-void
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "fancy_icons/"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
