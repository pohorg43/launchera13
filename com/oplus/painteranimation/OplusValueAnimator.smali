.class public Lcom/oplus/painteranimation/OplusValueAnimator;
.super Landroid/animation/ValueAnimator;
.source ""

# interfaces
.implements Lcom/oplus/painteranimation/VeriableModeInterface;


# instance fields
.field private mInitialized:Z

.field private mNeedPaintAnim:Z

.field private mPropertyName:Ljava/lang/String;

.field private mSceneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mNeedPaintAnim:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mInitialized:Z

    return-void
.end method

.method public static varargs ofArgb([I)Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 2

    new-instance v0, Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance p0, Landroid/animation/ArgbEvaluator;

    invoke-direct {p0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofFloat([F)Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 2

    new-instance v0, Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 2

    new-instance v0, Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 3

    new-instance v0, Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 2

    new-instance v0, Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method private tryPaintAnimator()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mNeedPaintAnim:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mNeedPaintAnim:Z

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/painteranimation/SimulationInteractor;->tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroid/animation/ValueAnimator;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusValueAnimator;->clone()Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusValueAnimator;->clone()Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 1

    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Lcom/oplus/painteranimation/OplusValueAnimator;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusValueAnimator;->clone()Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public cloneWithPaintingName()Lcom/oplus/painteranimation/OplusValueAnimator;
    .registers 3

    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/oplus/painteranimation/OplusValueAnimator;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/painteranimation/OplusValueAnimator;->setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPaintingPropertyName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public getPaintingSceneName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mInitialized:Z

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusValueAnimator;->tryPaintAnimator()V

    return-void
.end method

.method public setPaintingPropertyName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public setPaintingSceneName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    return-void
.end method

.method public setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mNeedPaintAnim:Z

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusValueAnimator;->tryPaintAnimator()V

    return-void
.end method

.method public start()V
    .registers 1

    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OplusValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internal anim :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/animation/ValueAnimator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mSceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusValueAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
