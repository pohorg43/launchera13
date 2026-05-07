.class Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefSoundTriggerInfo"
.end annotation


# static fields
.field private static STATUS_BAD_VALUE:Lcom/oplus/utils/reflect/RefInt;

.field private static STATUS_DEAD_OBJECT:Lcom/oplus/utils/reflect/RefInt;

.field private static STATUS_INVALID_OPERATION:Lcom/oplus/utils/reflect/RefInt;

.field private static STATUS_NO_INIT:Lcom/oplus/utils/reflect/RefInt;

.field private static STATUS_PERMISSION_DENIED:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;

    const-class v1, Landroid/hardware/soundtrigger/SoundTrigger;

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

    sget-object v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->STATUS_BAD_VALUE:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->STATUS_DEAD_OBJECT:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->STATUS_INVALID_OPERATION:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->STATUS_NO_INIT:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->STATUS_PERMISSION_DENIED:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method
