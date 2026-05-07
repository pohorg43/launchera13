.class public abstract Lcom/oplus/glcomponent/gl/texture/GLTexture;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;


# instance fields
.field private handle:I

.field private mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field private mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field private final mTarget:I

.field private mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

.field private mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->Companion:Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenTexture()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    iput p2, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    sget-object p1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->Nearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    sget-object p1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->ClampToEdge:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method

.method public static final uploadImageData(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->Companion:Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;->uploadImageData(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .registers 2

    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    return-void
.end method

.method public final bind(I)V
    .registers 3

    const v0, 0x84c0

    add-int/2addr p1, v0

    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    invoke-static {p1, p0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    return-void
.end method

.method public final delete()V
    .registers 3

    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    if-eqz v0, :cond_c

    sget-object v1, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v1, v0}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteTexture(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    :cond_c
    return-void
.end method

.method public dispose()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->delete()V

    return-void
.end method

.method public abstract getDepth()I
.end method

.method public final getHandle()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    return p0
.end method

.method public abstract getHeight()I
.end method

.method public final getMMagFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public final getMMinFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public final getMTarget()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    return p0
.end method

.method public final getMUWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public final getMVWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public final getMagFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public final getMinFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public final getUWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public final getVWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public abstract getWidth()I
.end method

.method public abstract reload()V
.end method

.method public final setFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 5

    const-string v0, "minFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "magFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    iput-object p2, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result p1

    const/16 v1, 0x2801

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    invoke-virtual {p2}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result p1

    const/16 p2, 0x2800

    invoke-static {p0, p2, p1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    return-void
.end method

.method public final setHandle(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->handle:I

    return-void
.end method

.method public final setMMagFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-void
.end method

.method public final setMMinFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-void
.end method

.method public final setMUWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method

.method public final setMVWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-void
.end method

.method public final setWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 5

    const-string v0, "u"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    iput-object p2, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result p1

    const/16 v1, 0x2802

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    invoke-virtual {p2}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result p1

    const/16 p2, 0x2803

    invoke-static {p0, p2, p1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    return-void
.end method

.method public final unsafeSetFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->unsafeSetFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Z)V

    return-void
.end method

.method public final unsafeSetFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Z)V
    .registers 7

    if-eqz p1, :cond_15

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-eq v0, p1, :cond_15

    :cond_8
    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    const/16 v1, 0x2801

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMinFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    :cond_15
    if-eqz p2, :cond_2a

    if-nez p3, :cond_1d

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    if-eq p1, p2, :cond_2a

    :cond_1d
    iget p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    const/16 p3, 0x2800

    invoke-virtual {p2}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    invoke-static {p1, p3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object p2, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mMagFilter:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    :cond_2a
    return-void
.end method

.method public final unsafeSetWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->unsafeSetWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Z)V

    return-void
.end method

.method public final unsafeSetWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Z)V
    .registers 7

    if-eqz p1, :cond_15

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-eq v0, p1, :cond_15

    :cond_8
    iget v0, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    const/16 v1, 0x2802

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mUWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    :cond_15
    if-eqz p2, :cond_2a

    if-nez p3, :cond_1d

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    if-eq p1, p2, :cond_2a

    :cond_1d
    iget p1, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mTarget:I

    const/16 p3, 0x2803

    invoke-virtual {p2}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    invoke-static {p1, p3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object p2, p0, Lcom/oplus/glcomponent/gl/texture/GLTexture;->mVWrap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    :cond_2a
    return-void
.end method
