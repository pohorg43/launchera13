.class public Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;
.super Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderVariable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field private mBlobVar:Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

.field public mColumn:Ljava/lang/String;

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V

    return-void
.end method


# virtual methods
.method public getImageElement(Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/elements/image/ImageScreenElement;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mBlobVar:Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mBlobVar:Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    :cond_10
    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mBlobVar:Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    return-object p0
.end method

.method public onLoad(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mColumn:Ljava/lang/String;

    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mRow:I

    return-void
.end method

.method public parseType()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->parseType()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blob.bitmap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setTypeInt(I)V

    :cond_14
    return-void
.end method

.method public setNull(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setStringValue(Ljava/lang/String;)V

    goto :goto_25

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    goto :goto_25

    :cond_18
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->getImageElement(Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->getImageElement(Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_25
    :goto_25
    return-void
.end method
