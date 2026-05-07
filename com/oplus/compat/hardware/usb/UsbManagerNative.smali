.class public Lcom/oplus/compat/hardware/usb/UsbManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.hardware.usb.UsbManagerNative"

.field private static final EXTRA_FUNCTION:Ljava/lang/String; = "EXTRA_FUNCTION"

.field private static final EXTRA_FUNCTION_ACCESSORY:Ljava/lang/String; = "EXTRA_FUNCTION_ACCESSORY"

.field private static final EXTRA_FUNCTION_ADB:Ljava/lang/String; = "EXTRA_FUNCTION_ADB"

.field private static final EXTRA_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "EXTRA_FUNCTION_AUDIO_SOURCE"

.field private static final EXTRA_FUNCTION_MIDI:Ljava/lang/String; = "EXTRA_FUNCTION_MIDI"

.field private static final EXTRA_FUNCTION_MTP:Ljava/lang/String; = "EXTRA_FUNCTION_MTP"

.field private static final EXTRA_FUNCTION_NCM:Ljava/lang/String; = "EXTRA_FUNCTION_NCM"

.field private static final EXTRA_FUNCTION_NONE:Ljava/lang/String; = "EXTRA_FUNCTION_NONE"

.field private static final EXTRA_FUNCTION_PTP:Ljava/lang/String; = "EXTRA_FUNCTION_PTP"

.field private static final EXTRA_FUNCTION_RNDIS:Ljava/lang/String; = "EXTRA_FUNCTION_RNDIS"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "EXTRA_PACKAGE_NAME"

.field private static final EXTRA_USB_DEVICE:Ljava/lang/String; = "EXTRA_USB_DEVICE"

.field public static FUNCTION_ACCESSORY:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_ADB:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_AUDIO_SOURCE:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_MIDI:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_MTP:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_NCM:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_NONE:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_PTP:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field public static FUNCTION_RNDIS:Ljava/lang/Long; = null
    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UsbManagerNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->initFunctions()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.usb.UsbManagerNative"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "grantPermission"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "EXTRA_USB_DEVICE"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "EXTRA_PACKAGE_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    goto :goto_44

    :cond_2f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    :goto_44
    return-void

    :cond_45
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initFunctions()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const-string v1, "UsbManagerNative"

    if-eqz v0, :cond_8f

    const-string v0, "android.hardware.usb.UsbManagerNative"

    const-string v2, "initFunctions"

    invoke-static {v0, v2}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_89

    const-string v1, "EXTRA_FUNCTION_NONE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_NONE:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_MTP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_MTP:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_PTP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_PTP:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_RNDIS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_RNDIS:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_MIDI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_MIDI:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_ACCESSORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_ACCESSORY:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_AUDIO_SOURCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_AUDIO_SOURCE:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_ADB"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_ADB:Ljava/lang/Long;

    const-string v1, "EXTRA_FUNCTION_NCM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_NCM:Ljava/lang/Long;

    goto :goto_e3

    :cond_89
    const-string v0, "[initFunctions] failed! initFunctions result is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    :cond_8f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_de

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_NONE:Ljava/lang/Long;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_MTP:Ljava/lang/Long;

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_PTP:Ljava/lang/Long;

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_RNDIS:Ljava/lang/Long;

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_MIDI:Ljava/lang/Long;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_ACCESSORY:Ljava/lang/Long;

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_AUDIO_SOURCE:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_ADB:Ljava/lang/Long;

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/hardware/usb/UsbManagerNative;->FUNCTION_NCM:Ljava/lang/Long;

    goto :goto_e3

    :cond_de
    const-string v0, "[initFunctions] failed! not supported before P!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    :goto_e3
    return-void
.end method

.method public static setCurrentFunctions(Ljava/lang/Long;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.usb.UsbManagerNative"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setCurrentFunctions"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "EXTRA_FUNCTION"

    invoke-virtual {v0, p0, v1, v2}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    goto :goto_46

    :cond_2d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    :goto_46
    return-void

    :cond_47
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before P"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
