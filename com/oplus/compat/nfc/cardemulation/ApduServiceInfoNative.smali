.class public Lcom/oplus/compat/nfc/cardemulation/ApduServiceInfoNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApduServiceInfoNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceEnabled(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_6
    const-class v0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->isServiceEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_14} :catch_17

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0

    :catch_17
    move-exception p0

    const-string p1, "ApduServiceInfoNative"

    const-string v0, "no permission to access the blocked method"

    invoke-static {p0, p1, v0, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_21
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0, p1}, Lcom/oplus/inner/nfc/cardemulation/ApduServiceInfoWrapper;->isServiceEnabled(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0, p1}, Lcom/oplus/compat/nfc/cardemulation/ApduServiceInfoNative;->isServiceEnabledCompat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isServiceEnabledCompat(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
