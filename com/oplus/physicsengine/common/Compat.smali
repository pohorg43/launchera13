.class public Lcom/oplus/physicsengine/common/Compat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EPSILON:F = 1.1920929E-7f

.field public static final FORCE_RATIO:F = 1.0f

.field public static final LINEAR_DAMPING_INTERCEPT:F = 2.2141f

.field public static final LINEAR_DAMPING_SLOPE:F = 0.052f

.field public static final PHYSICAL_SIZE_TO_DP_RATIO:I = 0x37

.field public static final POSITION_VALUE_THRESHOLD:F = 1.0f

.field public static final ROTATION_VALUE_THRESHOLD:F = 0.1f

.field public static final SCALE_VALUE_THRESHOLD:F = 0.002f

.field public static final UNSET:F = 0.0f

.field public static final UNSET_FREQUENCY:F = 50.0f

.field public static final VELOCITY_ITERATIONS:I = 0x4

.field public static sPhysicalSizeToPixelsRatio:F = 160.0f

.field public static sRefreshRate:F = 0.008333334f

.field public static sSteadyAccuracy:F = 0.1f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLinearDampingByMass(F)F
    .registers 2

    invoke-static {p0}, Lcom/oplus/physicsengine/common/MathUtils;->sqrt(F)F

    move-result p0

    const v0, 0x40370a3e  # 2.8600001f

    mul-float/2addr p0, v0

    const v0, 0x400db3d0

    add-float/2addr p0, v0

    return p0
.end method

.method public static dpToPhysicalSize(F)F
    .registers 2

    const/high16 v0, 0x425c0000  # 55.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static lessThanSteadyAccuracy(F)Z
    .registers 2

    sget v0, Lcom/oplus/physicsengine/common/Compat;->sSteadyAccuracy:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static physicalSizeToDp(F)F
    .registers 2

    const/high16 v0, 0x425c0000  # 55.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static physicalSizeToPixels(F)F
    .registers 2

    sget v0, Lcom/oplus/physicsengine/common/Compat;->sPhysicalSizeToPixelsRatio:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static pixelsToPhysicalSize(F)F
    .registers 2

    sget v0, Lcom/oplus/physicsengine/common/Compat;->sPhysicalSizeToPixelsRatio:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static updatePhysicalSizeToPixelsRatio(F)V
    .registers 2

    const/high16 v0, 0x425c0000  # 55.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    sput p0, Lcom/oplus/physicsengine/common/Compat;->sPhysicalSizeToPixelsRatio:F

    const p0, 0x3dcccccd  # 0.1f

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p0

    sput p0, Lcom/oplus/physicsengine/common/Compat;->sSteadyAccuracy:F

    return-void
.end method

.method public static updateRefreshRate(F)V
    .registers 1

    sput p0, Lcom/oplus/physicsengine/common/Compat;->sRefreshRate:F

    return-void
.end method
