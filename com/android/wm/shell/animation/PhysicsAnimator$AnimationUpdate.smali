.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationUpdate"
.end annotation


# instance fields
.field private final value:F

.field private final velocity:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;FFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->copy(FF)Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    return p0
.end method

.method public final copy(FF)Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;
    .registers 3

    new-instance p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;-><init>(FF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    return v2

    :cond_32
    return v0
.end method

.method public final getValue()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    return p0
.end method

.method public final getVelocity()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AnimationUpdate(value="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;->velocity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
