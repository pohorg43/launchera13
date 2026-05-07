.class public Lcom/oplus/painteranimation/OplusSpringAnimation;
.super Landroid/animation/ValueAnimator;
.source ""

# interfaces
.implements Lcom/oplus/painteranimation/VeriableModeInterface;


# instance fields
.field private mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalPosition:F

.field private mInitialized:Z

.field private mMaxValue:F

.field private mMinValue:F

.field private mMinVisibleChange:F

.field private mNeedPaintAnim:Z

.field private mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private mPropertyName:Ljava/lang/String;

.field private mSceneName:Ljava/lang/String;

.field private mStartValue:F

.field private mStartVelocity:F

.field private mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p1}, Lcom/oplus/painteranimation/OplusSpringAnimation;->initProperty(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V
    .registers 4

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p1}, Lcom/oplus/painteranimation/OplusSpringAnimation;->initProperty(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput p2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mFinalPosition:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

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

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p1, p2}, Lcom/oplus/painteranimation/OplusSpringAnimation;->initPropertyWithTarget(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p1, p2}, Lcom/oplus/painteranimation/OplusSpringAnimation;->initPropertyWithTarget(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput p3, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mFinalPosition:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    return-void
.end method

.method private cloneOplusSpringWithoutProperty(Lcom/oplus/painteranimation/OplusSpringAnimation;)V
    .registers 4

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getMinimumVisibleChange()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setMinimumVisibleChange(F)Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setMinValue(F)Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setMaxValue(F)Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setStartVelocity(F)Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setStartValue(F)Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v1}, Lcom/oplus/painteranimation/OplusSpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/painteranimation/OplusSpringAnimation;

    goto :goto_52

    :cond_62
    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/oplus/painteranimation/OplusSpringAnimation;

    goto :goto_68

    :cond_78
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setInitialized(Z)V

    return-void
.end method

.method private cloneSpringWithoutProperty(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .registers 4

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getMinimumVisibleChange()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_52

    :cond_62
    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_68

    :cond_78
    return-void
.end method

.method private getInternalAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method private initProperty(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mTarget:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/painteranimation/OplusSpringAnimation$1;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lcom/oplus/painteranimation/OplusSpringAnimation$1;-><init>(Lcom/oplus/painteranimation/OplusSpringAnimation;Ljava/lang/String;Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private initPropertyWithTarget(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_2b

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_2b

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_11

    goto :goto_2b

    :cond_11
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v0, 0x3b800000  # 0.00390625f

    if-ne p2, p1, :cond_1a

    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinVisibleChange:F

    return-void

    :cond_1a
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_28

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_23

    goto :goto_28

    :cond_23
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_25
    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinVisibleChange:F

    return-void

    :cond_28
    :goto_28
    iput v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinVisibleChange:F

    return-void

    :cond_2b
    :goto_2b
    const p1, 0x3dcccccd  # 0.1f

    goto :goto_25
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private tryPaintAnimation()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->getInternalAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/oplus/painteranimation/SimulationInteractor;->tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    :cond_16
    return-void
.end method


# virtual methods
.method public addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public animateToFinalPosition(F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public canSkipToEnd()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    return p0
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->clone()Lcom/oplus/painteranimation/OplusSpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->clone()Lcom/oplus/painteranimation/OplusSpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 4

    new-instance v0, Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mTarget:Ljava/lang/Object;

    iget-object v2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, v1, v2}, Lcom/oplus/painteranimation/OplusSpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->cloneOplusSpringWithoutProperty(Lcom/oplus/painteranimation/OplusSpringAnimation;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->clone()Lcom/oplus/painteranimation/OplusSpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public cloneWithPaintingName()Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 4

    new-instance v0, Lcom/oplus/painteranimation/OplusSpringAnimation;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mTarget:Ljava/lang/Object;

    iget-object v2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, v1, v2}, Lcom/oplus/painteranimation/OplusSpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->cloneOplusSpringWithoutProperty(Lcom/oplus/painteranimation/OplusSpringAnimation;)V

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMinimumVisibleChange()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getMinimumVisibleChange()F

    move-result p0

    return p0
.end method

.method public getPaintingPropertyName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public getPaintingSceneName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    return-object p0
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    return-object p0
.end method

.method public isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method public removeAllListeners()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget-object v2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget-object v2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    goto :goto_1e

    :cond_30
    return-void
.end method

.method public removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/oplus/painteranimation/OplusSpringAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method

.method public removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/oplus/painteranimation/OplusSpringAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    return-void
.end method

.method public restart()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mFinalPosition:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public setFloatValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 3

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-direct {p0, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->cloneSpringWithoutProperty(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->removeAllListeners()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    return-void
.end method

.method public setInitialized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    return-void
.end method

.method public setMaxValue(F)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMaxValue:F

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public setMinValue(F)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinValue:F

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mMinVisibleChange:F

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public setPaintingPropertyName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public setPaintingSceneName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    return-void
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p1

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mFinalPosition:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->tryPaintAnimation()V

    return-object p0
.end method

.method public setStartValue(F)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartValue:F

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/oplus/painteranimation/OplusSpringAnimation;
    .registers 3

    iput p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mStartVelocity:F

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public setTargetAndProperty(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 4

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->cloneSpringWithoutProperty(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->removeAllListeners()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mInitialized:Z

    return-void
.end method

.method public setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mSceneName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mPropertyName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mNeedPaintAnim:Z

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusSpringAnimation;->tryPaintAnimation()V

    return-void
.end method

.method public skipToEnd()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method public start()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusSpringAnimation;->mAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
