.class public Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
    }
.end annotation


# static fields
.field private static final ANIM_LEVEL_LOW:I = 0x2

.field public static final ANIM_TYPE_SCALE:I = 0x2

.field public static final ANIM_TYPE_TRANS_X:I = 0x0

.field public static final ANIM_TYPE_TRANS_Y:I = 0x1

.field private static final SPRING_SCALE_PARAMS_0:[[F

.field private static final SPRING_SCALE_PARAMS_1:[[F

.field private static final SPRING_SCALE_PARAMS_2:[[F

.field private static final SPRING_TRANS_PARAMS_X:[[F

.field private static final SPRING_TRANS_PARAMS_Y_0:[[F

.field private static final SPRING_TRANS_PARAMS_Y_1:[[F

.field private static final SPRING_TRANS_PARAMS_Y_2:[[F

.field private static final TAG:Ljava/lang/String; = "SwipeUpSpringAnim"


# instance fields
.field private final mSpringAnim:Lcom/oplus/animation/SpringAnimation;

.field private mTargetPosition:F


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_b4

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_bc

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_c4

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_X:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_cc

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_d4

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_dc

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_0:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_e4

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_ec

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_f4

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_1:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_fc

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_104

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_10c

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_2:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_114

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_11c

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_124

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_0:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_12c

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_134

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_13c

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_1:[[F

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_144

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_14c

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_154

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_2:[[F

    return-void

    :array_b4
    .array-data 4
        0x441ab0a4  # 618.76f
        0x3f9020c5  # 1.126f
    .end array-data

    :array_bc
    .array-data 4
        0x43fa0000  # 500.0f
        0x3f99999a  # 1.2f
    .end array-data

    :array_c4
    .array-data 4
        0x44098000  # 550.0f
        0x3f8ccccd  # 1.1f
    .end array-data

    :array_cc
    .array-data 4
        0x441ab0a4  # 618.76f
        0x3f9020c5  # 1.126f
    .end array-data

    :array_d4
    .array-data 4
        0x430c0000  # 140.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_dc
    .array-data 4
        0x44070000  # 540.0f
        0x3f99999a  # 1.2f
    .end array-data

    :array_e4
    .array-data 4
        0x441ab0a4  # 618.76f
        0x3f9020c5  # 1.126f
    .end array-data

    :array_ec
    .array-data 4
        0x43200000  # 160.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_f4
    .array-data 4
        0x43fa0000  # 500.0f
        0x3f99999a  # 1.2f
    .end array-data

    :array_fc
    .array-data 4
        0x441ab0a4  # 618.76f
        0x3f9020c5  # 1.126f
    .end array-data

    :array_104
    .array-data 4
        0x433e0000  # 190.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_10c
    .array-data 4
        0x43c80000  # 400.0f
        0x3f99999a  # 1.2f
    .end array-data

    :array_114
    .array-data 4
        0x43fe7d71
        0x3f781062  # 0.969f
    .end array-data

    :array_11c
    .array-data 4
        0x439b0000  # 310.0f
        0x3f8ccccd  # 1.1f
    .end array-data

    :array_124
    .array-data 4
        0x43fa0000  # 500.0f
        0x3f99999a  # 1.2f
    .end array-data

    :array_12c
    .array-data 4
        0x43fe7d71
        0x3f781062  # 0.969f
    .end array-data

    :array_134
    .array-data 4
        0x43960000  # 300.0f
        0x3f8ccccd  # 1.1f
    .end array-data

    :array_13c
    .array-data 4
        0x43fa0000  # 500.0f
        0x3f8ccccd  # 1.1f
    .end array-data

    :array_144
    .array-data 4
        0x43fe7d71
        0x3f781062  # 0.969f
    .end array-data

    :array_14c
    .array-data 4
        0x43960000  # 300.0f
        0x3f8ccccd  # 1.1f
    .end array-data

    :array_154
    .array-data 4
        0x43d70000  # 430.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;FFFFLcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;IZ)V
    .registers 10
    .param p8  # I
        .annotation build Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/oplus/animation/FloatPropertyCompat<",
            "TK;>;FFFF",
            "Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    new-instance p4, Lcom/oplus/animation/SpringAnimation;

    invoke-direct {p4, p1, p2}, Lcom/oplus/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;)V

    invoke-virtual {p4, p3}, Lcom/oplus/animation/SpringAnimation;->setStartValue(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/oplus/animation/SpringAnimation;

    mul-float/2addr p5, p6

    invoke-virtual {p1, p5}, Lcom/oplus/animation/SpringAnimation;->setStartVelocity(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/oplus/animation/SpringAnimation;

    iget p2, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    invoke-static {p2, p8}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FI)Lcom/oplus/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/animation/SpringAnimation;->setSpring(Lcom/oplus/animation/SpringForce;)Lcom/oplus/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/oplus/animation/SpringAnimation;

    invoke-virtual {p1, p7}, Lcom/oplus/animation/SpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/animation/DynamicAnimation;

    iget p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public static initSpringForce(FI)Lcom/oplus/animation/SpringForce;
    .registers 12
    .param p1  # I
        .annotation build Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
        .end annotation
    .end param

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_12

    move v0, v5

    :cond_12
    sget v4, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v4, :cond_21

    sget v4, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    mul-float/2addr v4, v4

    goto :goto_22

    :cond_21
    move v4, v6

    :goto_22
    const-string v7, "initSpringForce: speed = "

    const-string v8, ", animType = "

    const-string v9, ", springDurationScale:"

    invoke-static {v7, v0, v8, p1, v9}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SwipeUpSpringAnim"

    invoke-static {v7, v4, v8}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    if-eqz p1, :cond_138

    if-eq p1, v2, :cond_e1

    if-eq p1, v5, :cond_48

    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    const/high16 p0, 0x43480000  # 200.0f

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto/16 :goto_150

    :cond_48
    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result p1

    if-eqz p1, :cond_a8

    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result p1

    if-nez p1, :cond_6e

    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_0:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto/16 :goto_150

    :cond_6e
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result p1

    if-ne p1, v2, :cond_8e

    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_1:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto/16 :goto_150

    :cond_8e
    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_2:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto/16 :goto_150

    :cond_a8
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getScaleParamsNumber()I

    move-result p1

    if-nez p1, :cond_c8

    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_0:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto/16 :goto_150

    :cond_c8
    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_1:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto :goto_150

    :cond_e1
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result p1

    if-nez p1, :cond_100

    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_0:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto :goto_150

    :cond_100
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result p1

    if-ne p1, v2, :cond_11f

    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_1:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto :goto_150

    :cond_11f
    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_2:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    goto :goto_150

    :cond_138
    new-instance p1, Lcom/oplus/animation/SpringForce;

    invoke-direct {p1, p0}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    sget-object p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_X:[[F

    aget-object v3, p0, v0

    aget v1, v3, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object p1

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    :goto_150
    return-object p0
.end method


# virtual methods
.method public end()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/oplus/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/oplus/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->skipToEnd()V

    :cond_d
    return-void
.end method

.method public getTargetPosition()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    return p0
.end method

.method public start()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/oplus/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->start()V

    return-void
.end method

.method public updatePosition(FF)V
    .registers 3

    iput p2, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/oplus/animation/SpringAnimation;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Lcom/oplus/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_9
    return-void
.end method
