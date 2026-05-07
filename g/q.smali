.class public Lg/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/m;
.implements Lh/a$b;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:Lcom/airbnb/lottie/j;

.field public final d:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lg/b;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/m;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/q;->a:Landroid/graphics/Path;

    new-instance v0, Lg/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/b;-><init>(I)V

    iput-object v0, p0, Lg/q;->f:Lg/b;

    iget-boolean v0, p3, Ll/m;->d:Z

    iput-boolean v0, p0, Lg/q;->b:Z

    iput-object p1, p0, Lg/q;->c:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Ll/m;->c:Lk/g;

    invoke-virtual {p1}, Lk/g;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/q;->d:Lh/a;

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .registers 4

    iget-boolean v0, p0, Lg/q;->e:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lg/q;->a:Landroid/graphics/Path;

    return-object p0

    :cond_7
    iget-object v0, p0, Lg/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lg/q;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lg/q;->e:Z

    iget-object p0, p0, Lg/q;->a:Landroid/graphics/Path;

    return-object p0

    :cond_16
    iget-object v0, p0, Lg/q;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lg/q;->d:Lh/a;

    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lg/q;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lg/q;->f:Lg/b;

    iget-object v2, p0, Lg/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lg/b;->a(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lg/q;->e:Z

    iget-object p0, p0, Lg/q;->a:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/q;->e:Z

    iget-object p0, p0, Lg/q;->c:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/c;",
            ">;",
            "Ljava/util/List<",
            "Lg/c;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_29

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    instance-of v1, v0, Lg/s;

    if-eqz v1, :cond_26

    check-cast v0, Lg/s;

    iget v1, v0, Lg/s;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lg/q;->f:Lg/b;

    iget-object v1, v1, Lg/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lg/s;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method
