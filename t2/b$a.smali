.class public final Lt2/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lt2/b$a;J)J
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
