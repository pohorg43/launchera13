.class public final Lcom/oplus/effectengine/OplusEffect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/effectengine/OplusEffect$Companion;,
        Lcom/oplus/effectengine/OplusEffect$ProxyHandler;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/effectengine/OplusEffect$Companion;

.field public static final FORMAT_R5G6B5:I = 0x0

.field public static final FORMAT_R8G8B8A8:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PREPARED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OplusEffect"


# instance fields
.field private final asyncLock:Ljava/lang/Object;

.field private callback:Lcom/oplus/effectengine/EffectResultCallback;

.field private callbackHandler:Landroid/os/Handler;

.field private context:Ljavax/microedition/khronos/egl/EGLContext;

.field private display:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private effectReader:Landroid/media/ImageReader;

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private enableDebug:Z

.field private finalBitmap:Landroid/graphics/Bitmap;

.field private glThreadId:J

.field private highQuality:Z

.field private originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

.field private final rendererList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/effectengine/EffectRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private resultHeight:I

.field private resultWidth:I

.field private state:I

.field private surface:Landroid/view/Surface;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/effectengine/OplusEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/effectengine/OplusEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/effectengine/OplusEffect;->Companion:Lcom/oplus/effectengine/OplusEffect$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->rendererList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/effectengine/OplusEffect;->highQuality:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->asyncLock:Ljava/lang/Object;

    sget-object p0, Lcom/oplus/glcomponent/GlobalConfig;->INSTANCE:Lcom/oplus/glcomponent/GlobalConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/GlobalConfig;->initGlobalConfig(Landroid/content/Context;)V

    return-void
.end method

.method private final checkThread()V
    .registers 5

    iget-wide v0, p0, Lcom/oplus/effectengine/OplusEffect;->glThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "method invoke in different thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final convertImageToBitmap(Landroid/media/Image;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    sub-int/2addr p0, v2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    div-int/2addr p0, v1

    add-int/2addr p0, v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method private final getSoftwareBitmap()Landroid/graphics/Bitmap;
    .registers 10

    iget v7, p0, Lcom/oplus/effectengine/OplusEffect;->resultWidth:I

    iget p0, p0, Lcom/oplus/effectengine/OplusEffect;->resultHeight:I

    mul-int v0, v7, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, v7

    move v3, p0

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method private final initEGL(IILandroid/graphics/Bitmap$Config;)Z
    .registers 14

    iput p1, p0, Lcom/oplus/effectengine/OplusEffect;->resultWidth:I

    iput p2, p0, Lcom/oplus/effectengine/OplusEffect;->resultHeight:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_c

    move p3, v1

    goto :goto_d

    :cond_c
    move p3, v2

    :goto_d
    iput-boolean p3, p0, Lcom/oplus/effectengine/OplusEffect;->highQuality:Z

    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    move p1, v1

    goto :goto_16

    :cond_15
    move p1, v2

    :goto_16
    if-eqz p1, :cond_159

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "initContext: in thread:  "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/oplus/effectengine/OplusEffect;->glThreadId:J

    iget v3, p0, Lcom/oplus/effectengine/OplusEffect;->resultWidth:I

    iget v4, p0, Lcom/oplus/effectengine/OplusEffect;->resultHeight:I

    const/16 v5, 0x22

    const/4 v6, 0x1

    const-wide/16 v7, 0x100

    invoke-static/range {v3 .. v8}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/effectengine/OplusEffect;->effectReader:Landroid/media/ImageReader;

    const/4 p3, 0x0

    if-nez p2, :cond_4d

    move-object p2, p3

    goto :goto_51

    :cond_4d
    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    :goto_51
    iput-object p2, p0, Lcom/oplus/effectengine/OplusEffect;->surface:Landroid/view/Surface;

    iget-object p2, p0, Lcom/oplus/effectengine/OplusEffect;->effectReader:Landroid/media/ImageReader;

    if-nez p2, :cond_58

    goto :goto_5d

    :cond_58
    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {p2, p0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_5d
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const-string v9, "OplusEffect"

    if-ne v0, v3, :cond_86

    iput-object p3, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p0

    const-string p2, "eglGEtDisplay failed: "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v9, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_86
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-interface {p2, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p0

    const-string p2, "eglInitialize failed: "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v9, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_9d
    const/16 p1, 0xf

    new-array v5, p1, [I

    fill-array-data v5, :array_166

    new-array p1, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    move v0, v2

    :goto_a7
    if-ge v0, v1, :cond_ae

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_ae
    new-array v8, v1, [I

    iget-object v4, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x1

    move-object v3, p2

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez p1, :cond_d1

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    const-string p2, "can not find request config: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d1
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_188

    iget-object v3, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p2, v3, p1, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->context:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p1, :cond_147

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ec

    goto :goto_147

    :cond_ec
    iget-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/oplus/effectengine/OplusEffect;->surface:Landroid/view/Surface;

    invoke-interface {p2, p1, v0, v3, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_134

    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_103

    goto :goto_134

    :cond_103
    iget-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/oplus/effectengine/OplusEffect;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->context:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p2, p1, p3, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_11f

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    const-string p2, "make current error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11f
    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_128

    goto :goto_131

    :cond_128
    const-string v0, "init egl context error: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v9, p3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_131
    iput-object p2, p0, Lcom/oplus/effectengine/OplusEffect;->egl:Ljavax/microedition/khronos/egl/EGL10;

    return v1

    :cond_134
    :goto_134
    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13d

    goto :goto_146

    :cond_13d
    const-string p2, "create eglSurface error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_146
    return v2

    :cond_147
    :goto_147
    iput-object p3, p0, Lcom/oplus/effectengine/OplusEffect;->context:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    const-string p2, "create context error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_159
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The result width and height must >= 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_166
    .array-data 4
        0x3040
        0x40
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3033
        0x4
        0x3038
    .end array-data

    :array_188
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data
.end method

.method private final printBitmap(Landroid/graphics/Bitmap;)V
    .registers 12

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v0, "start: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusEffect"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_8e

    const/4 v4, 0x0

    move v5, v4

    :goto_41
    add-int/lit8 v6, v5, 0x1

    if-lez p0, :cond_86

    move v7, v4

    :goto_46
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    const-string v9, "r"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "g"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "b"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "a"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v8, p0, :cond_84

    goto :goto_86

    :cond_84
    move v7, v8

    goto :goto_46

    :cond_86
    :goto_86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v6, v0, :cond_8c

    goto :goto_8e

    :cond_8c
    move v5, v6

    goto :goto_41

    :cond_8e
    :goto_8e
    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pixels.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final printTexture()V
    .registers 10

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-boolean v1, p0, Lcom/oplus/effectengine/OplusEffect;->enableDebug:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "tmp fbo = "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusEffect"

    invoke-virtual {v0, v5, v4}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v4, v2, v3

    const v6, 0x8d40

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    const/16 v7, 0xde1

    iget-object v8, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v8

    invoke-static {v6, v4, v7, v8, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->getSoftwareBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4a

    goto :goto_55

    :cond_4a
    const-string v7, "print texture"

    invoke-virtual {v0, v5, v7}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/oplus/effectengine/OplusEffect;->printBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_55
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_5b
    return-void
.end method

.method private final uploadHwBuffer(Landroid/hardware/HardwareBuffer;)Z
    .registers 4

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture;

    new-instance v1, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;

    invoke-direct {v1, p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_22

    :cond_1a
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_22
    const-string v1, "upload hw buffer: create texture: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/glcomponent/utils/Debugger;->dd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->printTexture()V

    const/4 p0, 0x1

    return p0

    :cond_30
    const-string p0, "OplusEffect"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final uploadNormalBitmap(Landroid/graphics/Bitmap;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "OplusEffect:: bitmap config is HARDWARE, use uploadHardwareBuffer API"

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    return v2

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2d

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v1, "uploadNormalBitmap: change config"

    invoke-virtual {v0, v1}, Lcom/oplus/glcomponent/utils/Debugger;->dd(Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "bitmap.copy(Bitmap.Config.ARGB_8888, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2e

    :cond_2d
    move-object v0, p1

    :goto_2e
    new-instance v1, Lcom/oplus/glcomponent/gl/texture/Texture;

    invoke-direct {v1, v0}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    sget-object v1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusEffect"

    if-nez v4, :cond_7e

    iget-object v2, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    if-nez v2, :cond_45

    const/4 v2, 0x0

    goto :goto_4d

    :cond_45
    invoke-virtual {v2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4d
    const-string v4, "uploadNormalBitmap: create texture: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/glcomponent/utils/Debugger;->dd(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5f
    invoke-virtual {v1}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const-string v2, "bitmap.config"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "print origin bitmap: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->printBitmap(Landroid/graphics/Bitmap;)V

    :cond_7a
    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->printTexture()V

    return v3

    :cond_7e
    const-string p0, "create texture failed: "

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final createRenderer(Ljava/lang/Class;)Lcom/oplus/effectengine/EffectRenderer;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oplus/effectengine/EffectRenderer;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "rendererType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9c

    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->checkThread()V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "interfaceAnnotations"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :cond_22
    if-ge v5, v3, :cond_8e

    aget-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    instance-of v7, v6, Lcom/oplus/effectengine/annotation/Implementation;

    if-eqz v7, :cond_22

    sget-object v1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v3, "createRenderer: "

    move-object v5, v6

    check-cast v5, Lcom/oplus/effectengine/annotation/Implementation;

    invoke-interface {v5}, Lcom/oplus/effectengine/annotation/Implementation;->impClass()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/glcomponent/utils/Debugger;->dd(Ljava/lang/String;)V

    check-cast v6, Lcom/oplus/effectengine/annotation/Implementation;

    invoke-interface {v6}, Lcom/oplus/effectengine/annotation/Implementation;->impClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Class;

    aput-object p1, v5, v4

    new-instance p1, Lcom/oplus/effectengine/OplusEffect$ProxyHandler;

    iget-wide v6, p0, Lcom/oplus/effectengine/OplusEffect;->glThreadId:J

    invoke-direct {p1, v6, v7, v1}, Lcom/oplus/effectengine/OplusEffect$ProxyHandler;-><init>(JLjava/lang/Object;)V

    invoke-static {v3, v5, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_86

    check-cast p1, Lcom/oplus/effectengine/EffectRenderer;

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->rendererList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/oplus/effectengine/OplusEffect;->highQuality:Z

    if-eqz v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v4

    :goto_6e
    invoke-interface {p1, v2}, Lcom/oplus/effectengine/EffectRenderer;->prepare(I)Z

    iget v1, p0, Lcom/oplus/effectengine/OplusEffect;->resultWidth:I

    if-lez v1, :cond_84

    iget v2, p0, Lcom/oplus/effectengine/OplusEffect;->resultHeight:I

    if-lez v2, :cond_84

    invoke-interface {p1, v1, v2}, Lcom/oplus/effectengine/EffectRenderer;->onSizeChange(II)V

    iget-object p0, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/oplus/effectengine/EffectRenderer;->setRenderTarget(Lcom/oplus/glcomponent/gl/texture/Texture;)V
    :try_end_84
    .catchall {:try_start_c .. :try_end_84} :catchall_a4

    :cond_84
    monitor-exit v0

    return-object p1

    :cond_86
    :try_start_86
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type T of com.oplus.effectengine.OplusEffect.createRenderer$lambda-6"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can not find renderer: "

    const-string v1, "javaClass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "need init before create renderer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a4
    .catchall {:try_start_86 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final destroy()V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->checkThread()V

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v1, "OplusEffect"

    const-string v2, "release effect resource..."

    invoke-virtual {v0, v1, v2}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->rendererList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/effectengine/EffectRenderer;

    invoke-interface {v1}, Lcom/oplus/effectengine/EffectRenderer;->release()V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->rendererList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/Texture;->dispose()V

    :goto_2f
    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_34

    goto :goto_50

    :cond_34
    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/oplus/effectengine/OplusEffect;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/oplus/effectengine/OplusEffect;->context:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :goto_50
    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->effectReader:Landroid/media/ImageReader;

    if-nez v0, :cond_55

    goto :goto_5b

    :cond_55
    invoke-virtual {v0}, Landroid/media/ImageReader;->discardFreeBuffers()V

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :goto_5b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->finalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->effectReader:Landroid/media/ImageReader;

    if-nez v1, :cond_63

    goto :goto_66

    :cond_63
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    :goto_66
    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->callback:Lcom/oplus/effectengine/EffectResultCallback;

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->context:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    iput v0, p0, Lcom/oplus/effectengine/OplusEffect;->resultWidth:I

    iput v0, p0, Lcom/oplus/effectengine/OplusEffect;->resultHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/effectengine/OplusEffect;->glThreadId:J

    return-void
.end method

.method public final getEnableDebug()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/effectengine/OplusEffect;->enableDebug:Z

    return p0
.end method

.method public final getState()I
    .registers 1

    iget p0, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    return p0
.end method

.method public final init(Landroid/graphics/Bitmap;)Z
    .registers 8

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->getState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "OplusEffect"

    const-string v1, "already init"

    invoke-virtual {p0, p1, v1}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_44

    monitor-exit v0

    return v2

    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const-string v5, "origin.config"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3, v4}, Lcom/oplus/effectengine/OplusEffect;->initEGL(IILandroid/graphics/Bitmap$Config;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->destroy()V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_44

    monitor-exit v0

    return v2

    :cond_3a
    const/4 v1, 0x1

    :try_start_3b
    invoke-virtual {p0, v1}, Lcom/oplus/effectengine/OplusEffect;->setState(I)V

    invoke-direct {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->uploadNormalBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    monitor-exit v0

    return p0

    :catchall_44
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final init(Landroid/hardware/HardwareBuffer;)Z
    .registers 7

    const-string v0, "hwBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->getState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "OplusEffect"

    const-string v1, "already init"

    invoke-virtual {p0, p1, v1}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_3d

    monitor-exit v0

    return v2

    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v3, v4}, Lcom/oplus/effectengine/OplusEffect;->initEGL(IILandroid/graphics/Bitmap$Config;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->destroy()V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_3d

    monitor-exit v0

    return v2

    :cond_33
    const/4 v1, 0x1

    :try_start_34
    invoke-virtual {p0, v1}, Lcom/oplus/effectengine/OplusEffect;->setState(I)V

    invoke-direct {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->uploadHwBuffer(Landroid/hardware/HardwareBuffer;)Z

    move-result p0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3d

    monitor-exit v0

    return p0

    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->asyncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v2, "OplusEffect"

    const-string v3, "onImageAvailable"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/glcomponent/utils/Debugger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_10

    goto :goto_64

    :cond_10
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_76

    if-nez p1, :cond_17

    goto :goto_64

    :cond_17
    :try_start_17
    const-string v3, "OplusEffect"

    const-string v4, "onImageAvailable: create hw bitmap"

    invoke-virtual {v1, v3, v4}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    if-nez v3, :cond_25

    goto :goto_44

    :cond_25
    invoke-static {v3, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2c

    goto :goto_37

    :cond_2c
    iput-object v4, p0, Lcom/oplus/effectengine/OplusEffect;->finalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oplus/effectengine/OplusEffect;->callback:Lcom/oplus/effectengine/EffectResultCallback;

    if-nez v2, :cond_33

    goto :goto_36

    :cond_33
    invoke-interface {v2, v4}, Lcom/oplus/effectengine/EffectResultCallback;->onEffectDone(Landroid/graphics/Bitmap;)V

    :goto_36
    move-object v2, v4

    :goto_37
    if-nez v2, :cond_40

    const-string v2, "OplusEffect"

    const-string v4, "onImageAvailable: Can\'t create a bitmap wrapping the hw buffer."

    invoke-virtual {v1, v2, v4}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    move-object v2, v3

    :goto_44
    if-nez v2, :cond_60

    const-string v2, "OplusEffect"

    const-string v3, "onImageAvailable: hw buffer is null."

    invoke-virtual {v1, v2, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4d} :catch_4e
    .catchall {:try_start_17 .. :try_end_4d} :catchall_76

    goto :goto_60

    :catch_4e
    move-exception v1

    :try_start_4f
    sget-object v2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v3, "OplusEffect"

    const-string v4, "onImageAvailable: Can\'t swap hw buffer. e = "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    move-object v2, p1

    :goto_64
    if-nez v2, :cond_6f

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v1, "OplusEffect"

    const-string v2, "Can\'t acquire latest image."

    invoke-virtual {p1, v1, v2}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    iget-object p0, p0, Lcom/oplus/effectengine/OplusEffect;->asyncLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_76

    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final renderEffect(Lcom/oplus/effectengine/EffectRenderer;)Z
    .registers 8

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->checkThread()V

    iget v0, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    const/4 v1, 0x1

    const-string v2, "OplusEffect"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_18

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "render effect failed: Invalid state."

    invoke-virtual {p0, v2, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_18
    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v4, "render effect..."

    invoke-virtual {v0, v2, v4}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/oplus/effectengine/EffectRenderer;->render(Z)V

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-boolean p1, p0, Lcom/oplus/effectengine/OplusEffect;->enableDebug:Z

    if-eqz p1, :cond_3e

    invoke-direct {p0}, Lcom/oplus/effectengine/OplusEffect;->getSoftwareBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_33

    goto :goto_3e

    :cond_33
    const-string v4, "print result:"

    invoke-virtual {v0, v2, v4}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->printBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3e
    :goto_3e
    iget-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p1, :cond_68

    iget-object v4, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v4, :cond_68

    iget-object v5, p0, Lcom/oplus/effectengine/OplusEffect;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v5, :cond_4b

    goto :goto_68

    :cond_4b
    if-nez p1, :cond_4e

    goto :goto_56

    :cond_4e
    invoke-interface {p1, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p0

    if-nez p0, :cond_56

    move p0, v1

    goto :goto_57

    :cond_56
    :goto_56
    move p0, v3

    :goto_57
    if-eqz p0, :cond_67

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p0

    const-string p1, "render effect failed: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_67
    return v1

    :cond_68
    :goto_68
    const-string p1, "render effect failed: egl = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", display = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/effectengine/OplusEffect;->display:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eglSurface = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/effectengine/OplusEffect;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final renderEffectAsync(Lcom/oplus/effectengine/EffectRenderer;)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/effectengine/OplusEffect;->asyncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "OplusEffect"

    const-string v1, "render effect async failed: Invalid state."

    invoke-virtual {p0, p1, v1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_2a

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1b
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->renderEffect(Lcom/oplus/effectengine/EffectRenderer;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->asyncLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    :cond_26
    iget-object p0, p0, Lcom/oplus/effectengine/OplusEffect;->finalBitmap:Landroid/graphics/Bitmap;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setEnableDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/effectengine/OplusEffect;->enableDebug:Z

    return-void
.end method

.method public final setResultCallback(Lcom/oplus/effectengine/EffectResultCallback;Landroid/os/Handler;)V
    .registers 3

    iput-object p2, p0, Lcom/oplus/effectengine/OplusEffect;->callbackHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oplus/effectengine/OplusEffect;->callback:Lcom/oplus/effectengine/EffectResultCallback;

    return-void
.end method

.method public final setState(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/effectengine/OplusEffect;->state:I

    return-void
.end method
