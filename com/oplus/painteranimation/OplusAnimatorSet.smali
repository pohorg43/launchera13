.class public Lcom/oplus/painteranimation/OplusAnimatorSet;
.super Landroid/animation/Animator;
.source ""

# interfaces
.implements Lcom/oplus/painteranimation/VeriableModeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;
    }
.end annotation


# instance fields
.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mPropertyName:Ljava/lang/String;

.field private mSceneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/animation/AnimatorSet;)V
    .registers 3

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/painteranimation/OplusAnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->clone()Lcom/oplus/painteranimation/OplusAnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/oplus/painteranimation/OplusAnimatorSet;
    .registers 2

    new-instance v0, Lcom/oplus/painteranimation/OplusAnimatorSet;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusAnimatorSet;-><init>(Landroid/animation/AnimatorSet;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->clone()Lcom/oplus/painteranimation/OplusAnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public cloneWithPaintingName()Lcom/oplus/painteranimation/OplusAnimatorSet;
    .registers 3

    new-instance v0, Lcom/oplus/painteranimation/OplusAnimatorSet;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/painteranimation/OplusAnimatorSet;-><init>(Landroid/animation/AnimatorSet;)V

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    iput-object p0, v0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public end()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPlayTime()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalAnimSet()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getListeners()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPaintingPropertyName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public getPaintingSceneName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDelay()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPaused()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    return-void
.end method

.method public play(Landroid/animation/Animator;)Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;

    invoke-direct {v0, p0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;-><init>(Lcom/oplus/painteranimation/OplusAnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public playSequentially(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void
.end method

.method public playTogether(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public removeAllListeners()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public resume()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    return-void
.end method

.method public reverse()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->reverse()V

    return-void
.end method

.method public setAnimSet(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/painteranimation/OplusAnimatorSet;->setDuration(J)Lcom/oplus/painteranimation/OplusAnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)Lcom/oplus/painteranimation/OplusAnimatorSet;
    .registers 4

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setPaintingPropertyName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public setPaintingSceneName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    return-void
.end method

.method public setStartDelay(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p2, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {p1, p2, p0}, Lcom/oplus/painteranimation/SimulationInteractor;->tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroid/animation/AnimatorSet;)Z

    return-void
.end method

.method public setupEndValues()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    return-void
.end method

.method public setupStartValues()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->setupStartValues()V

    return-void
.end method

.method public start()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimatorSet@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mSceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; property ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mPropertyName:Ljava/lang/String;

    const-string v2, "{"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusAnimatorSet;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
