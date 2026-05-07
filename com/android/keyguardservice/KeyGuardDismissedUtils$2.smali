.class Lcom/android/keyguardservice/KeyGuardDismissedUtils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addAnimByPosition(Ljava/util/ArrayList;Landroid/view/View;FFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    const p0, 0x3ecccccd  # 0.4f

    cmpg-float p0, p1, p0

    const/high16 v0, 0x40a00000  # 5.0f

    const/high16 v1, 0x3f800000  # 1.0f

    if-gez p0, :cond_22

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-float/2addr p1, v0

    const/high16 p0, 0x40000000  # 2.0f

    div-float/2addr p1, p0

    sub-float/2addr v1, p1

    float-to-double p0, v1

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide/high16 p0, 0x4040000000000000L  # 32.0

    mul-double/2addr v2, p0

    const-wide/high16 p0, 0x403b000000000000L  # 27.0

    div-double/2addr v2, p0

    double-to-float p0, v2

    return p0

    :cond_22
    mul-float/2addr p1, v1

    sub-float/2addr p1, v1

    const/high16 p0, 0x41100000  # 9.0f

    invoke-static {p1, p0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->access$000(FF)F

    move-result p0

    mul-float/2addr p0, v0

    const/high16 p1, 0x41d80000  # 27.0f

    div-float/2addr p0, p1

    add-float/2addr p0, v1

    return p0
.end method
