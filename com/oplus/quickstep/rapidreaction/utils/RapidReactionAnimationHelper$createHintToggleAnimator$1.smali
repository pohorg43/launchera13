.class public final Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createHintToggleAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z[Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $normalHintTitle:Landroid/view/View;

.field public final synthetic $otherNormalHintTitle:Landroid/view/View;

.field public final synthetic $otherSelectedHintTitle:Landroid/view/View;

.field public final synthetic $reverse:Z

.field public final synthetic $selectedHintTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$reverse:Z

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$normalHintTitle:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$selectedHintTitle:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$otherNormalHintTitle:Landroid/view/View;

    iput-object p5, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$otherSelectedHintTitle:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 5

    iget-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$reverse:Z

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-eqz p1, :cond_2c

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$normalHintTitle:Landroid/view/View;

    invoke-virtual {p1, v2, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$selectedHintTitle:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$otherNormalHintTitle:Landroid/view/View;

    invoke-virtual {p1, v2, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$otherSelectedHintTitle:Landroid/view/View;

    invoke-virtual {p1, p0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_48

    :cond_2c
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$normalHintTitle:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$selectedHintTitle:Landroid/view/View;

    invoke-virtual {p1, v2, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$otherNormalHintTitle:Landroid/view/View;

    invoke-virtual {p1, v2, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$createHintToggleAnimator$1;->$otherSelectedHintTitle:Landroid/view/View;

    invoke-virtual {p1, p0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_48
    return-void
.end method
