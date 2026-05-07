.class Lcom/oplus/compat/telephony/SmsManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/telephony/SmsManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static copyMessageToIcc:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static divideMessageOem:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sendMultipartTextMessage:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "sendMultipartTextMessage"
        params = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/util/ArrayList;,
            Ljava/util/ArrayList;,
            Ljava/util/ArrayList;,
            I,
            Z,
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

.field private static sendMultipartTextMessageOem:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static sendTextMessage:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "sendTextMessage"
        params = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Landroid/app/PendingIntent;,
            Landroid/app/PendingIntent;,
            I,
            Z,
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


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/telephony/SmsManagerNative$ReflectInfo;

    const-string v1, "android.telephony.SmsManager"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/SmsManagerNative$ReflectInfo;->sendMultipartTextMessage:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/SmsManagerNative$ReflectInfo;->copyMessageToIcc:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/SmsManagerNative$ReflectInfo;->sendMultipartTextMessageOem:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/SmsManagerNative$ReflectInfo;->divideMessageOem:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
