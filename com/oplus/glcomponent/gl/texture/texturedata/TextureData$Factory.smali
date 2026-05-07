.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;

    invoke-direct {v0}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;->INSTANCE:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createWithFormat(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
    .registers 5

    const-string p0, "format"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->type()I

    move-result p0

    const/16 v0, 0x1401

    if-eq p0, v0, :cond_22

    const/16 v0, 0x1406

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x140b

    if-eq p0, v0, :cond_1c

    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;-><init>(IIILcom/oplus/glcomponent/gl/data/PixelFormat;)V

    goto :goto_27

    :cond_1c
    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V

    goto :goto_27

    :cond_22
    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/glcomponent/gl/texture/texturedata/ByteTextureData;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V

    :goto_27
    return-object p0
.end method

.method public final loadFromFile(Ljava/lang/String;Z)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
    .registers 3

    const-string p0, "filename"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method
