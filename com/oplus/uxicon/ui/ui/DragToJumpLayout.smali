.class public Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field public o:Landroid/widget/Scroller;

.field public p:La/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b:I

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->d:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->e:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    const/high16 p2, 0x40400000  # 3.0f

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->k:F

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    new-instance p2, Landroid/widget/Scroller;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->p:La/a;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_63

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    goto/16 :goto_ed

    :cond_f
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_ed

    :cond_1f
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->e:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v3

    iput v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->e:I

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_44

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_ed

    :cond_44
    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v3, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Z)V

    goto/16 :goto_ed

    :cond_5e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_ed

    :cond_63
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g:I

    if-gez v0, :cond_82

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_82

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    if-gez v0, :cond_a1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    goto :goto_ac

    :cond_82
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g:I

    if-lez v0, :cond_a3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a3

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    if-lez v0, :cond_a1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    goto :goto_ac

    :cond_a1
    move v0, v2

    goto :goto_ac

    :cond_a3
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h:I

    sub-int/2addr v0, v3

    :goto_ac
    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f:I

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Z)V

    goto :goto_ed

    :cond_c2
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_ea

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v1

    if-eq v0, v1, :cond_ea

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v1

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h:I

    goto :goto_ed

    :cond_ea
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :goto_ed
    return-void
.end method

.method public final a(I)V
    .registers 16

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x5

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    goto :goto_2a

    :cond_1d
    iget-object v8, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    iget v9, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    sub-int v11, p1, v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfa

    invoke-virtual/range {v8 .. v13}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_2a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final a(I[III)V
    .registers 9

    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/2addr v1, p4

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f(I)F

    move-result v1

    mul-int/2addr p3, p1

    const/4 v2, 0x1

    if-lez p3, :cond_1b

    aget p0, p2, v0

    int-to-float p0, p0

    int-to-float p3, p1

    mul-float/2addr p3, v1

    add-float/2addr p3, p0

    float-to-int p0, p3

    aput p0, p2, v0

    aget p0, p2, v2

    add-int/2addr p0, p1

    aput p0, p2, v2

    return-void

    :cond_1b
    invoke-virtual {p0, p4}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->e(I)I

    move-result p0

    int-to-float p3, p0

    div-float/2addr p3, v1

    float-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt p4, v3, :cond_37

    aget p1, p2, v0

    sub-int/2addr p1, p0

    aput p1, p2, v0

    aget p0, p2, v2

    sub-int/2addr p0, p3

    aput p0, p2, v2

    goto :goto_50

    :cond_37
    int-to-float p3, p1

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p4, v1, :cond_45

    goto :goto_46

    :cond_45
    move p0, p3

    :goto_46
    aget p3, p2, v0

    add-int/2addr p3, p0

    aput p3, p2, v0

    aget p0, p2, v2

    add-int/2addr p0, p1

    aput p0, p2, v2

    :goto_50
    return-void
.end method

.method public final a(Z)V
    .registers 4

    const-string v0, "springBackAndRefreshIfNeed mIsLockRefresh:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragToJumpLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->p:La/a;

    if-eqz v0, :cond_34

    check-cast v0, Landroidx/core/view/a;

    iget-object v0, v0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast v0, Lb/h;

    invoke-static {v0}, Lb/h;->b(Lb/h;)V

    if-eqz p1, :cond_34

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_34
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(I)V

    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .registers 2

    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView;

    return p0
.end method

.method public final b()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->home_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b:I

    goto :goto_19

    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b:I

    :goto_19
    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const p0, 0x404ccccd  # 3.2f

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    return-void
.end method

.method public final b(I)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f:I

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    iput v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g:I

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-interface/range {v1 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final c(I)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->e:I

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-interface/range {v1 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final c()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b:I

    mul-int/2addr v0, p0

    if-lez v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public computeScroll()V
    .registers 5

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_55

    const/4 v2, 0x1

    if-ne v2, v0, :cond_a

    goto :goto_55

    :cond_a
    const/4 v3, 0x5

    if-ne v3, v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto :goto_2e

    :cond_2a
    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    iput v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a()V

    goto :goto_54

    :cond_3b
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    if-eq v0, v3, :cond_47

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    if-eqz v0, :cond_47

    invoke-virtual {p0, v2}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Z)V

    goto :goto_54

    :cond_47
    iput v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h:I

    iput v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b:I

    mul-int/2addr v0, v2

    if-gtz v0, :cond_54

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    :cond_54
    :goto_54
    return-void

    :cond_55
    :goto_55
    iput v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h:I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b:I

    mul-int/2addr v0, v2

    if-gtz v0, :cond_60

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    :cond_60
    return-void
.end method

.method public final d()Z
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    if-gez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final d(I)[I
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez p1, :cond_31

    neg-int v4, p1

    invoke-virtual {p0, v4}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, p1, v0, v2, v4}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(I[III)V

    :cond_1a
    aget v2, v0, v3

    sub-int v2, p1, v2

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_55

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_55

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    aget v1, v0, v1

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v0, v3, p1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(I[III)V

    goto :goto_55

    :cond_31
    neg-int v4, p1

    invoke-virtual {p0, v4}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(I[III)V

    :cond_3d
    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_48

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_48

    return-object v0

    :cond_48
    aget v3, v0, v3

    sub-int/2addr p1, v3

    if-gez p1, :cond_55

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    aget v1, v0, v1

    add-int/2addr v3, v1

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(I[III)V

    :cond_55
    :goto_55
    return-object v0

    :array_56
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    const-string v3, "DragToJumpLayout"

    const/4 v4, 0x1

    if-eqz v1, :cond_3b

    if-eq v1, v4, :cond_33

    if-eq v1, v2, :cond_2f

    const-string p0, "dispatch event --- "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_2f
    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    goto :goto_56

    :cond_33
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    if-ne p1, v4, :cond_56

    invoke-virtual {p0, v4}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Z)V

    goto :goto_56

    :cond_3b
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_45

    const/4 v1, 0x4

    if-eq p1, v1, :cond_45

    if-ne p1, v2, :cond_56

    :cond_45
    const-string p1, "Stop scroller on action down"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_56
    :goto_56
    return v0
.end method

.method public final e(I)I
    .registers 2

    return p1
.end method

.method public final e()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final f(I)F
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    const v1, 0x3a83126f  # 0.001f

    if-nez p1, :cond_16

    move v0, v1

    :cond_16
    iget p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->k:F

    div-float/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final f()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, v0, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method public final g(I)Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a:I

    neg-int p0, p0

    if-gt p1, p0, :cond_15

    move v1, v2

    :cond_15
    return v1

    :cond_16
    iget p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a:I

    if-lt p1, p0, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method

.method public getNestedScrollAxes()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->n:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    return-void
.end method

.method public final h(I)Z
    .registers 2

    if-gez p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->d()Z

    move-result p0

    return p0

    :cond_7
    iget p0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content view must be RecyclerView"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 6

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_6

    return v0

    :cond_6
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->d:I

    neg-int p3, p1

    int-to-float p3, p3

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const-string p2, "Nested pre-fling, v "

    const-string p3, ", scroll "

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    const-string v1, "DragToJumpLayout"

    invoke-static {p2, p3, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez p1, :cond_26

    return v0

    :cond_26
    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_47

    invoke-virtual {p0, p3}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result p2

    if-eqz p2, :cond_35

    goto :goto_47

    :cond_35
    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_43

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->c(I)V

    goto :goto_4a

    :cond_43
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->b(I)V

    goto :goto_4a

    :cond_47
    :goto_47
    invoke-virtual {p0, p3}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Z)V

    :goto_4a
    return p3
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, p3, :cond_4d

    if-nez p2, :cond_7

    goto :goto_4d

    :cond_7
    const/4 p1, 0x0

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p3

    if-nez p3, :cond_18

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    mul-int v0, p2, p3

    if-ltz v0, :cond_18

    sub-int/2addr p2, p3

    goto :goto_1a

    :cond_18
    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    :goto_1a
    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->d(I)[I

    move-result-object p2

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    aget v0, p2, p1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p3

    if-nez p3, :cond_3d

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    aget v0, p2, v0

    add-int/2addr p3, v0

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    aget v0, p4, p1

    add-int/2addr v0, p3

    aput v0, p4, p1

    goto :goto_41

    :cond_3d
    aget p3, p2, v0

    aput p3, p4, p1

    :goto_41
    aget p2, p2, p1

    if-eqz p2, :cond_4d

    const/4 p2, 0x2

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    iget p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, p2, :cond_1d

    if-nez p5, :cond_7

    goto :goto_1d

    :cond_7
    invoke-virtual {p0, p5}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->d(I)[I

    move-result-object p1

    iget p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    const/4 p3, 0x0

    aget p4, p1, p3

    add-int/2addr p2, p4

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->l:I

    aget p1, p1, p3

    if-eqz p1, :cond_1d

    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_b

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    if-eqz v0, :cond_10

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->i:I

    :cond_10
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    :cond_8
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->j:I

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_19
    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->a(Z)V

    :cond_1c
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->h()V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->g()V

    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setOnRefreshListener(La/a;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/DragToJumpLayout;->p:La/a;

    return-void
.end method
