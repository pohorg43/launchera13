.class public Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "hardware.soundtrigger.SoundTrigger"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final STATUS_BAD_VALUE:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final STATUS_BAD_VALUE_NAME:Ljava/lang/String; = "STATUS_BAD_VALUE"

.field public static final STATUS_DEAD_OBJECT:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final STATUS_DEAD_OBJECT_NAME:Ljava/lang/String; = "STATUS_DEAD_OBJECT"

.field private static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final STATUS_INVALID_OPERATION_NAME:Ljava/lang/String; = "STATUS_INVALID_OPERATION"

.field public static final STATUS_NO_INIT:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final STATUS_NO_INIT_NAME:Ljava/lang/String; = "STATUS_NO_INIT"

.field public static final STATUS_PERMISSION_DENIED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final STATUS_PERMISSION_DENIED_NAME:Ljava/lang/String; = "STATUS_PERMISSION_DENIED"

.field private static final TAG:Ljava/lang/String; = "SoundTriggerNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "STATUS_BAD_VALUE"

    invoke-static {v0}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_BAD_VALUE:I

    const-string v0, "STATUS_DEAD_OBJECT"

    invoke-static {v0}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_DEAD_OBJECT:I

    const-string v0, "STATUS_INVALID_OPERATION"

    invoke-static {v0}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_INVALID_OPERATION:I

    const-string v0, "STATUS_NO_INIT"

    invoke-static {v0}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_NO_INIT:I

    const-string v0, "STATUS_PERMISSION_DENIED"

    invoke-static {v0}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_PERMISSION_DENIED:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init(Ljava/lang/String;)I
    .registers 8

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "SoundTriggerNative"

    if-eqz v0, :cond_88

    const/4 v0, -0x1

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_ae

    goto :goto_46

    :sswitch_15
    const-string v2, "STATUS_INVALID_OPERATION"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v5

    goto :goto_46

    :sswitch_1f
    const-string v2, "STATUS_BAD_VALUE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 v0, 0x0

    goto :goto_46

    :sswitch_29
    const-string v2, "STATUS_DEAD_OBJECT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v6

    goto :goto_46

    :sswitch_33
    const-string v2, "STATUS_NO_INIT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v4

    goto :goto_46

    :sswitch_3d
    const-string v2, "STATUS_PERMISSION_DENIED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v3

    :cond_46
    :goto_46
    const/4 p0, 0x0

    if-eqz v0, :cond_76

    if-eq v0, v6, :cond_6d

    if-eq v0, v5, :cond_64

    if-eq v0, v4, :cond_5b

    if-eq v0, v3, :cond_52

    goto :goto_aa

    :cond_52
    invoke-static {}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->access$400()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_5b
    invoke-static {}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->access$300()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_64
    invoke-static {}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->access$200()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_6d
    invoke-static {}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_76
    invoke-static {}, Lcom/oplus/compat/hardware/soundtrigger/SoundTriggerNative$RefSoundTriggerInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7e} :catch_7f

    return p0

    :catch_7f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :cond_88
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v0, "hardware.soundtrigger.SoundTrigger"

    invoke-static {v0, p0}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_a5
    const-string p0, "is not supported before R"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    const/high16 p0, -0x80000000

    return p0

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x7461c702 -> :sswitch_3d
        -0x4d7faa7f -> :sswitch_33
        -0xf249153 -> :sswitch_29
        0x3eab46a -> :sswitch_1f
        0x61b291d2 -> :sswitch_15
    .end sparse-switch
.end method
