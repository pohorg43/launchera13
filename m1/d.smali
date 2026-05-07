.class public Lm1/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm1/d$b;
    }
.end annotation


# static fields
.field public static l:I


# instance fields
.field public a:Lm1/e;

.field public final b:Ljava/lang/String;

.field public final c:Lm1/d$b;

.field public final d:Lm1/d$b;

.field public final e:Lm1/d$b;

.field public f:D

.field public g:D

.field public h:Z

.field public i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lm1/g;",
            ">;"
        }
    .end annotation
.end field

.field public j:D

.field public final k:Lm1/b;


# direct methods
.method public constructor <init>(Lm1/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm1/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm1/d$b;-><init>(Lm1/d$a;)V

    iput-object v0, p0, Lm1/d;->c:Lm1/d$b;

    new-instance v0, Lm1/d$b;

    invoke-direct {v0, v1}, Lm1/d$b;-><init>(Lm1/d$a;)V

    iput-object v0, p0, Lm1/d;->d:Lm1/d$b;

    new-instance v0, Lm1/d$b;

    invoke-direct {v0, v1}, Lm1/d$b;-><init>(Lm1/d$a;)V

    iput-object v0, p0, Lm1/d;->e:Lm1/d$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/d;->h:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lm1/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm1/d;->j:D

    iput-object p1, p0, Lm1/d;->k:Lm1/b;

    const-string/jumbo p1, "spring:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lm1/d;->l:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lm1/d;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm1/d;->b:Ljava/lang/String;

    sget-object p1, Lm1/e;->c:Lm1/e;

    invoke-virtual {p0, p1}, Lm1/d;->f(Lm1/e;)Lm1/d;

    return-void
.end method


# virtual methods
.method public a(Lm1/g;)Lm1/d;
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lm1/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .registers 7

    iget-object v0, p0, Lm1/d;->c:Lm1/d$b;

    iget-wide v0, v0, Lm1/d$b;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL  # 0.005

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2c

    iget-object v0, p0, Lm1/d;->c:Lm1/d$b;

    iget-wide v4, p0, Lm1/d;->g:D

    iget-wide v0, v0, Lm1/d$b;->a:D

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_2a

    iget-object p0, p0, Lm1/d;->a:Lm1/e;

    iget-wide v0, p0, Lm1/e;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public c()Lm1/d;
    .registers 5

    iget-object v0, p0, Lm1/d;->c:Lm1/d$b;

    iget-wide v1, v0, Lm1/d$b;->a:D

    iput-wide v1, p0, Lm1/d;->g:D

    iget-object v3, p0, Lm1/d;->e:Lm1/d$b;

    iput-wide v1, v3, Lm1/d$b;->a:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lm1/d$b;->b:D

    return-object p0
.end method

.method public d(D)Lm1/d;
    .registers 4

    iput-wide p1, p0, Lm1/d;->f:D

    iget-object v0, p0, Lm1/d;->c:Lm1/d$b;

    iput-wide p1, v0, Lm1/d$b;->a:D

    iget-object p1, p0, Lm1/d;->k:Lm1/b;

    iget-object p2, p0, Lm1/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lm1/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lm1/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm1/g;

    invoke-interface {p2, p0}, Lm1/g;->onSpringUpdate(Lm1/d;)V

    goto :goto_13

    :cond_23
    invoke-virtual {p0}, Lm1/d;->c()Lm1/d;

    return-object p0
.end method

.method public e(D)Lm1/d;
    .registers 5

    iget-wide v0, p0, Lm1/d;->g:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lm1/d;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    iget-object v0, p0, Lm1/d;->c:Lm1/d$b;

    iget-wide v0, v0, Lm1/d$b;->a:D

    iput-wide v0, p0, Lm1/d;->f:D

    iput-wide p1, p0, Lm1/d;->g:D

    iget-object p1, p0, Lm1/d;->k:Lm1/b;

    iget-object p2, p0, Lm1/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lm1/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lm1/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm1/g;

    invoke-interface {p2, p0}, Lm1/g;->onSpringEndStateChange(Lm1/d;)V

    goto :goto_22

    :cond_32
    return-object p0
.end method

.method public f(Lm1/e;)Lm1/d;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lm1/d;->a:Lm1/e;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
