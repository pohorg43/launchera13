.class public Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/media/OplusHeifConverterNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeifDecodeFrameNative"
.end annotation


# instance fields
.field public mBufferId:J

.field public mBufferIdSub:J

.field public mColorSpace:Landroid/graphics/ColorSpace;

.field private mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

.field public mFrameHeight:I

.field public mFrameWidth:I

.field public mRecycled:Z

.field public mYuvData:[B


# direct methods
.method public constructor <init>(Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;)V
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "m_frame_width"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameWidth:I

    const-string v1, "m_frame_height"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameHeight:I

    const-string v1, "m_yuvdata"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mYuvData:[B

    const-string v1, "m_buffer_id"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mBufferId:J

    const-string v1, "m_buffer_id_sub"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mBufferIdSub:J

    const-string v1, "m_ColorSpace"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace;

    iput-object v1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mColorSpace:Landroid/graphics/ColorSpace;

    const-string v1, "m_recycled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mRecycled:Z
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_78

    goto :goto_8f

    :catchall_78
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HeifDecodedFrameNative "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusHeifConverter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    return-void
.end method

.method public constructor <init>([BIIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mYuvData:[B

    iput p2, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameWidth:I

    iput p3, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameHeight:I

    iput-wide p4, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mBufferId:J

    return-void
.end method

.method private getObjectDecodedFrame([BIIJ)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$300()Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-object p0

    :catchall_24
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private renderByDecodedFrame(Landroid/view/Surface;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_21

    return p0

    :cond_20
    return v2

    :catchall_21
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private renderByYuvDataConverter(Landroid/view/Surface;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mYuvData:[B

    iget v2, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameWidth:I

    iget v3, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameHeight:I

    iget-wide v4, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mBufferId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->getObjectDecodedFrame([BIIJ)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2b

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    return p0

    :cond_2b
    return v2

    :catch_2c
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final isRecycled()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_30

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1a
    iget-object v3, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mYuvData:[B

    iget v4, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameWidth:I

    iget v5, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameHeight:I

    iget-wide v6, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mBufferId:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->getObjectDecodedFrame([BIIJ)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    :cond_30
    return v1

    :catchall_31
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public recycle()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_11
    iget-object v3, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mYuvData:[B

    iget v4, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameWidth:I

    iget v5, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mFrameHeight:I

    iget-wide v6, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mBufferId:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->getObjectDecodedFrame([BIIJ)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/oplus/compat/media/OplusHeifConverterNative;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :goto_27
    return-void

    :catchall_28
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public render(Landroid/view/Surface;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->mDecodedFrame:Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->renderByDecodedFrame(Landroid/view/Surface;Z)Z

    move-result p0

    return p0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;->renderByYuvDataConverter(Landroid/view/Surface;Z)Z

    move-result p0

    return p0
.end method
