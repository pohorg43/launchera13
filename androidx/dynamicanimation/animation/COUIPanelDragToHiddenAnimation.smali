.class public Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private mDuration:J

.field private mEndVelocity:F

.field private final mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

.field private mStartTime:J

.field private mStartVelocity:F


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p1, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartVelocity:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mEndVelocity:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartTime:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mDuration:J

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p1, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    const/4 p2, 0x0

    iput p2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartVelocity:F

    const/high16 p2, -0x40800000  # -1.0f

    iput p2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mEndVelocity:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartTime:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mDuration:J

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 3

    iget-object p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->getAcceleration(FF)F

    move-result p0

    return p0
.end method

.method public getFriction()F
    .registers 1

    iget-object p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->getFrictionScalar()F

    move-result p0

    return p0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 4

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public setDuration(J)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mDuration:J

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEndVelocity(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_8

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mEndVelocity:F

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Velocity must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFriction(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Friction must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
    .registers 2

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
    .registers 2

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;
    .registers 2

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iput p1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartVelocity:F

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setValueThreshold(F)V
    .registers 2

    iget-object p0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public start()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartTime:J

    iget-object v2, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    invoke-static {v2, v0, v1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->access$002(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;J)J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    iget-wide v1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartTime:J

    iget-wide v3, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mDuration:J

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->access$102(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;J)J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartVelocity:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->access$202(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mEndVelocity:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->access$302(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->access$402(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->access$502(Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;F)F

    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    move-wide v3, v7

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation$DragForce;->updateValueAndVelocity(FFJJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object p1

    iget p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iget v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mEndVelocity:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_32

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2d

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mStartTime:J

    iget-wide v3, p0, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->mDuration:J

    add-long/2addr v0, v3

    cmp-long v0, v7, v0

    if-ltz v0, :cond_32

    :cond_2d
    iget p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    return v2

    :cond_32
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_3b

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    return v2

    :cond_3b
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_44

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    return v2

    :cond_44
    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/COUIPanelDragToHiddenAnimation;->isAtEquilibrium(FF)Z

    move-result p0

    if-eqz p0, :cond_4b

    return v2

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method
