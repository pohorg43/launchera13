.class public final Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;,
        Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;

.field private static final TAG:Ljava/lang/String; = "RapidReactionAnimationHelper"

.field private static currentRotation:I

.field private static isLastLeftSelect:Z

.field private static isRtl:Z

.field private static leftHintPanelIndex:I

.field private static leftHintSelectPanelIndex:I

.field private static rightHintPanelIndex:I

.field private static rightHintSelectPanelIndex:I

.field private static selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

.field private static translationProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sput-object v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sput v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    const/4 v0, 0x2

    sput v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    const/4 v0, 0x3

    sput v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Float;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsSelectedAnimator$lambda-7(Ljava/lang/Float;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getLeftHintPanelIndex$p()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    return v0
.end method

.method public static final synthetic access$getLeftHintSelectPanelIndex$p()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    return v0
.end method

.method public static final synthetic access$getRightHintPanelIndex$p()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    return v0
.end method

.method public static final synthetic access$getRightHintSelectPanelIndex$p()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    return v0
.end method

.method public static final synthetic access$isLastLeftSelect$p()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    return v0
.end method

.method public static final synthetic access$setSelectOrUnselectAnimator$p(Landroid/animation/AnimatorSet;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSingleOptionsSelectedAnimator$lambda-6(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsUnselectedAnimator$lambda-13([Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final calculateHintPanelIndex()V
    .registers 5

    sget-boolean p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isRtl:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez p0, :cond_11

    sput v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    sput v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    sput v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    sput v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    goto :goto_19

    :cond_11
    sput v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    sput v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    sput v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    sput v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    :goto_19
    return-void
.end method

.method private final cancelSelectOrUnselectAnimation()V
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_8
    return-void
.end method

.method private final varargs createDoubleOptionsSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 26

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_SELECTED_PROGRESS:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setSingleOptions(Z)V

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setLeftAreaSelect(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBasicBgWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setBasicStartFraction(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getRightBgWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setRightStartFraction(F)V

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBackgroundSelectedWidth()F

    move-result v0

    goto :goto_2f

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBackgroundUnselectedWidth()F

    move-result v0

    :goto_2f
    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setBasicEndFraction(F)V

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-nez v0, :cond_3b

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBackgroundSelectedWidth()F

    move-result v0

    goto :goto_3f

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBackgroundUnselectedWidth()F

    move-result v0

    :goto_3f
    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setRightEndFraction(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getSelectDisplacementDistance()F

    move-result v0

    sget-boolean v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v1, :cond_4f

    sget v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v1, v7, v1

    goto :goto_53

    :cond_4f
    sget v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v1, v7, v1

    :goto_53
    sget-object v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    invoke-virtual {v2, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    sget-boolean v4, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    const/4 v10, 0x2

    if-eqz v4, :cond_66

    goto :goto_67

    :cond_66
    neg-float v0, v0

    :goto_67
    int-to-float v4, v10

    div-float/2addr v0, v4

    iput v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget v4, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->currentRotation:I

    const/4 v11, 0x3

    if-eq v4, v11, :cond_72

    if-ne v4, v10, :cond_73

    :cond_72
    neg-float v0, v0

    :cond_73
    iput v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-array v0, v10, [F

    fill-array-data v0, :array_234

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    const-wide/16 v13, 0x17f

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v15, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/launcher3/graphics/d;

    move-object v0, v5

    move-object/from16 v4, p1

    move-object v11, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/d;-><init>(Ljava/lang/Float;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a7

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-nez v0, :cond_a5

    move v0, v1

    goto :goto_a9

    :cond_a5
    move v0, v8

    goto :goto_a9

    :cond_a7
    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    :goto_a9
    if-eqz v0, :cond_ae

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    goto :goto_b0

    :cond_ae
    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    :goto_b0
    array-length v2, v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v8, v2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createHintToggleAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    sget-boolean v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v2, :cond_c8

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v3, v7, v3

    goto :goto_ce

    :cond_c8
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v3, v7, v3

    :goto_ce
    invoke-virtual {v2, v3}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    new-array v3, v10, [F

    const-string v4, "selectStartAlpha"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v8

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/oplus/quickstep/rapidreaction/utils/e;

    invoke-direct {v4, v7, v8}, Lcom/oplus/quickstep/rapidreaction/utils/e;-><init>([Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v4, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v4, :cond_106

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v5, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v5, v7, v5

    goto :goto_10c

    :cond_106
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v5, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v5, v7, v5

    :goto_10c
    invoke-virtual {v4, v5}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    new-array v5, v10, [F

    const-string v11, "unselectStartAlpha"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v5, v8

    const/high16 v4, 0x3f000000  # 0.5f

    aput v4, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v11, Lcom/oplus/quickstep/rapidreaction/utils/e;

    invoke-direct {v11, v7, v1}, Lcom/oplus/quickstep/rapidreaction/utils/e;-><init>([Landroid/view/View;I)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v11, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    const v16, 0x66ffffff

    const v17, 0x33ffffff

    if-eqz v11, :cond_146

    move/from16 v18, v16

    goto :goto_148

    :cond_146
    move/from16 v18, v17

    :goto_148
    if-nez v11, :cond_14b

    goto :goto_14d

    :cond_14b
    move/from16 v16, v17

    :goto_14d
    sget-object v11, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_COLOR:Landroid/util/IntProperty;

    new-array v10, v1, [I

    aput v18, v10, v8

    invoke-static {v6, v11, v10}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v11, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_COLOR:Landroid/util/IntProperty;

    new-array v4, v1, [I

    aput v16, v4, v8

    invoke-static {v6, v11, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v11, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    const/16 v19, -0x1

    if-eqz v11, :cond_17e

    move/from16 v20, v19

    goto :goto_180

    :cond_17e
    move/from16 v20, v17

    :goto_180
    if-nez v11, :cond_184

    move/from16 v17, v19

    :cond_184
    sget-object v11, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_STROKE_COLOR:Landroid/util/IntProperty;

    new-array v2, v1, [I

    aput v20, v2, v8

    invoke-static {v6, v11, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v11, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_STROKE_COLOR:Landroid/util/IntProperty;

    new-array v13, v1, [I

    aput v17, v13, v8

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v13, 0x17f

    invoke-virtual {v11, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v13, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v13, :cond_1b5

    sget-object v13, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_ALPHA:Landroid/util/FloatProperty;

    goto :goto_1b7

    :cond_1b5
    sget-object v13, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_ALPHA:Landroid/util/FloatProperty;

    :goto_1b7
    new-array v14, v1, [F

    const/high16 v19, 0x3f800000  # 1.0f

    aput v19, v14, v8

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object/from16 v19, v9

    const-wide/16 v8, 0x17f

    invoke-virtual {v14, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v8, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v8, :cond_1d6

    sget-object v8, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_ALPHA:Landroid/util/FloatProperty;

    goto :goto_1d8

    :cond_1d6
    sget-object v8, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_ALPHA:Landroid/util/FloatProperty;

    :goto_1d8
    new-array v9, v1, [F

    const/high16 v21, 0x3f000000  # 0.5f

    const/16 v22, 0x0

    aput v21, v9, v22

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 p0, v2

    const-wide/16 v1, 0x17f

    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v12, v1, v22

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v10, v1, v0

    const/4 v0, 0x5

    aput-object v4, v1, v0

    const/4 v0, 0x6

    aput-object p0, v1, v0

    const/4 v0, 0x7

    aput-object v11, v1, v0

    const/16 v0, 0x8

    aput-object v14, v1, v0

    const/16 v0, 0x9

    aput-object v9, v1, v0

    move-object/from16 v9, v19

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v10, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object v4, v8

    move/from16 v5, v18

    move/from16 v6, v16

    move/from16 v7, v20

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/util/FloatProperty;Landroid/util/FloatProperty;IIII)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sput-object v9, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

    return-object v9

    :array_234
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createDoubleOptionsSelectedAnimator$lambda-7(Ljava/lang/Float;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "$translationEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bgSelectedProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backgroundView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$views"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const-string v0, "translationStart"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p5, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static final createDoubleOptionsSelectedAnimator$lambda-8([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$views"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v0, :cond_27

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_35

    :cond_27
    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_35
    return-void
.end method

.method private static final createDoubleOptionsSelectedAnimator$lambda-9([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$views"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v0, :cond_27

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_35

    :cond_27
    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_35
    return-void
.end method

.method private final varargs createDoubleOptionsUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 22

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_SELECTED_PROGRESS:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setLeftAreaSelect(Z)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setSingleOptions(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getBasicBgWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setBasicStartFraction(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getRightBgWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setRightStartFraction(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getDoubleBackgroundBaseWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setBasicEndFraction(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->getDoubleBackgroundBaseWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setRightEndFraction(F)V

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v0, :cond_39

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v0, v7, v0

    goto :goto_3d

    :cond_39
    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v0, v7, v0

    :goto_3d
    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    invoke-virtual {v1, v0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x0

    const/4 v10, 0x2

    new-array v0, v10, [F

    fill-array-data v0, :array_1d8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x17f

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v14, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/oplus/quickstep/rapidreaction/utils/f;

    move-object v0, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/rapidreaction/utils/f;-><init>(Ljava/lang/Float;FLcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)V

    invoke-virtual {v11, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_79

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-nez v0, :cond_77

    move v0, v1

    goto :goto_7b

    :cond_77
    move v0, v9

    goto :goto_7b

    :cond_79
    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    :goto_7b
    if-eqz v0, :cond_80

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    goto :goto_82

    :cond_80
    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    :goto_82
    array-length v2, v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createHintToggleAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    sget-boolean v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v2, :cond_9a

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v3, v7, v3

    goto :goto_a0

    :cond_9a
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v3, v7, v3

    :goto_a0
    invoke-virtual {v2, v3}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    new-array v3, v10, [F

    const-string v4, "selectStartAlpha"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v9

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/oplus/quickstep/rapidreaction/utils/e;

    invoke-direct {v4, v7, v10}, Lcom/oplus/quickstep/rapidreaction/utils/e;-><init>([Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v4, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v4, :cond_d8

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v5, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v5, v7, v5

    goto :goto_de

    :cond_d8
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget v5, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v5, v7, v5

    :goto_de
    invoke-virtual {v4, v5}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    new-array v5, v10, [F

    const-string v15, "unselectStartAlpha"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v5, v9

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/oplus/quickstep/rapidreaction/utils/e;

    const/4 v15, 0x3

    invoke-direct {v5, v7, v15}, Lcom/oplus/quickstep/rapidreaction/utils/e;-><init>([Landroid/view/View;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_COLOR:Landroid/util/IntProperty;

    new-array v15, v1, [I

    const v16, 0x33ffffff

    aput v16, v15, v9

    invoke-static {v6, v5, v15}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v15, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_COLOR:Landroid/util/IntProperty;

    new-array v10, v1, [I

    aput v16, v10, v9

    invoke-static {v6, v15, v10}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v15, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_STROKE_COLOR:Landroid/util/IntProperty;

    new-array v2, v1, [I

    aput v16, v2, v9

    invoke-static {v6, v15, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v15, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_STROKE_COLOR:Landroid/util/IntProperty;

    new-array v12, v1, [I

    aput v16, v12, v9

    invoke-static {v6, v15, v12}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object v15, v10

    const-wide/16 v9, 0x17f

    invoke-virtual {v12, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v9, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v9, :cond_167

    sget-object v9, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_ALPHA:Landroid/util/FloatProperty;

    goto :goto_169

    :cond_167
    sget-object v9, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_ALPHA:Landroid/util/FloatProperty;

    :goto_169
    new-array v10, v1, [F

    const/high16 v13, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    aput v13, v10, v16

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v18, v2

    const-wide/16 v1, 0x17f

    invoke-virtual {v10, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v1, :cond_18a

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_ALPHA:Landroid/util/FloatProperty;

    goto :goto_18c

    :cond_18a
    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_ALPHA:Landroid/util/FloatProperty;

    :goto_18c
    const/4 v2, 0x1

    new-array v13, v2, [F

    const/high16 v16, 0x3f800000  # 1.0f

    const/16 v17, 0x0

    aput v16, v13, v17

    invoke-static {v6, v1, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v16, v3

    const-wide/16 v2, 0x17f

    invoke-virtual {v13, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v2, 0xa

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v11, v2, v17

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v16, v2, v0

    const/4 v0, 0x3

    aput-object v4, v2, v0

    const/4 v0, 0x4

    aput-object v5, v2, v0

    const/4 v0, 0x5

    aput-object v15, v2, v0

    const/4 v0, 0x6

    aput-object v18, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v13, v2, v0

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsUnselectedAnimator$4;

    invoke-direct {v0, v6, v7, v9, v1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsUnselectedAnimator$4;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sput-object v8, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

    return-object v8

    :array_1d8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createDoubleOptionsUnselectedAnimator$lambda-11(Ljava/lang/Float;FLcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "$bgSelectedProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backgroundView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$views"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const-string v0, "translationStart"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p5, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    sget p2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    aget-object p2, p4, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static final createDoubleOptionsUnselectedAnimator$lambda-12([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$views"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v0, :cond_27

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_35

    :cond_27
    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_35
    return-void
.end method

.method private static final createDoubleOptionsUnselectedAnimator$lambda-13([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$views"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-boolean v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    if-eqz v0, :cond_27

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->rightHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_35

    :cond_27
    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintPanelIndex:I

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    sget v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->leftHintSelectPanelIndex:I

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_35
    return-void
.end method

.method public static final varargs createEnterAnimator(Landroid/view/View;[Landroid/view/View;)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "panel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RapidReaction"

    const-string v1, "RapidReactionAnimationHelper"

    const-string v2, "createEnterAnimator()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/w0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/w0;-><init>(Landroid/view/View;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "animator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_2c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createEnterAnimator$lambda-1(Landroid/view/View;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "$panel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    const v2, 0x3f59999a  # 0.85f

    invoke-static {p2, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    array-length p0, p1

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p0, :cond_37

    aget-object v1, p1, v0

    sget-object v2, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->VIEW_SCALE:Landroid/util/FloatProperty;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_37
    return-void
.end method

.method private final varargs createHintToggleAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 22

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eq v0, v6, :cond_24

    if-ne v0, v4, :cond_1e

    aget-object v0, p3, v5

    aget-object v1, p3, v1

    aget-object v3, p3, v3

    aget-object v2, p3, v2

    move-object v9, v0

    move-object v10, v1

    move-object v12, v2

    goto :goto_2f

    :cond_1e
    new-instance v0, Ly2/h;

    invoke-direct {v0}, Ly2/h;-><init>()V

    throw v0

    :cond_24
    aget-object v0, p3, v3

    aget-object v2, p3, v2

    aget-object v3, p3, v5

    aget-object v1, p3, v1

    move-object v9, v0

    move-object v12, v1

    move-object v10, v2

    :goto_2f
    move-object v11, v3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "ofFloat(otherSelectedHin…, View.ALPHA/*, 0f*/, 0f)"

    const-string v2, "ofFloat(otherNormalHintT…, View.ALPHA/*, 1f*/, 1f)"

    const-wide/16 v7, 0x85

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    const/high16 v15, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    if-nez p2, :cond_b9

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v6, [F

    aput v3, v14, v16

    invoke-static {v9, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-string v14, "ofFloat(normalHintTitle, View.ALPHA/*, 1f*/, 0f)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v14, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    aput v15, v8, v16

    invoke-static {v10, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-string v8, "ofFloat(selectedHintTitle, View.ALPHA/*, 0f*/, 1f)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x75

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_018_028_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    aput v15, v8, v16

    invoke-static {v11, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v7

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v6, 0x0

    aput v6, v4, v16

    invoke-static {v12, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x85

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_018_028_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v7, v17

    goto :goto_130

    :cond_b9
    move v3, v6

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    aput v15, v5, v16

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-string v4, "ofFloat(normalHintTitle, View.ALPHA/*, 1f*/, 1f)"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v13, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x75

    invoke-virtual {v13, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v4, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v4}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    const/4 v7, 0x0

    aput v7, v6, v16

    invoke-static {v10, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-string v5, "ofFloat(selectedHintTitle, View.ALPHA/*, 0f*/, 0f)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x85

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_018_028_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v15, v6, v16

    invoke-static {v11, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x12c

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x75

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v4}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    const/4 v8, 0x0

    aput v8, v6, v16

    invoke-static {v12, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x85

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_018_028_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_130
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v13, v1, v16

    aput-object v7, v1, v3

    const/4 v3, 0x2

    aput-object v5, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;

    move-object v7, v1

    move/from16 v8, p2

    invoke-direct/range {v7 .. v12}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;-><init>(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final varargs createSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;ZILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Ljava/util/function/Consumer;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            "ZI",
            "Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backgroundView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleOptionsType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "views"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;

    sput-boolean p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isLastLeftSelect:Z

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->calculateHintPanelIndex()V

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->cancelSelectOrUnselectAnimation()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3c

    const/4 p1, 0x2

    if-eq p2, p1, :cond_30

    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {v0, p0, p3, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSingleOptionsSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_47

    :cond_30
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_47

    :cond_3c
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {v0, p0, p3, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSingleOptionsSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    :goto_47
    new-instance p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createSelectedAnimator$$inlined$doOnStart$1;

    invoke-direct {p1, p4}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createSelectedAnimator$$inlined$doOnStart$1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method private final varargs createSingleOptionsSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 15

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_SELECTED_PROGRESS:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setSingleOptions(Z)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_7c

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x17f

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/oplus/quickstep/rapidreaction/utils/d;

    invoke-direct {v7, v0, p1, v1}, Lcom/oplus/quickstep/rapidreaction/utils/d;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    array-length v7, p3

    invoke-static {p3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct {p0, p2, v7, p3}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createHintToggleAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    sget-object p2, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_COLOR:Landroid/util/IntProperty;

    new-array p3, v1, [I

    const v8, 0x66ffffff

    aput v8, p3, v7

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p3, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_STROKE_COLOR:Landroid/util/IntProperty;

    new-array v9, v1, [I

    const/4 v10, -0x1

    aput v10, v9, v7

    invoke-static {p1, v8, v9}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object p3

    invoke-virtual {v8, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p3, 0x4

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object v4, p3, v7

    aput-object p0, p3, v1

    aput-object p2, p3, v3

    const/4 p0, 0x3

    aput-object v8, p3, p0

    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createSingleOptionsSelectedAnimator$2;

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createSingleOptionsSelectedAnimator$2;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;)V

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sput-object v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    nop

    :array_7c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createSingleOptionsSelectedAnimator$lambda-6(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$bgSelectedProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backgroundView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method private final varargs createSingleOptionsUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 15

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_SELECTED_PROGRESS:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;->setSingleOptions(Z)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_7a

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x17f

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/oplus/quickstep/rapidreaction/utils/d;

    const/4 v8, 0x0

    invoke-direct {v7, v0, p1, v8}, Lcom/oplus/quickstep/rapidreaction/utils/d;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    array-length v7, p3

    invoke-static {p3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/view/View;

    invoke-direct {p0, p2, v1, p3}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createHintToggleAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    sget-object p2, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_COLOR:Landroid/util/IntProperty;

    new-array p3, v1, [I

    const v7, 0x33ffffff

    aput v7, p3, v8

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p3, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v9, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_STROKE_COLOR:Landroid/util/IntProperty;

    new-array v10, v1, [I

    aput v7, v10, v8

    invoke-static {p1, v9, v10}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p3, 0x4

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object v4, p3, v8

    aput-object p0, p3, v1

    aput-object p2, p3, v3

    const/4 p0, 0x3

    aput-object v7, p3, p0

    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createSingleOptionsUnselectedAnimator$2;

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createSingleOptionsUnselectedAnimator$2;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;)V

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sput-object v2, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->selectOrUnselectAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :array_7a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final createSingleOptionsUnselectedAnimator$lambda-10(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$bgSelectedProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backgroundView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public static final varargs createUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Ljava/util/function/Consumer;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            "I",
            "Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backgroundView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleOptionsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "views"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->calculateHintPanelIndex()V

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->cancelSelectOrUnselectAnimation()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2e

    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {v0, p0, p2, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSingleOptionsUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_45

    :cond_2e
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_45

    :cond_3a
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {v0, p0, p2, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSingleOptionsUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    :goto_45
    new-instance p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createUnselectedAnimator$$inlined$doOnStart$1;

    invoke-direct {p1, p3}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createUnselectedAnimator$$inlined$doOnStart$1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Float;FLcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsUnselectedAnimator$lambda-11(Ljava/lang/Float;FLcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsSelectedAnimator$lambda-8([Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSingleOptionsUnselectedAnimator$lambda-10(Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createEnterAnimator$lambda-1(Landroid/view/View;[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsSelectedAnimator$lambda-9([Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsUnselectedAnimator$lambda-12([Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final onLayoutDirectionChanged(Z)V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sput-boolean p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->isRtl:Z

    return-void
.end method

.method public static final onRotationChanged(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sput p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->currentRotation:I

    if-eqz p0, :cond_b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    goto :goto_b

    :cond_8
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_d

    :cond_b
    :goto_b
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_d
    sput-object p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->translationProperty:Landroid/util/Property;

    return-void
.end method

.method public static final runSnapshotViewToExternalScreenAnimation(Landroid/view/View;[FLjava/util/function/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[F",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "snapshotView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runSnapshotViewToExternalScreenAnimation: endTarget="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidReaction"

    const-string v2, "RapidReactionAnimationHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aget v5, p1, v4

    aput v5, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x17f

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v2, [F

    aget v9, p1, v2

    aput v9, v8, v4

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->VIEW_SCALE:Landroid/util/FloatProperty;

    new-array v9, v2, [F

    const/4 v10, 0x2

    aget p1, p1, v10

    aput p1, v9, v4

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v7, v3, v2

    aput-object p1, v3, v10

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;

    invoke-direct {p1, p0, p2, p0, p2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;-><init>(Landroid/view/View;Ljava/util/function/Consumer;Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
