.class public interface abstract Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;,
        Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;
    }
.end annotation


# virtual methods
.method public abstract consumeBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract consumeCustomData(I)V
.end method

.method public abstract disposeBitmap()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract useMipMaps()Z
.end method
