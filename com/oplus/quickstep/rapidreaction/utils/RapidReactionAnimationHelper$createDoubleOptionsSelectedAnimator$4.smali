.class public final Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createDoubleOptionsSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

.field public final synthetic $leftBgEndColor:I

.field public final synthetic $leftStrokeEndColor:I

.field public final synthetic $rightBgEndColor:I

.field public final synthetic $rightStrokeEndColor:I

.field public final synthetic $selectBgAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $unselectBgAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/util/FloatProperty;Landroid/util/FloatProperty;IIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            "[",
            "Landroid/view/View;",
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            ">;",
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;",
            ">;IIII)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$selectBgAlphaProperty:Landroid/util/FloatProperty;

    iput-object p4, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$unselectBgAlphaProperty:Landroid/util/FloatProperty;

    iput p5, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$leftBgEndColor:I

    iput p6, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$rightBgEndColor:I

    iput p7, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$leftStrokeEndColor:I

    iput p8, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$rightStrokeEndColor:I

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$setSelectOrUnselectAnimator$p(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string p0, "backgroundView.context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 5

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$isLastLeftSelect$p()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, 0x3f000000  # 0.5f

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getLeftHintPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getLeftHintSelectPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getRightHintPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getRightHintSelectPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_63

    :cond_37
    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getLeftHintPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getLeftHintSelectPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getRightHintPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$views:[Landroid/view/View;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->access$getRightHintSelectPanelIndex$p()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_63
    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$selectBgAlphaProperty:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$unselectBgAlphaProperty:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_COLOR:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$leftBgEndColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_COLOR:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$rightBgEndColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_BASIC_LEFT_STROKE_COLOR:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$leftStrokeEndColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->BG_RIGHT_STROKE_COLOR:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$backgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createDoubleOptionsSelectedAnimator$4;->$rightStrokeEndColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method
