.class public final Lcom/oplus/glcomponent/math/RandomXS128$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/math/RandomXS128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/glcomponent/math/RandomXS128$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$murmurHash3(Lcom/oplus/glcomponent/math/RandomXS128$Companion;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/math/RandomXS128$Companion;->murmurHash3(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final murmurHash3(J)J
    .registers 5

    const/16 p0, 0x21

    ushr-long v0, p1, p0

    xor-long/2addr p1, v0

    const-wide v0, -0xae502812aa7333L

    mul-long/2addr p1, v0

    ushr-long v0, p1, p0

    xor-long/2addr p1, v0

    const-wide v0, -0x3b314601e57a13adL  # -2.902039044684214E23

    mul-long/2addr p1, v0

    ushr-long v0, p1, p0

    xor-long p0, p1, v0

    return-wide p0
.end method
