.class Lcom/oplus/compat/service/carrier/CarrierIdentifierNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/service/carrier/CarrierIdentifierNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field public static sConstructor:Lcom/oplus/utils/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        params = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/service/carrier/CarrierIdentifierNative$ReflectInfo;

    const-class v1, Landroid/service/carrier/CarrierIdentifier;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
