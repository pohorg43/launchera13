.class Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplusMirrorAdaptiveIconDrawable"
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mIconDrawableExt:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawable;

    const-class v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawable;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative$OplusMirrorAdaptiveIconDrawable;->mIconDrawableExt:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method
