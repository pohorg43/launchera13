.class public final Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;

.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I = 0x0

.field public static final WEIGHTED:I = 0x1


# instance fields
.field private bindCount:I

.field private final mCount:I

.field private mCurrentTexture:I

.field private final mMethod:I

.field private final mOffset:I

.field private final mReuseWeight:I

.field private mReused:Z

.field private final mTempDesc:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor<",
            "Lcom/oplus/glcomponent/gl/texture/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

.field private final mWeights:[I

.field private reuseCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->Companion:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    invoke-direct {v0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;-><init>()V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTempDesc:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->Companion:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;

    invoke-static {v0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;->access$getMaxTextureUnits(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;)I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_15

    move v0, v1

    :cond_15
    if-gez p3, :cond_19

    sub-int p3, v0, p2

    :cond_19
    if-ltz p2, :cond_39

    if-ltz p3, :cond_39

    add-int v1, p2, p3

    if-gt v1, v0, :cond_39

    const/4 v0, 0x1

    if-lt p4, v0, :cond_39

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mMethod:I

    iput p2, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mOffset:I

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCount:I

    new-array p2, p3, [Lcom/oplus/glcomponent/gl/texture/GLTexture;

    iput-object p2, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

    iput p4, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mReuseWeight:I

    if-ne p1, v0, :cond_35

    new-array p1, p3, [I

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mWeights:[I

    return-void

    :cond_39
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Illegal arguments"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_a

    const/4 p3, -0x1

    :cond_a
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/16 p4, 0xa

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;-><init>(IIII)V

    return-void
.end method

.method private final bindTexture(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->getMTexture()Lcom/oplus/glcomponent/gl/texture/GLTexture;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mReused:Z

    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mMethod:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-eq v1, v2, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mOffset:I

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindTextureWeighted(Lcom/oplus/glcomponent/gl/texture/GLTexture;)I

    move-result v3

    goto :goto_1d

    :cond_17
    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mOffset:I

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindTextureRoundRobin(Lcom/oplus/glcomponent/gl/texture/GLTexture;)I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mReused:Z

    if-eqz v3, :cond_2f

    iget v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->reuseCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->reuseCount:I

    const p0, 0x84c0

    add-int/2addr p0, v1

    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_34

    :cond_2f
    iget v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindCount:I

    :goto_34
    if-nez v0, :cond_37

    goto :goto_42

    :cond_37
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->getUWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->getVWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->unsafeSetWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V

    :goto_42
    if-nez v0, :cond_45

    goto :goto_50

    :cond_45
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->getMinFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->getMagFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->unsafeSetFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V

    :goto_50
    return v1
.end method

.method private final bindTextureRoundRobin(Lcom/oplus/glcomponent/gl/texture/GLTexture;)I
    .registers 7

    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_1c

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCurrentTexture:I

    add-int/2addr v4, v2

    iget v2, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCount:I

    rem-int/2addr v4, v2

    iget-object v2, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

    aget-object v2, v2, v4

    if-ne v2, p1, :cond_17

    iput-boolean v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mReused:Z

    return v4

    :cond_17
    if-lt v3, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    move v2, v3

    goto :goto_6

    :cond_1c
    :goto_1c
    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCurrentTexture:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCurrentTexture:I

    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

    aput-object p1, v1, v0

    if-nez p1, :cond_2b

    goto :goto_31

    :cond_2b
    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mOffset:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind(I)V

    :goto_31
    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCurrentTexture:I

    return p0
.end method

.method private final bindTextureWeighted(Lcom/oplus/glcomponent/gl/texture/GLTexture;)I
    .registers 11

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mWeights:[I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCount:I

    const/4 v3, -0x1

    if-lez v2, :cond_3b

    move v4, v1

    move v5, v3

    :goto_f
    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

    aget-object v7, v7, v1

    if-ne v7, p1, :cond_22

    iget-object v5, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mWeights:[I

    aget v7, v5, v1

    iget v8, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mReuseWeight:I

    add-int/2addr v7, v8

    aput v7, v5, v1

    move v5, v1

    goto :goto_34

    :cond_22
    iget-object v7, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mWeights:[I

    aget v8, v7, v1

    if-ltz v8, :cond_31

    aget v8, v7, v1

    add-int/2addr v8, v3

    aput v8, v7, v1

    aget v8, v7, v1

    if-ge v8, v0, :cond_34

    :cond_31
    aget v0, v7, v1

    move v4, v1

    :cond_34
    :goto_34
    if-lt v6, v2, :cond_39

    move v1, v4

    move v3, v5

    goto :goto_3b

    :cond_39
    move v1, v6

    goto :goto_f

    :cond_3b
    :goto_3b
    if-gez v3, :cond_51

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mWeights:[I

    const/16 v2, 0x64

    aput v2, v0, v1

    if-nez p1, :cond_4a

    goto :goto_55

    :cond_4a
    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mOffset:I

    add-int/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind(I)V

    goto :goto_55

    :cond_51
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mReused:Z

    move v1, v3

    :goto_55
    return v1
.end method


# virtual methods
.method public final begin()V
    .registers 7

    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mCount:I

    if-lez v0, :cond_18

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTextures:[Lcom/oplus/glcomponent/gl/texture/GLTexture;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mWeights:[I

    if-eqz v4, :cond_13

    aput v1, v4, v2

    :cond_13
    if-lt v3, v0, :cond_16

    goto :goto_18

    :cond_16
    move v2, v3

    goto :goto_6

    :cond_18
    :goto_18
    return-void
.end method

.method public final bind(Lcom/oplus/glcomponent/gl/texture/GLTexture;)I
    .registers 8

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTempDesc:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->set(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->mTempDesc:Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindTexture(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)I

    move-result p0

    return p0
.end method

.method public final bind(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor<",
            "Lcom/oplus/glcomponent/gl/texture/GLTexture;",
            ">;)I"
        }
    .end annotation

    const-string v0, "textureDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindTexture(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)I

    move-result p0

    return p0
.end method

.method public final end()V
    .registers 1

    const p0, 0x84c0

    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    return-void
.end method

.method public final resetCounts()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->bindCount:I

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;->reuseCount:I

    return-void
.end method
