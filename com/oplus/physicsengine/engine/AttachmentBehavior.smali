.class public Lcom/oplus/physicsengine/engine/AttachmentBehavior;
.super Lcom/oplus/physicsengine/engine/ConstraintBehavior;
.source ""


# static fields
.field public static final ATTACHMENT_TYPE_BOUNDS:I = 0x0

.field public static final ATTACHMENT_TYPE_CORNERS:I = 0x1

.field public static final BOUNDS_SIDE_ALL:I = 0xf

.field public static final BOUNDS_SIDE_BOTTOM:I = 0x8

.field public static final BOUNDS_SIDE_LEFT:I = 0x1

.field public static final BOUNDS_SIDE_LEFT_RIGHT:I = 0x3

.field public static final BOUNDS_SIDE_RIGHT:I = 0x2

.field public static final BOUNDS_SIDE_TOP:I = 0x4

.field public static final BOUNDS_SIDE_TOP_BOTTOM:I = 0xc


# instance fields
.field private mAttachmentType:I

.field private mBottomSideChangedThreshold:F

.field private mBoundsSide:I

.field private mCurrentSide:I

.field private mLeftSideChangedThreshold:F

.field private mRightSideChangedThreshold:F

.field private mTopSideChangedThreshold:F

.field private final mXChangeSideVelocityLimit:F

.field private final mYChangeSideVelocityLimit:F


# direct methods
.method public constructor <init>(IILandroid/graphics/RectF;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;-><init>(ILandroid/graphics/RectF;)V

    const/high16 p3, 0x41700000  # 15.0f

    invoke-static {p3}, Lcom/oplus/physicsengine/common/Compat;->physicalSizeToPixels(F)F

    move-result p3

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mXChangeSideVelocityLimit:F

    const/high16 p3, 0x41f00000  # 30.0f

    invoke-static {p3}, Lcom/oplus/physicsengine/common/Compat;->physicalSizeToPixels(F)F

    move-result p3

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mYChangeSideVelocityLimit:F

    const/16 p3, 0xf

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBoundsSide:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 p3, 0x5

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    const p3, 0x7f7fffff  # Float.MAX_VALUE

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mLeftSideChangedThreshold:F

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mRightSideChangedThreshold:F

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mTopSideChangedThreshold:F

    iput p3, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBottomSideChangedThreshold:F

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    iput p2, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBoundsSide:I

    return-void
.end method

.method private attachCloseSideWithConstraint()V
    .registers 8

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBoundsSide:I

    and-int/lit8 v1, v0, 0x1

    const v2, 0x7f7fffff  # Float.MAX_VALUE

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget-object v3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v3, v3, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v3, v3, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    sub-float/2addr v3, v4

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_31

    iget v4, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    iget-object v5, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v5, v5, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    goto :goto_32

    :cond_31
    move v4, v2

    :goto_32
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    sub-float/2addr v0, v5

    goto :goto_41

    :cond_40
    move v0, v2

    :goto_41
    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mLeftSideChangedThreshold:F

    cmpl-float v5, v1, v5

    const/4 v6, 0x1

    if-lez v5, :cond_4e

    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4e

    move v1, v2

    :cond_4e
    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mRightSideChangedThreshold:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5b

    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5b

    move v3, v2

    :cond_5b
    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mTopSideChangedThreshold:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_68

    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_68

    move v4, v2

    :cond_68
    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBottomSideChangedThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_75

    iget v5, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_75

    goto :goto_76

    :cond_75
    move v2, v0

    :goto_76
    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    if-eqz v0, :cond_ac

    if-eq v0, v6, :cond_7d

    goto :goto_df

    :cond_7d
    invoke-static {v1, v3}, Lcom/oplus/physicsengine/common/MathUtils;->min(FF)F

    move-result v0

    invoke-static {v4, v2}, Lcom/oplus/physicsengine/common/MathUtils;->min(FF)F

    move-result v5

    invoke-static {v0, v1}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToLeft()V

    goto :goto_98

    :cond_8f
    invoke-static {v0, v3}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToRight()V

    :cond_98
    :goto_98
    invoke-static {v5, v4}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToTop()V

    goto :goto_df

    :cond_a2
    invoke-static {v5, v2}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToBottom()V

    goto :goto_df

    :cond_ac
    invoke-static {v4, v2}, Lcom/oplus/physicsengine/common/MathUtils;->min(FF)F

    move-result v0

    invoke-static {v1, v3}, Lcom/oplus/physicsengine/common/MathUtils;->min(FF)F

    move-result v5

    invoke-static {v0, v5}, Lcom/oplus/physicsengine/common/MathUtils;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToLeft()V

    goto :goto_df

    :cond_c2
    invoke-static {v0, v3}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToRight()V

    goto :goto_df

    :cond_cc
    invoke-static {v0, v4}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToTop()V

    goto :goto_df

    :cond_d6
    invoke-static {v0, v2}, Lcom/oplus/physicsengine/common/MathUtils;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToBottom()V

    :cond_df
    :goto_df
    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_103

    const-string v0, "attachCloseSideWithConstraint mPropertyBody.mActiveRect =:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, v1, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentSide =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_103
    return-void
.end method

.method private calculateBoundConstraintPosition(FF)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, v1, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    cmpl-float v6, p1, v5

    if-nez v6, :cond_1b

    const v6, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_1d

    :cond_1b
    div-float v6, p2, p1

    :goto_1d
    cmpg-float p1, p1, v5

    if-gtz p1, :cond_6c

    iget p1, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float v3, p1, v4

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    sub-float v7, v0, v2

    div-float/2addr v3, v7

    cmpg-float v7, p2, v5

    if-gtz v7, :cond_41

    cmpl-float v3, v6, v3

    if-lez v3, :cond_41

    iput v4, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    sub-float/2addr v4, p1

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void

    :cond_41
    sub-float v3, p1, v1

    sub-float v4, v0, v2

    div-float/2addr v3, v4

    cmpl-float p2, p2, v5

    if-lez p2, :cond_5d

    cmpg-float p2, v6, v3

    if-gtz p2, :cond_5d

    iput v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    sub-float/2addr v1, p1

    div-float/2addr v1, v6

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void

    :cond_5d
    iput v2, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, v6

    add-float/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void

    :cond_6c
    iget p1, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float v2, p1, v4

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    sub-float v7, v0, v3

    div-float/2addr v2, v7

    cmpg-float v7, p2, v5

    if-gtz v7, :cond_8c

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_8c

    iput v4, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    sub-float/2addr v4, p1

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void

    :cond_8c
    sub-float v2, p1, v1

    sub-float v4, v0, v3

    div-float/2addr v2, v4

    cmpl-float p2, p2, v5

    if-lez p2, :cond_a8

    cmpl-float p2, v6, v2

    if-lez p2, :cond_a8

    iput v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    sub-float/2addr v1, p1

    div-float/2addr v1, v6

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void

    :cond_a8
    iput v3, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    sub-float/2addr v3, v0

    mul-float/2addr v3, v6

    add-float/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void
.end method

.method private calculateConstraintPositionLowVel(FF)Z
    .registers 5

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    if-eq v0, v1, :cond_8

    goto :goto_3f

    :cond_8
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/MathUtils;->sqrt(F)F

    move-result p1

    iget p2, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mXChangeSideVelocityLimit:F

    mul-float/2addr p2, p2

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mYChangeSideVelocityLimit:F

    mul-float/2addr v0, v0

    add-float/2addr v0, p2

    invoke-static {v0}, Lcom/oplus/physicsengine/common/MathUtils;->sqrt(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3f

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToCloseSide()V

    return v1

    :cond_22
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/MathUtils;->sqrt(F)F

    move-result p1

    iget p2, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mXChangeSideVelocityLimit:F

    mul-float/2addr p2, p2

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mYChangeSideVelocityLimit:F

    mul-float/2addr v0, v0

    add-float/2addr v0, p2

    invoke-static {v0}, Lcom/oplus/physicsengine/common/MathUtils;->sqrt(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_41

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverBounds()Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_41

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    return p0

    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToCloseSide()V

    return v1
.end method

.method private calculateCornerConstraintPosition(FF)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_9

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToLeft()V

    goto :goto_c

    :cond_9
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToRight()V

    :goto_c
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_14

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToTop()V

    goto :goto_17

    :cond_14
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->convertToBottom()V

    :goto_17
    return-void
.end method

.method private convertToBottom()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const/16 v0, 0xc

    goto :goto_12

    :cond_10
    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    :goto_12
    iget v1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    not-int v0, v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    return-void
.end method

.method private convertToCloseSide()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "convertToCloseSide mConstraintPointX =:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mConstraintPointY =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mActiveUIItem.mMoveTarget =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_46
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->attachCloseSideWithConstraint()V

    return-void
.end method

.method private convertToLeft()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x3

    goto :goto_11

    :cond_f
    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    :goto_11
    iget v2, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    not-int v0, v0

    and-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    return-void
.end method

.method private convertToRight()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x3

    goto :goto_11

    :cond_f
    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    :goto_11
    iget v1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    not-int v0, v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    return-void
.end method

.method private convertToTop()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const/16 v0, 0xc

    goto :goto_12

    :cond_10
    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    :goto_12
    iget v1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    not-int v0, v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    return-void
.end method


# virtual methods
.method public calculateConstraintPosition()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-direct {p0, v1, v0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->calculateConstraintPositionLowVel(FF)Z

    move-result v0

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    goto :goto_2d

    :cond_16
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-direct {p0, v1, v0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->calculateCornerConstraintPosition(FF)V

    goto :goto_2d

    :cond_22
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-direct {p0, v1, v0}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->calculateBoundConstraintPosition(FF)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public getCurrentBodySide()I
    .registers 1

    iget p0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    return p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public handlePositionChanging()V
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    const/4 v1, 0x1

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iput v2, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    :cond_36
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverYBounds()Z

    move-result v0

    if-eqz v0, :cond_3e

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    :cond_3e
    iget v0, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mCurrentSide:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput v2, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    :cond_62
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverXBounds()Z

    move-result v0

    if-eqz v0, :cond_6a

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    :cond_6a
    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    :cond_7f
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->transform(Lcom/oplus/physicsengine/common/Vector;)V

    goto :goto_9d

    :cond_87
    if-ne v0, v1, :cond_9d

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->transform(Lcom/oplus/physicsengine/common/Vector;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public setAttachmentType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mAttachmentType:I

    return-void
.end method

.method public setBottomSideChangedThreshold(F)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBottomSideChangedThreshold:F

    return-void
.end method

.method public setBoundsSide(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mBoundsSide:I

    return-void
.end method

.method public setLeftSideChangedThreshold(F)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mLeftSideChangedThreshold:F

    return-void
.end method

.method public setRightSideChangedThreshold(F)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mRightSideChangedThreshold:F

    return-void
.end method

.method public setTopSideChangedThreshold(F)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/AttachmentBehavior;->mTopSideChangedThreshold:F

    return-void
.end method

.method public start()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->startBehavior()V

    return-void
.end method

.method public stop()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->stopBehavior()Z

    return-void
.end method
