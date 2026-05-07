.class Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/OplusSpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReboundOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;,
        Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;
    }
.end annotation


# static fields
.field private static final FLING_CHANGE_INCREASE_STEP:F = 1.2f

.field private static final FLING_CHANGE_REDUCE_STEP:F = 0.6f

.field private static final FLING_DXDT_RATIO:F = 0.167f

.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final NUM_60:I = 0x3c

.field private static final SPRING_BACK_ADJUST_TENSION_VALUE:I = 0x64

.field private static final SPRING_BACK_ADJUST_THRESHOLD:I = 0xb4

.field private static final SPRING_BACK_FRICTION:F = 20.0f

.field private static final SPRING_BACK_STOP_THRESHOLD:I = 0x2

.field private static final SPRING_BACK_TENSION:F = 30.0f

.field private static sTimeIncrease:F = 1.0f


# instance fields
.field private mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mCount:I

.field private mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mFlingFriction:F

.field private mIsScrollView:Z

.field private mIsSpringBack:Z

.field private mPreviousState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mScrollDuration:I

.field private mScrollFinal:I

.field private mScrollStart:I

.field private mScrollStartTime:J

.field private mSpringBackConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mSpringBackTensionMultiple:F

.field private mStartValue:D

.field private mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mTensionAdjusted:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    new-instance v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    new-instance v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const v0, 0x3f87ae14  # 1.06f

    iput v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    const-wide/high16 v1, 0x4059000000000000L  # 100.0

    iput-wide v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    const-wide v1, 0x3fa999999999999aL  # 0.05

    iput-wide v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    const v1, 0x4009999a  # 2.15f

    iput v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    new-instance v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    new-instance v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/high16 v1, 0x4034000000000000L  # 20.0

    const-wide/high16 v3, 0x403e000000000000L  # 30.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mStartValue:D

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    return p1
.end method


# virtual methods
.method public fling(II)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCount:I

    const/high16 v1, 0x3f800000  # 1.0f

    sput v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    iget-object v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    iget-object v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    iget-object v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setVelocity(D)V

    return-void
.end method

.method public getCurrentValue()D
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-wide v0
.end method

.method public getDisplacementDistanceForState(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;)D
    .registers 4

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    iget-wide p0, p1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEndValue()D
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method public getVelocity()D
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-wide v0
.end method

.method public isAtRest()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_24

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public notifyEdgeReached(III)V
    .registers 6

    iget-object p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v0, p1

    iput-wide v0, p2, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide p2, p1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method public setAtRest()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    iget-object v3, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v3, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    return-void
.end method

.method public setConfig(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentValue(DZ)V
    .registers 7

    iput-wide p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mStartValue:D

    iget-boolean v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    if-eqz p3, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setAtRest()V

    :cond_19
    return-void
.end method

.method public setEndValue(D)V
    .registers 5

    iget-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mStartValue:D

    iput-wide p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-void
.end method

.method public setVelocity(D)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2e0000000L  # 9.999999747378752E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_14

    return-void

    :cond_14
    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method public springBack(III)Z
    .registers 7

    int-to-double v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    if-gt p1, p3, :cond_18

    if-ge p1, p2, :cond_a

    goto :goto_18

    :cond_a
    new-instance p1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double p2, p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return v2

    :cond_18
    :goto_18
    if-le p1, p3, :cond_1f

    int-to-double p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    goto :goto_25

    :cond_1f
    if-ge p1, p2, :cond_25

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    :cond_25
    :goto_25
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    iget-object p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    iget-object p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p3, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    const/high16 v0, 0x41f00000  # 30.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    iget-object p2, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return p1
.end method

.method public startScroll(III)V
    .registers 4

    iput p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollStart:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    iput p3, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    iget-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return-void
.end method

.method public update()Z
    .registers 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-wide v5, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iget-object v7, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v8, v7, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-wide v10, v7, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iget-boolean v7, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    const/4 v10, 0x1

    const-wide/high16 v11, 0x4000000000000000L  # 2.0

    if-nez v7, :cond_50

    iget v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCount:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_38

    sget v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    const v2, 0x3ca3d70b  # 0.020000001f

    add-float/2addr v1, v2

    sput v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v13, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    const-wide v15, 0x3f947ae160000000L  # 0.020000001415610313

    add-double/2addr v13, v15

    iput-wide v13, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_7c

    :cond_38
    sget v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    const v2, 0x3f19999a  # 0.6f

    sub-float v7, v1, v2

    const/high16 v13, 0x42700000  # 60.0f

    div-float/2addr v7, v13

    sub-float/2addr v1, v7

    sput v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    iget-object v7, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v14, v7, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    float-to-double v1, v1

    sub-double/2addr v14, v1

    iput-wide v14, v7, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_7c

    :cond_50
    invoke-virtual {v0, v1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v13

    iget-boolean v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    if-nez v1, :cond_6d

    const-wide v15, 0x4066800000000000L  # 180.0

    cmpg-double v1, v13, v15

    if-gez v1, :cond_6d

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v13, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/high16 v15, 0x4059000000000000L  # 100.0

    add-double/2addr v13, v15

    iput-wide v13, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    iput-boolean v10, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    goto :goto_7c

    :cond_6d
    cmpg-double v1, v13, v11

    if-gez v1, :cond_7c

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    iput-wide v3, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-boolean v2, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    iput-boolean v2, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    return v2

    :cond_7c
    :goto_7c
    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v13, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    iget-wide v10, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v10, v8

    mul-double/2addr v10, v13

    iget-wide v7, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v12, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    mul-double/2addr v7, v12

    sub-double/2addr v10, v7

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v7, v1

    mul-double/2addr v7, v5

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    div-double/2addr v7, v12

    add-double/2addr v7, v3

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v14, v1

    mul-double/2addr v14, v10

    div-double v17, v14, v12

    add-double v17, v17, v5

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v12, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v19, v3

    iget-wide v2, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v2, v7

    mul-double/2addr v2, v12

    iget-wide v7, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double v7, v7, v17

    sub-double/2addr v2, v7

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v7, v1

    mul-double v7, v7, v17

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    div-double/2addr v7, v12

    add-double v7, v7, v19

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v14, v1

    mul-double/2addr v14, v2

    div-double v21, v14, v12

    add-double v21, v21, v5

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v12, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v23, v5

    iget-wide v4, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v4, v7

    mul-double/2addr v4, v12

    iget-wide v7, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double v7, v7, v21

    sub-double/2addr v4, v7

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v7, v1

    mul-double v7, v7, v21

    add-double v7, v7, v19

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v12, v1

    mul-double/2addr v12, v4

    add-double v12, v12, v23

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v14, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v25, v10

    iget-wide v9, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v9, v7

    mul-double/2addr v9, v14

    iget-wide v14, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v14, v12

    sub-double/2addr v9, v14

    add-double v17, v17, v21

    const-wide/high16 v14, 0x4000000000000000L  # 2.0

    mul-double v17, v17, v14

    add-double v17, v17, v23

    add-double v17, v17, v12

    const-wide v21, 0x3fc5604180000000L  # 0.16699999570846558

    mul-double v17, v17, v21

    add-double/2addr v2, v4

    mul-double/2addr v2, v14

    add-double v2, v2, v25

    add-double/2addr v2, v9

    mul-double v2, v2, v21

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v4, v1

    mul-double v17, v17, v4

    add-double v4, v17, v19

    invoke-static {}, Lcom/android/launcher/OplusSpringOverScroller;->access$800()F

    move-result v1

    float-to-double v9, v1

    mul-double/2addr v2, v9

    add-double v2, v2, v23

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v12, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iput-wide v7, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-object v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v2, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iput-wide v4, v1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCount:I

    return v2
.end method

.method public updateScroll(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v1, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollStart:I

    iget p0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    invoke-static {p1, p0, v1}, Landroidx/core/animation/b;->a(FFI)I

    move-result p0

    int-to-double p0, p0

    iput-wide p0, v0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-void
.end method
