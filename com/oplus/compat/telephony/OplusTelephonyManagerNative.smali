.class public Lcom/oplus/compat/telephony/OplusTelephonyManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.telephony.OplusTelephonyManager"

.field private static final KEY_EVENT_BUNDLE:Ljava/lang/String; = "eventBundle"

.field private static final KEY_EVENT_ID:Ljava/lang/String; = "eventId"

.field private static final KEY_SLOT_INDEX:Ljava/lang/String; = "slotIndex"

.field private static final TAG:Ljava/lang/String; = "OplusTelephonyManagerNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "android.telephony.OplusTelephonyManager"

    const-string v1, "requestForTelephonyEvent"

    const-string v2, "slotIndex"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "eventId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "eventBundle"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_39
    const-string p1, "requestForTelephonyEvent: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "OplusTelephonyManagerNative"

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_46
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not support in T"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
