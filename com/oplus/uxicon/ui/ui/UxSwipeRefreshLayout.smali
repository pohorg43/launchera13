.class public Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/content/Context;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Landroid/widget/ListView;

.field public o:I

.field public p:I

.field public q:F

.field public r:Ljava/lang/Integer;

.field public s:Landroid/view/ViewGroup;

.field public t:Landroid/view/ViewGroup;

.field public u:Le/c;

.field public v:I

.field public w:I

.field public x:Le/e;

.field public y:Le/f;

.field public z:Le/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x2

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a:I

    const/16 p2, 0x32

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->h:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    const/16 p2, 0xbb

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)Le/e;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->x:Le/e;

    return-object p0
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    return p1
.end method

.method private getmPullDownDistance()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    return p0
.end method

.method private getmPullUpDistance()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    return p0
.end method

.method private setmPullDownDistance(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    if-eqz p0, :cond_b

    check-cast p0, Le/a;

    invoke-virtual {p0, p1}, Le/a;->c(I)V

    :cond_b
    return-void
.end method

.method private setmPullUpDistance(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    if-eqz p0, :cond_b

    check-cast p0, Le/a;

    invoke-virtual {p0, p1}, Le/a;->a(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_41

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    iget p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    sub-float p2, p1, p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_41

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    const/16 p1, 0xd1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_26
    iget p2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    sub-float p2, p1, p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_41

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    const/16 p1, 0xc1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    :cond_41
    :goto_41
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const-string v1, "pullUpDistance"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final a(I)V
    .registers 8

    const-wide/16 v0, 0x12c

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x21

    if-ne p1, v5, :cond_20

    new-array p1, v3, [I

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    aput v3, p1, v4

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->g:I

    aput v3, p1, v2

    const-string v2, "pullDownDistance"

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_38

    :cond_20
    const/16 v5, 0x22

    if-ne p1, v5, :cond_38

    new-array p1, v3, [I

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    aput v3, p1, v4

    aput v4, p1, v2

    const-string v2, "pullUpDistance"

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_38
    :goto_38
    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const-string v1, "pullDownDistance"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final b(I)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    if-eqz p1, :cond_1c

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    check-cast p1, Le/a;

    invoke-virtual {p1, p0}, Le/a;->c(I)V

    :cond_1c
    return-void
.end method

.method public final c()V
    .registers 3

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->j:I

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz v0, :cond_11

    check-cast v0, Le/a;

    const-string v1, "Release Load"

    invoke-virtual {v0, v1}, Le/a;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->y:Le/f;

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Le/f;->d()V

    goto :goto_2b

    :cond_19
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz v0, :cond_24

    check-cast v0, Le/a;

    const-string v1, "Pull Load"

    invoke-virtual {v0, v1}, Le/a;->b(Ljava/lang/String;)V

    :cond_24
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->y:Le/f;

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Le/f;->c()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final c(I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    if-eqz p1, :cond_1b

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    check-cast p1, Le/a;

    invoke-virtual {p1, p0}, Le/a;->c(I)V

    :cond_1b
    return-void
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->i:I

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz v0, :cond_11

    check-cast v0, Le/a;

    const-string v1, "Release Refresh"

    invoke-virtual {v0, v1}, Le/a;->d(Ljava/lang/String;)V

    :cond_11
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->y:Le/f;

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Le/f;->a()V

    goto :goto_2b

    :cond_19
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz v0, :cond_24

    check-cast v0, Le/a;

    const-string v1, "Pull Refresh"

    invoke-virtual {v0, v1}, Le/a;->d(Ljava/lang/String;)V

    :cond_24
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->y:Le/f;

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Le/f;->b()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final d(I)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    if-eqz p1, :cond_1c

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    check-cast p1, Le/a;

    invoke-virtual {p1, p0}, Le/a;->a(I)V

    :cond_1c
    return-void
.end method

.method public e()V
    .registers 3

    const-string v0, "--- doLoadMore --- "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UxSwipeRefreshLayout "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->x:Le/e;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Le/e;->b()V

    :cond_22
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz p0, :cond_2d

    check-cast p0, Le/a;

    const-string v0, "Loading"

    invoke-virtual {p0, v0}, Le/a;->b(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public final e(I)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    if-eqz p1, :cond_1c

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    check-cast p1, Le/a;

    invoke-virtual {p1, p0}, Le/a;->a(I)V

    :cond_1c
    return-void
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_18

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    :goto_1b
    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m()V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz p0, :cond_11

    check-cast p0, Le/a;

    const-string v0, "Load Finish"

    invoke-virtual {p0, v0}, Le/a;->b(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public getmFootView()Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getmHeadView()Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->s:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    return-void
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->f:Landroid/content/Context;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b:I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->f:Landroid/content/Context;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->h:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->h:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b:I

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->i:I

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->j:I

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)V

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public isRefreshing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    return p0
.end method

.method public final j()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    if-eqz v0, :cond_132

    new-instance v0, Le/a;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Le/a;-><init>(Landroid/content/Context;Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)V

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->s:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v2, :cond_8a

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$layout;->srll_header:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Le/a;->b:Landroid/view/ViewGroup;

    iget-object v2, v0, Le/a;->i:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iput v1, v2, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a:I

    iget-object v1, v0, Le/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Le/a;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, v0, Le/a;->k:Landroid/view/ViewGroup$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v0, Le/a;->l:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v1, v0, Le/a;->j:Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, v0, Le/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Le/a;->b:Landroid/view/ViewGroup;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->tv_head_tip:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Le/a;->c:Landroid/widget/TextView;

    iget-object v1, v0, Le/a;->b:Landroid/view/ViewGroup;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->iv_head_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Le/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Le/a;->b:Landroid/view/ViewGroup;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->iv_head_refresh:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Le/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Le/a;->b:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->s:Landroid/view/ViewGroup;

    goto :goto_ba

    :cond_8a
    iput-object v2, v0, Le/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_ae

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Le/a;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, v0, Le/a;->k:Landroid/view/ViewGroup$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, v0, Le/a;->l:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v1, v0, Le/a;->j:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_b5

    :cond_ae
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v1, v0, Le/a;->j:Landroid/view/ViewGroup$LayoutParams;

    :goto_b5
    iget-object v1, v0, Le/a;->j:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_ba
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    if-nez v1, :cond_116

    iget-object v1, v0, Le/a;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$layout;->srll_footer:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Le/a;->a:Landroid/view/ViewGroup;

    iget-object v2, v0, Le/a;->i:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    iget v2, v2, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Le/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Le/a;->i:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    iget v2, v2, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, Le/a;->e:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v1, v0, Le/a;->n:Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, v0, Le/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Le/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/oplus/uxicon/ui/R$id;->iv_foot_refresh:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/progressbar/COUILoadingView;

    iput-object v1, v0, Le/a;->h:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, v0, Le/a;->a:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    goto :goto_124

    :cond_116
    iput-object v1, v0, Le/a;->a:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v0, Le/a;->e:I

    invoke-direct {v2, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v2, v0, Le/a;->n:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_124
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_132
    return-void
.end method

.method public k()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    return p0
.end method

.method public final l()V
    .registers 4

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    :cond_8
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->v:I

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->i:I

    if-lt v0, v2, :cond_28

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(I)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->x:Le/e;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Le/e;->a()V

    :cond_1c
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz v0, :cond_2f

    check-cast v0, Le/a;

    const-string v2, "Refreshing"

    invoke-virtual {v0, v2}, Le/a;->d(Ljava/lang/String;)V

    goto :goto_2f

    :cond_28
    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b()V

    :cond_2f
    :goto_2f
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->o:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_37

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5e

    :cond_37
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->j:I

    if-lt v0, v2, :cond_57

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(I)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->x:Le/e;

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Le/e;->b()V

    :cond_4b
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    if-eqz p0, :cond_5e

    check-cast p0, Le/a;

    const-string v0, "Loading"

    invoke-virtual {p0, v0}, Le/a;->b(Ljava/lang/String;)V

    goto :goto_5e

    :cond_57
    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    if-nez v0, :cond_5e

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public final m()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->w:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const-string v1, "pullUpDistance"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0xbb

    const/16 v4, 0xaa

    const/4 v5, 0x1

    if-eqz v0, :cond_5e

    iget v6, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    if-ne v6, v4, :cond_24

    iget-boolean v6, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-eqz v6, :cond_24

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0, p1, v5}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0, p1, v5}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3f
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    if-ne v0, v3, :cond_5e

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0, p1, v1}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5e
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    if-eqz v0, :cond_a5

    iget v6, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    if-ne v6, v4, :cond_7b

    iget-boolean v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-eqz v4, :cond_7b

    invoke-static {v0, v5}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p0, p1, v5}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_7b
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    invoke-static {v0, v5}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {p0, p1, v5}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_8e
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    if-ne v0, v3, :cond_a5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    invoke-static {v0, v2}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-virtual {p0, p1, v1}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_a5
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->f()V

    :cond_e
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 9

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_c

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_2a

    :cond_c
    const/16 p1, 0xbb

    if-ne v0, p1, :cond_2a

    if-lez p3, :cond_2a

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    if-lez p1, :cond_2a

    if-le p3, p1, :cond_22

    sub-int p1, p3, p1

    aput p1, p4, v2

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->h()V

    goto :goto_27

    :cond_22
    sub-int/2addr p1, p3

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    aput p3, p4, v2

    :goto_27
    invoke-virtual {p0, p3}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c(I)V

    :cond_2a
    :goto_2a
    if-gez p3, :cond_43

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    if-gez p1, :cond_43

    if-ge p3, p1, :cond_3b

    sub-int/2addr p1, p3

    aput p1, p4, v2

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->h()V

    goto :goto_40

    :cond_3b
    sub-int/2addr p1, p3

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    aput p3, p4, v2

    :goto_40
    invoke-virtual {p0, p3}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e(I)V

    :cond_43
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 8

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_1d

    :cond_a
    const/16 p1, 0xbb

    if-ne v0, p1, :cond_1d

    if-gez p5, :cond_1d

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-nez p1, :cond_1d

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    neg-int p2, p5

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    invoke-virtual {p0, p5}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b(I)V

    :cond_1d
    :goto_1d
    if-lez p5, :cond_30

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    if-nez p1, :cond_30

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    if-nez p1, :cond_30

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    neg-int p2, p5

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    invoke-virtual {p0, p5}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d(I)V

    :cond_30
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    const/4 v1, 0x0

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_b

    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_1c

    :cond_b
    const/16 p1, 0xbb

    if-ne v0, p1, :cond_1c

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    if-lez p1, :cond_1c

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l()V

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d:I

    :cond_1c
    :goto_1c
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    if-gez p1, :cond_25

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l()V

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e:I

    :cond_25
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_82

    const/4 v3, 0x2

    if-eq v0, v3, :cond_16

    goto/16 :goto_88

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    const/16 v4, 0xd1

    const/16 v5, 0xc1

    if-ltz v3, :cond_4c

    iget-object v6, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_35

    iget-boolean v5, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-nez v5, :cond_35

    invoke-virtual {p0, v3}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->b(I)V

    goto :goto_7f

    :cond_35
    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_7f

    iget-boolean v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    if-nez v4, :cond_7f

    invoke-virtual {p0, v3}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->e(I)V

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_7f

    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_7f

    :cond_4c
    iget-object v6, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_5c

    iget-boolean v5, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k:Z

    if-nez v5, :cond_5c

    invoke-virtual {p0, v3}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c(I)V

    goto :goto_7f

    :cond_5c
    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_7f

    iget-boolean v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l:Z

    if-nez v4, :cond_7f

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    if-nez v4, :cond_7f

    invoke-virtual {p0, v3}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->d(I)V

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_77

    neg-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_77
    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    if-eqz v4, :cond_7f

    neg-int v3, v3

    invoke-static {v4, v3}, Landroidx/core/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    :cond_7f
    :goto_7f
    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->q:F

    goto :goto_88

    :cond_82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->l()V

    :goto_88
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->r:Ljava/lang/Integer;

    if-nez v0, :cond_94

    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_93

    goto :goto_94

    :cond_93
    move v1, v2

    :cond_94
    :goto_94
    return v1
.end method

.method public setFootView(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    return-void
.end method

.method public setListViewHeadAndFoot(Landroid/widget/ListView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->n:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->j()V

    return-void
.end method

.method public setRefreshStyle(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->p:I

    return-void
.end method

.method public setmFootViewAccessLoadDistance(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->j:I

    :cond_4
    return-void
.end method

.method public setmFootViewVisibility(I)V
    .registers 4

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x0

    :goto_a
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_20

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method public setmHeadViewRefreshingHeight(I)V
    .registers 3

    if-ltz p1, :cond_9

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->g:I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->i:I

    :cond_9
    return-void
.end method

.method public setmOnChangeViewHeight(Le/c;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->u:Le/c;

    return-void
.end method

.method public setmOnChangeViewTip(Le/d;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->z:Le/d;

    return-void
.end method

.method public setmOnRefreshAndLoadListener(Le/e;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->x:Le/e;

    return-void
.end method

.method public setmOnSlideActionListener(Le/f;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->y:Le/f;

    return-void
.end method
