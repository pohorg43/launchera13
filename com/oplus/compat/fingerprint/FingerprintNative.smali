.class public Lcom/oplus/compat/fingerprint/FingerprintNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/fingerprint/FingerprintNative$RefFingerprintInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.hardware.fingerprint.Fingerprint"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "FingerprintNative"


# instance fields
.field private final mFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/Fingerprint;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/fingerprint/FingerprintNative;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method

.method private getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/FingerprintNative;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method


# virtual methods
.method public getBiometricId()I
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/compat/fingerprint/FingerprintNative$RefFingerprintInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/FingerprintNative;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v2, "android.hardware.fingerprint.Fingerprint"

    invoke-virtual {v0, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v2, "getBiometricId"

    invoke-virtual {v0, v2}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/FingerprintNative;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_56
    const-string v0, "getBiometricId error: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "FingerprintNative"

    invoke-static {p0, v0, v2}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_61
    return v1
.end method
