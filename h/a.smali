.class public abstract Lh/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/a$e;,
        Lh/a$f;,
        Lh/a$c;,
        Lh/a$d;,
        Lh/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Lh/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a$d<",
            "TK;>;"
        }
    .end annotation
.end field

.field public d:F

.field public e:Lr/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr/c<",
            "TA;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr/a<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lh/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lh/a;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lh/a;->f:Ljava/lang/Object;

    const/high16 v2, -0x40800000  # -1.0f

    iput v2, p0, Lh/a;->g:F

    iput v2, p0, Lh/a;->h:F

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance p1, Lh/a$c;

    invoke-direct {p1, v0}, Lh/a$c;-><init>(Lh/a$a;)V

    goto :goto_38

    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_32

    new-instance v0, Lh/a$f;

    invoke-direct {v0, p1}, Lh/a$f;-><init>(Ljava/util/List;)V

    goto :goto_37

    :cond_32
    new-instance v0, Lh/a$e;

    invoke-direct {v0, p1}, Lh/a$e;-><init>(Ljava/util/List;)V

    :goto_37
    move-object p1, v0

    :goto_38
    iput-object p1, p0, Lh/a;->c:Lh/a$d;

    return-void
.end method


# virtual methods
.method public a()Lr/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr/a<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {p0}, Lh/a$d;->getCurrentKeyframe()Lr/a;

    move-result-object p0

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-object p0
.end method

.method public b()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lh/a;->h:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    iget-object v0, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {v0}, Lh/a$d;->getEndProgress()F

    move-result v0

    iput v0, p0, Lh/a;->h:F

    :cond_10
    iget p0, p0, Lh/a;->h:F

    return p0
.end method

.method public c()F
    .registers 3

    invoke-virtual {p0}, Lh/a;->a()Lr/a;

    move-result-object v0

    invoke-virtual {v0}, Lr/a;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    iget-object v0, v0, Lr/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lh/a;->d()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public d()F
    .registers 4

    iget-boolean v0, p0, Lh/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lh/a;->a()Lr/a;

    move-result-object v0

    invoke-virtual {v0}, Lr/a;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    iget p0, p0, Lh/a;->d:F

    invoke-virtual {v0}, Lr/a;->c()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Lr/a;->b()F

    move-result v1

    invoke-virtual {v0}, Lr/a;->c()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public e()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lh/a;->c()F

    move-result v0

    iget-object v1, p0, Lh/a;->e:Lr/c;

    if-nez v1, :cond_13

    iget-object v1, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {v1, v0}, Lh/a$d;->isCachedValueEnabled(F)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p0, p0, Lh/a;->f:Ljava/lang/Object;

    return-object p0

    :cond_13
    invoke-virtual {p0}, Lh/a;->a()Lr/a;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lh/a;->f(Lr/a;F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lh/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract f(Lr/a;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr/a<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public g()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/a$b;

    invoke-interface {v1}, Lh/a$b;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public h(F)V
    .registers 5
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {v0}, Lh/a$d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lh/a;->g:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    iget-object v0, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {v0}, Lh/a$d;->getStartDelayProgress()F

    move-result v0

    iput v0, p0, Lh/a;->g:F

    :cond_19
    iget v0, p0, Lh/a;->g:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2e

    cmpl-float p1, v0, v1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {p1}, Lh/a$d;->getStartDelayProgress()F

    move-result p1

    iput p1, p0, Lh/a;->g:F

    :cond_2b
    iget p1, p0, Lh/a;->g:F

    goto :goto_3a

    :cond_2e
    invoke-virtual {p0}, Lh/a;->b()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3a

    invoke-virtual {p0}, Lh/a;->b()F

    move-result p1

    :cond_3a
    :goto_3a
    iget v0, p0, Lh/a;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_41

    return-void

    :cond_41
    iput p1, p0, Lh/a;->d:F

    iget-object v0, p0, Lh/a;->c:Lh/a$d;

    invoke-interface {v0, p1}, Lh/a$d;->isValueChanged(F)Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Lh/a;->g()V

    :cond_4e
    return-void
.end method
