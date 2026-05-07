.class Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/inner/hardware/fingerprint/FingerprintManagerWrapper$OpticalFingerprintListenerCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/fingerprint/FingerprintManagerNative;->registerOpticalFingerprintListener(Landroid/hardware/fingerprint/FingerprintManager;Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;->val$callback:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpticalFingerprintUpdate(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;->val$callback:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;->onOpticalFingerprintUpdate(I)V

    return-void
.end method
