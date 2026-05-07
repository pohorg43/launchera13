.class public final Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oplus/glcomponent/gl/texture/GLTexture;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field private minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field private uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

.field private vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;-><init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;-><init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;-><init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;-><init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->set(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object v3, v0

    goto :goto_8

    :cond_7
    move-object v3, p2

    :goto_8
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_e

    move-object v4, v0

    goto :goto_f

    :cond_e
    move-object v4, p3

    :goto_f
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_15

    move-object v5, v0

    goto :goto_16

    :cond_15
    move-object v5, p4

    :goto_16
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1c

    move-object v6, v0

    goto :goto_1d

    :cond_1c
    move-object v6, p5

    :goto_1d
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;-><init>(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne p1, p0, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    if-nez v1, :cond_f

    move v1, v0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result v1

    :goto_13
    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    if-nez v2, :cond_19

    move v2, v0

    goto :goto_1d

    :cond_19
    invoke-virtual {v2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result v2

    :goto_1d
    if-eq v1, v2, :cond_21

    sub-int/2addr v1, v2

    return v1

    :cond_21
    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    if-nez v1, :cond_27

    move v1, v0

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v1

    :goto_2b
    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    if-nez v2, :cond_31

    move v2, v0

    goto :goto_35

    :cond_31
    invoke-virtual {v2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v2

    :goto_35
    if-eq v1, v2, :cond_39

    sub-int/2addr v1, v2

    return v1

    :cond_39
    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-eq v1, v2, :cond_52

    if-nez v1, :cond_43

    move p0, v0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result p0

    :goto_47
    iget-object p1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-nez p1, :cond_4c

    goto :goto_50

    :cond_4c
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_50
    sub-int/2addr p0, v0

    return p0

    :cond_52
    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-eq v1, v2, :cond_6b

    if-nez v1, :cond_5c

    move p0, v0

    goto :goto_60

    :cond_5c
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result p0

    :goto_60
    iget-object p1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-nez p1, :cond_65

    goto :goto_69

    :cond_65
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_69
    sub-int/2addr p0, v0

    return p0

    :cond_6b
    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-eq v1, v2, :cond_84

    if-nez v1, :cond_75

    move p0, v0

    goto :goto_79

    :cond_75
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result p0

    :goto_79
    iget-object p1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-nez p1, :cond_7e

    goto :goto_82

    :cond_7e
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    :goto_82
    sub-int/2addr p0, v0

    return p0

    :cond_84
    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iget-object v1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-eq p0, v1, :cond_9d

    if-nez p0, :cond_8e

    move p0, v0

    goto :goto_92

    :cond_8e
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result p0

    :goto_92
    iget-object p1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-nez p1, :cond_97

    goto :goto_9b

    :cond_97
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    :goto_9b
    sub-int/2addr p0, v0

    return p0

    :cond_9d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->compareTo(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    if-nez v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    if-ne v2, v3, :cond_2e

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-ne v2, v3, :cond_2e

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-ne v2, v3, :cond_2e

    iget-object v2, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-ne v2, v3, :cond_2e

    iget-object p1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-ne p1, p0, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method public final getMTexture()Lcom/oplus/glcomponent/gl/texture/GLTexture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    return-object p0
.end method

.method public final getMagFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public final getMinFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public final getUWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public final getVWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public hashCode()I
    .registers 9

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result v0

    :goto_b
    int-to-long v2, v0

    const/16 v0, 0x32b

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v0

    :goto_1a
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-nez v0, :cond_23

    move v0, v1

    goto :goto_27

    :cond_23
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_27
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-nez v0, :cond_30

    move v0, v1

    goto :goto_34

    :cond_30
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_34
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-nez v0, :cond_3d

    move v0, v1

    goto :goto_41

    :cond_3d
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    :goto_41
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-nez p0, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result v1

    :goto_4d
    int-to-long v0, v1

    add-long/2addr v2, v0

    const/16 p0, 0x20

    shr-long v0, v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final set(Lcom/oplus/glcomponent/gl/texture/GLTexture;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;",
            "Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    iput-object p2, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object p3, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object p4, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iput-object p5, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method

.method public final set(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::TT;>(",
            "Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor<",
            "TV;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    iget-object v0, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iget-object v0, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iget-object v0, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iget-object p1, p1, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method

.method public final setMTexture(Lcom/oplus/glcomponent/gl/texture/GLTexture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->mTexture:Lcom/oplus/glcomponent/gl/texture/GLTexture;

    return-void
.end method

.method public final setMagFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->magFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-void
.end method

.method public final setMinFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->minFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-void
.end method

.method public final setUWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->uWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method

.method public final setVWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureDescriptor;->vWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method
