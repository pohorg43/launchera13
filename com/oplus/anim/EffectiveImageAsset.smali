.class public Lcom/oplus/anim/EffectiveImageAsset;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/anim/EffectiveImageAsset;->width:I

    iput p2, p0, Lcom/oplus/anim/EffectiveImageAsset;->height:I

    iput-object p3, p0, Lcom/oplus/anim/EffectiveImageAsset;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/anim/EffectiveImageAsset;->dirName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDirName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->dirName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->height:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->width:I

    return p0
.end method

.method public hasBitmap()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    const-string v0, "base64,"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    iput-object p1, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
