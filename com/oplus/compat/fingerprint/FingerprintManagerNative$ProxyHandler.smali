.class Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/fingerprint/FingerprintManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyHandler"
.end annotation


# instance fields
.field private final mCallBack:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;


# direct methods
.method private constructor <init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;->mCallBack:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;Lcom/oplus/compat/fingerprint/FingerprintManagerNative$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;-><init>(Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFingerprintEngineeringInfoUpdated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;->mCallBack:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;

    aget-object p1, p3, v0

    check-cast p1, Landroid/hardware/fingerprint/EngineeringInfo;

    invoke-interface {p0, p1}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;->onEngineeringInfoUpdated(Landroid/hardware/fingerprint/EngineeringInfo;)V

    goto :goto_35

    :cond_17
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$ProxyHandler;->mCallBack:Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/fingerprint/FingerprintManagerNative$FingerprintExtraInfoCallbackNative;->onError(ILjava/lang/CharSequence;)V

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method
