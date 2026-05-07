.class public Lcom/oplus/compat/media/OplusHeifConverterNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/media/OplusHeifConverterNative$HeifDecodeFrameNative;
    }
.end annotation


# static fields
.field private static final CLASS_HEIF_DECODED_FRAME:Ljava/lang/String; = "com.oplus.media.OplusHeifConverter$HeifDecodedFrame"

.field private static final FIELD_M_BUFFER_ID:Ljava/lang/String; = "m_buffer_id"

.field private static final FIELD_M_BUFFER_ID_SUB:Ljava/lang/String; = "m_buffer_id_sub"

.field private static final FIELD_M_COLORSPACE:Ljava/lang/String; = "m_ColorSpace"

.field private static final FIELD_M_FRAME_HEIGHT:Ljava/lang/String; = "m_frame_height"

.field private static final FIELD_M_FRAME_WIDTH:Ljava/lang/String; = "m_frame_width"

.field private static final FIELD_M_RECYCLED:Ljava/lang/String; = "m_recycled"

.field private static final FIELD_M_YUV_DATA:Ljava/lang/String; = "m_yuvdata"

.field private static final METHOD_IS_RECYCLED:Ljava/lang/String; = "isRecycled"

.field private static final METHOD_RECYCLE:Ljava/lang/String; = "recycle"

.field private static final METHOD_RENDER:Ljava/lang/String; = "render"

.field private static final TAG:Ljava/lang/String; = "OplusHeifConverter"

.field private static sHeifConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMethodRender:Ljava/lang/reflect/Method;

.field private static sMethondIsRecycled:Ljava/lang/reflect/Method;

.field private static sMethondRecycle:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    :try_start_0
    const-string v0, "com.oplus.media.OplusHeifConverter$HeifDecodedFrame"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "render"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/Surface;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/media/OplusHeifConverterNative;->sMethodRender:Ljava/lang/reflect/Method;

    const-string v1, "isRecycled"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/media/OplusHeifConverterNative;->sMethondIsRecycled:Ljava/lang/reflect/Method;

    const-string v1, "recycle"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/media/OplusHeifConverterNative;->sMethondRecycle:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v6

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/media/OplusHeifConverterNative;->sHeifConstructor:Ljava/lang/reflect/Constructor;
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    goto :goto_5f

    :catchall_48
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassAndMethod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusHeifConverter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/oplus/compat/media/OplusHeifConverterNative;->sMethondRecycle:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/oplus/compat/media/OplusHeifConverterNative;->sMethondIsRecycled:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/oplus/compat/media/OplusHeifConverterNative;->sMethodRender:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/reflect/Constructor;
    .registers 1

    sget-object v0, Lcom/oplus/compat/media/OplusHeifConverterNative;->sHeifConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method
