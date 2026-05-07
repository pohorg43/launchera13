.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlingConfig"
.end annotation


# instance fields
.field private friction:F

.field private max:F

.field private min:F

.field private startVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object v0

    iget v0, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-direct {p0, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object v0

    iget v0, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object v1

    iget v1, v1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    iput p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;FFFFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->copy(FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyToAnimation$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/FlingAnimation;)V
    .registers 3

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getFriction$com_android_wm_shell_release()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getStartVelocity$com_android_wm_shell_release()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method public final component1$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    return p0
.end method

.method public final component4$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return p0
.end method

.method public final copy(FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
    .registers 5

    new-instance p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final getFriction$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    return p0
.end method

.method public final getMax()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    return p0
.end method

.method public final getMin()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    return p0
.end method

.method public final getStartVelocity$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setFriction$com_android_wm_shell_release(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    return-void
.end method

.method public final setMax(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    return-void
.end method

.method public final setMin(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    return-void
.end method

.method public final setStartVelocity$com_android_wm_shell_release(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FlingConfig(friction="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
