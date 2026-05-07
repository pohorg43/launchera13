.class Lcom/oplus/compat/view/OplusSurfaceControlNative$RefHardwareBufferInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/view/OplusSurfaceControlNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefHardwareBufferInfo"
.end annotation


# static fields
.field private static createFromGraphicBuffer:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/view/OplusSurfaceControlNative$RefHardwareBufferInfo;

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/view/OplusSurfaceControlNative$RefHardwareBufferInfo;->createFromGraphicBuffer:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
