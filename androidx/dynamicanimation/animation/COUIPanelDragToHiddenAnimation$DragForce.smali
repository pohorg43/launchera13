.class final Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DragForce"
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final THOUSAND:F = 1000.0f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f

.field private static final ZERO:F


# instance fields
.field private mEndTime:J

.field private mEndValue:F

.field private mEndVelocity:F

.field private mFriction:F

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field private mStartTime:J

.field private mStartValue:F

.field private mStartVelocity:F

.field private mVelocityThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    const v0, -0x3f79999a  # -4.2f

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mFriction:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartTime:J

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartVelocity:F

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndVelocity:F

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartValue:F

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndValue:F

    return-void
.end method

.method public static synthetic access$002(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;J)J
    .registers 3

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartTime:J

    return-wide p1
.end method

.method public static synthetic access$102(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;J)J
    .registers 3

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndTime:J

    return-wide p1
.end method

.method public static synthetic access$202(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F
    .registers 2

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartVelocity:F

    return p1
.end method

.method public static synthetic access$302(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F
    .registers 2

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndVelocity:F

    return p1
.end method

.method public static synthetic access$402(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F
    .registers 2

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartValue:F

    return p1
.end method

.method public static synthetic access$502(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F
    .registers 2

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndValue:F

    return p1
.end method

.method private getCurrentValue(J)F
    .registers 7

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndValue:F

    return p0

    :cond_9
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    sub-long/2addr v0, v2

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget p2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartValue:F

    iget p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndValue:F

    invoke-static {p0, p2, p1, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private getCurrentVelocity(J)F
    .registers 7

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndVelocity:F

    return p0

    :cond_9
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    sub-long/2addr v0, v2

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget p2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mStartVelocity:F

    iget p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndVelocity:F

    invoke-static {p0, p2, p1, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 3

    iget-object p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    return p0
.end method

.method public getFrictionScalar()F
    .registers 2

    iget p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mFriction:F

    const v0, -0x3f79999a  # -4.2f

    div-float/2addr p0, v0

    return p0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setFrictionScalar(F)V
    .registers 3

    const v0, -0x3f79999a  # -4.2f

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mFriction:F

    return-void
.end method

.method public setValueThreshold(F)V
    .registers 3

    const/high16 v0, 0x427a0000  # 62.5f

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method

.method public updateValueAndVelocity(FFJJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 13

    iget v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mEndVelocity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    iget-object p3, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v2, p2

    long-to-float p4, p5

    const/high16 p5, 0x447a0000  # 1000.0f

    div-float p6, p4, p5

    iget v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mFriction:F

    mul-float/2addr p6, v0

    float-to-double v4, p6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p6, v4

    iput p6, p3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iget-object p3, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p6, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mFriction:F

    div-float v0, p2, p6

    sub-float/2addr p1, v0

    float-to-double v2, p1

    div-float/2addr p2, p6

    float-to-double p1, p2

    mul-float/2addr p6, p4

    div-float/2addr p6, p5

    float-to-double p4, p6

    invoke-static {p4, p5}, Ljava/lang/Math;->exp(D)D

    move-result-wide p4

    mul-double/2addr p4, p1

    add-double/2addr p4, v2

    double-to-float p1, p4

    iput p1, p3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    goto :goto_42

    :cond_32
    iget-object p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {p0, p3, p4}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->getCurrentVelocity(J)F

    move-result p2

    iput p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iget-object p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {p0, p3, p4}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->getCurrentValue(J)F

    move-result p2

    iput p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    :goto_42
    iget-object p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iput v1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    :cond_52
    iget-object p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object p0
.end method
