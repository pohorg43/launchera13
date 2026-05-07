.class public Lcom/oplus/anim/value/Keyframe;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSET_FLOAT:F = -3987645.8f

.field private static final UNSET_INT:I = 0x2ec8fb09


# instance fields
.field private final composition:Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public endFrame:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endProgress:F

.field public endValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private endValueFloat:F

.field private endValueInt:I

.field public final interpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public pathCp1:Landroid/graphics/PointF;

.field public pathCp2:Landroid/graphics/PointF;

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startValueFloat:F

.field private startValueInt:I

.field public final xInterpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final yInterpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 8
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    iput-object p2, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iput-object p6, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 9
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    iput-object p2, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput p6, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iput-object p7, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 10
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    iput-object p2, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput p7, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iput-object p8, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public containsProgress(F)Z
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->getEndProgress()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public getEndProgress()F
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v0, :cond_15

    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    goto :goto_2c

    :cond_15
    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/oplus/anim/value/Keyframe;->endProgress:F

    return p0
.end method

.method public getEndValueFloat()F
    .registers 3

    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    :cond_13
    iget p0, p0, Lcom/oplus/anim/value/Keyframe;->endValueFloat:F

    return p0
.end method

.method public getEndValueInt()I
    .registers 3

    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    :cond_11
    iget p0, p0, Lcom/oplus/anim/value/Keyframe;->endValueInt:I

    return p0
.end method

.method public getStartProgress()F
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget v1, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    :cond_1d
    iget p0, p0, Lcom/oplus/anim/value/Keyframe;->startProgress:F

    return p0
.end method

.method public getStartValueFloat()F
    .registers 3

    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    :cond_13
    iget p0, p0, Lcom/oplus/anim/value/Keyframe;->startValueFloat:F

    return p0
.end method

.method public getStartValueInt()I
    .registers 3

    iget v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    :cond_11
    iget p0, p0, Lcom/oplus/anim/value/Keyframe;->startValueInt:I

    return p0
.end method

.method public isStatic()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Keyframe{startValue="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
