.class public Lcom/airbnb/lottie/LottieAnimationView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/l<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Throwable;

    sget-object p0, Lq/j;->a:Landroid/graphics/PathMeasure;

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_23

    instance-of p0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez p0, :cond_23

    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-nez p0, :cond_23

    instance-of p0, p1, Ljava/net/ProtocolException;

    if-nez p0, :cond_23

    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    if-nez p0, :cond_23

    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-nez p0, :cond_23

    instance-of p0, p1, Ljava/net/UnknownServiceException;

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    if-eqz p0, :cond_2c

    const-string p0, "Unable to load composition."

    invoke-static {p0, p1}, Lq/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
