.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpringConfig"
.end annotation


# instance fields
.field private dampingRatio:F

.field private finalPosition:F

.field private startVelocity:F

.field private stiffness:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultSpring$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v0

    iget v0, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultSpring$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v1

    iget v1, v1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iput p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_d

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getUNSET$p()F

    move-result p4

    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;FFFFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->copy(FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyToAnimation$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .registers 4

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    :cond_10
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getStiffness()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getDampingRatio$com_android_wm_shell_release()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getFinalPosition$com_android_wm_shell_release()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-nez v0, :cond_37

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_37
    return-void
.end method

.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    return p0
.end method

.method public final component2$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    return p0
.end method

.method public final component3$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    return p0
.end method

.method public final component4$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return p0
.end method

.method public final copy(FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;
    .registers 5

    new-instance p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final getDampingRatio$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    return p0
.end method

.method public final getFinalPosition$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return p0
.end method

.method public final getStartVelocity$com_android_wm_shell_release()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    return p0
.end method

.method public final getStiffness()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setDampingRatio$com_android_wm_shell_release(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    return-void
.end method

.method public final setFinalPosition$com_android_wm_shell_release(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return-void
.end method

.method public final setStartVelocity$com_android_wm_shell_release(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    return-void
.end method

.method public final setStiffness(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SpringConfig(stiffness="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dampingRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", finalPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
