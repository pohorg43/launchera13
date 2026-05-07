.class Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/provider/SettingsNative$Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static NTP_SERVER_2:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ZEN_MODE_IMPORTANT_INTERRUPTIONS:Lcom/oplus/utils/reflect/RefInt;

.field private static ZEN_MODE_OFF:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;

    const-class v1, Landroid/provider/Settings$Global;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->ZEN_MODE_IMPORTANT_INTERRUPTIONS:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->ZEN_MODE_OFF:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->NTP_SERVER_2:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method
