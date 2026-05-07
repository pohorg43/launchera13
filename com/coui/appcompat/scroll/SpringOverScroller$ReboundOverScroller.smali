.class Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReboundOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;,
        Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;
    }
.end annotation


# instance fields
.field public A:Z

.field public a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field public b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field public c:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field public d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field public e:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field public f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field public g:F

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:I

.field public m:I

.field public n:I

.field public o:J

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:F

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const v0, 0x3ea3d70a  # 0.32f

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->g:F

    const-wide/high16 v1, 0x4034000000000000L  # 20.0

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->h:D

    const-wide v1, 0x3fa999999999999aL  # 0.05

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->i:D

    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->q:Z

    const v1, 0x3f547ae1  # 0.83f

    iput v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->t:F

    new-instance v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v1, 0x40286147a0000000L  # 12.1899995803833

    const-wide/high16 v3, 0x4030000000000000L  # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->c:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->u:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->p:I

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->g:F

    float-to-double v2, v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a(F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/16 v2, 0x0

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b(F)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b:D

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f(DZ)V

    int-to-double p1, p2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f2a0000000L  # 1.0000000116860974E-7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3f

    goto :goto_43

    :cond_3f
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    :goto_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    return-void
.end method

.method public b()Z
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->h:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    iget-wide v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->i:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_29

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_2b

    :cond_29
    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public c(II)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v1, p1

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iput-wide v1, p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double p1, p2

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iget-wide p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    return-void
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    iget-object v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    return-void
.end method

.method public e(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(DZ)V
    .registers 7

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j:D

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->q:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    :cond_10
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    if-eqz p3, :cond_19

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d()V

    :cond_19
    return-void
.end method

.method public g(III)Z
    .registers 7

    int-to-double v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f(DZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    if-gt p1, p3, :cond_20

    if-ge p1, p2, :cond_12

    goto :goto_20

    :cond_12
    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->g:F

    float-to-double p2, p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return v2

    :cond_20
    :goto_20
    if-le p1, p3, :cond_33

    int-to-double p1, p3

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    cmpl-double p3, v0, p1

    if-nez p3, :cond_2a

    goto :goto_45

    :cond_2a
    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j:D

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    goto :goto_45

    :cond_33
    if-ge p1, p2, :cond_45

    int-to-double p1, p2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    cmpl-double p3, v0, p1

    if-nez p3, :cond_3d

    goto :goto_45

    :cond_3d
    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j:D

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    :cond_45
    :goto_45
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->r:Z

    iget-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->c:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    sget p3, Lcom/coui/appcompat/scroll/SpringOverScroller;->l:F

    float-to-double v0, p3

    double-to-float p3, v0

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a(F)F

    move-result p3

    float-to-double v0, p3

    iput-wide v0, p2, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    iget-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->c:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->t:F

    const/high16 v0, 0x41800000  # 16.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    double-to-float p3, v0

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b(F)D

    move-result-wide v0

    iput-wide v0, p2, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b:D

    iget-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->c:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return p1
.end method

.method public h(III)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->n:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    iput p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->m:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->o:J

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->e(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    return-void
.end method

.method public i()Z
    .registers 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    iget-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->z:Z

    const v3, 0x3c03126f  # 0.008f

    const-string v4, "SpringOverScroller"

    if-eqz v1, :cond_48

    iput-boolean v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->z:Z

    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    const v5, 0x4e6e6b28  # 1.0E9f

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "update if: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->y:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->x:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->y:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->x:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    div-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    goto :goto_73

    :cond_48
    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    const/high16 v5, 0x447a0000  # 1000.0f

    if-eqz v1, :cond_66

    const-string/jumbo v1, "update else: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    div-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    :goto_73
    sget v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    const v5, 0x3ccccccd  # 0.025f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_95

    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    if-eqz v1, :cond_93

    const-string/jumbo v1, "update: error mRefreshTime = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v5, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    sput v3, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    :cond_95
    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    if-eqz v1, :cond_b6

    const-string/jumbo v1, "update: mRefreshTime = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mLastComputeTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    iget-wide v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->w:J

    iput-wide v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->v:J

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v5, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iget-wide v7, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iget-wide v11, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iget-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->r:Z

    const/4 v3, 0x1

    if-nez v1, :cond_17d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v13, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->u:J

    sub-long/2addr v1, v13

    iget v13, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->p:I

    if-ne v13, v3, :cond_131

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v13, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x40af400000000000L  # 4000.0

    cmpl-double v3, v13, v15

    const-wide v13, 0x40c3880000000000L  # 10000.0

    if-lez v3, :cond_110

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-object/from16 v17, v4

    iget-wide v3, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v13

    if-gez v3, :cond_112

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v15, 0x4004cccccccccccdL  # 2.6

    iget-object v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-wide/from16 v18, v7

    iget-wide v7, v4, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double/2addr v7, v13

    add-double/2addr v7, v15

    iput-wide v7, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    goto :goto_135

    :cond_110
    move-object/from16 v17, v4

    :cond_112
    move-wide/from16 v18, v7

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v15

    if-gtz v3, :cond_135

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-object v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v7, v4, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double/2addr v7, v13

    const-wide/high16 v13, 0x4012000000000000L  # 4.5

    add-double/2addr v7, v13

    iput-wide v7, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    goto :goto_135

    :cond_131
    move-object/from16 v17, v4

    move-wide/from16 v18, v7

    :cond_135
    :goto_135
    iget v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->p:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_173

    const-wide/16 v3, 0x1e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_173

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x409f400000000000L  # 2000.0

    cmpl-double v1, v1, v3

    const-wide v2, 0x3f547ae147ae147bL  # 0.00125

    if-lez v1, :cond_162

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v7, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    sget v4, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    float-to-double v13, v4

    mul-double/2addr v13, v2

    add-double/2addr v13, v7

    iput-wide v13, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    goto :goto_173

    :cond_162
    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v7, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    cmpl-double v4, v7, v13

    if-lez v4, :cond_173

    sget v4, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    float-to-double v13, v4

    mul-double/2addr v13, v2

    sub-double/2addr v7, v13

    iput-wide v7, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    :cond_173
    :goto_173
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b()Z

    move-result v1

    if-eqz v1, :cond_1ac

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    goto :goto_1ac

    :cond_17d
    move-object/from16 v17, v4

    move-wide/from16 v18, v7

    iget-wide v7, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    sub-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->s:Z

    if-nez v1, :cond_198

    const-wide v13, 0x4066800000000000L  # 180.0

    cmpg-double v1, v7, v13

    if-gez v1, :cond_198

    iput-boolean v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->s:Z

    goto :goto_1ac

    :cond_198
    const-wide/high16 v3, 0x3fd0000000000000L  # 0.25

    cmpg-double v1, v7, v3

    if-gez v1, :cond_1ac

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    iput-wide v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iput-boolean v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->s:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->r:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    return v2

    :cond_1ac
    :goto_1ac
    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b:D

    iget-wide v7, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    sub-double v9, v7, v9

    mul-double/2addr v9, v2

    iget-wide v13, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    sget v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    float-to-double v11, v1

    mul-double v15, v11, v18

    const-wide/high16 v20, 0x4000000000000000L  # 2.0

    div-double v15, v15, v20

    add-double/2addr v15, v5

    mul-double v22, v11, v9

    div-double v22, v22, v20

    add-double v22, v22, v18

    sub-double v15, v7, v15

    mul-double/2addr v15, v2

    mul-double v24, v13, v22

    sub-double v15, v15, v24

    mul-double v24, v11, v22

    div-double v24, v24, v20

    add-double v24, v24, v5

    mul-double v26, v11, v15

    div-double v26, v26, v20

    add-double v26, v26, v18

    sub-double v20, v7, v24

    mul-double v20, v20, v2

    mul-double v24, v13, v26

    sub-double v20, v20, v24

    mul-double v24, v11, v26

    add-double v0, v24, v5

    mul-double v24, v11, v20

    move-wide/from16 v28, v5

    add-double v4, v24, v18

    sub-double/2addr v7, v0

    mul-double/2addr v7, v2

    mul-double/2addr v13, v4

    sub-double/2addr v7, v13

    add-double v22, v22, v26

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    mul-double v22, v22, v2

    add-double v22, v22, v18

    add-double v22, v22, v4

    const-wide v13, 0x3fc5604180000000L  # 0.16699999570846558

    mul-double v22, v22, v13

    add-double v15, v15, v20

    mul-double/2addr v15, v2

    add-double/2addr v15, v9

    add-double/2addr v15, v7

    mul-double/2addr v15, v13

    mul-double v22, v22, v11

    add-double v2, v22, v28

    mul-double/2addr v15, v11

    add-double v6, v15, v18

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->f:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v4, v9, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iput-wide v0, v9, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    iget-object v0, v8, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iput-wide v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    if-eqz v0, :cond_262

    const-string/jumbo v0, "update: tension = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v4, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " friction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v4, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: velocity = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " position = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_262
    iget v0, v8, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->p:I

    return v1
.end method

.method public j(F)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->l:I

    iget p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->n:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    invoke-static {p1, p0, v1}, Landroidx/core/animation/b;->a(FFI)I

    move-result p0

    int-to-double p0, p0

    iput-wide p0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    return-void
.end method
