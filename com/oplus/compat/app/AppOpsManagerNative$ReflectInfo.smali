.class Lcom/oplus/compat/app/AppOpsManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/AppOpsManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static setMode:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "setMode"
        params = {
            I,
            I,
            Ljava/lang/String;,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static setUserRestriction:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "setUserRestriction"
        params = {
            I,
            Z,
            Landroid/os/IBinder;,
            [Ljava/lang/String;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/app/AppOpsManagerNative$ReflectInfo;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/AppOpsManagerNative$ReflectInfo;->setMode:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/AppOpsManagerNative$ReflectInfo;->setUserRestriction:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
