.class Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawableExt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplusMirrorAdaptiveIconDrawableExt"
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getForegroundScalePercent:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawableExt;

    const-string v1, "android.graphics.drawable.IAdaptiveIconDrawableExt"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawableExt;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawableExt;->getForegroundScalePercent:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
