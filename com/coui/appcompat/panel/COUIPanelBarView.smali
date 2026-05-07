.class public Lcom/coui/appcompat/panel/COUIPanelBarView;
.super Landroid/view/View;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Path;

.field public u:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->b:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->d:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->e:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->f:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->g:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->h:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->i:F

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->d:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->e:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->f:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->g:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->h:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->i:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->q:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->b:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->d:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->e:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->f:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->g:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->h:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->i:F

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->q:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private setBarOffset(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_panel_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_panel_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_panel_bar_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->m:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_panel_drag_bar_max_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_panel_normal_padding_top_tiny_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->q:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$color;->coui_panel_bar_view_color:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->n:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->t:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->l:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->n:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->m:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->l:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->d:F

    sub-float v3, v2, v0

    iput v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->e:F

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->k:I

    int-to-float v4, v4

    div-float v1, v4, v1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->f:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->g:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->h:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->i:F

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->t:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->t:Landroid/graphics/Path;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->d:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->t:Landroid/graphics/Path;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->f:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->t:Landroid/graphics/Path;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->h:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->t:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setBarColor(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->n:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsBeingDragged(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->b:Z

    if-eq v0, p1, :cond_53

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->b:Z

    if-nez p1, :cond_53

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1b
    const/4 p1, 0x2

    new-array p1, p1, [F

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, p1, v0

    const-string v0, "barOffset"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    mul-float/2addr v3, v2

    div-float/2addr v0, v3

    const/high16 v2, 0x43270000  # 167.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    :cond_53
    return-void
.end method

.method public setIsFixed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    return-void
.end method

.method public setPanelOffset(I)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    if-nez v0, :cond_e7

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    mul-int v1, v0, p1

    if-lez v1, :cond_e

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    goto :goto_10

    :cond_e
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    :goto_10
    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_28

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    if-lez p1, :cond_e7

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->q:I

    if-ge p1, v0, :cond_e7

    :cond_28
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->b:Z

    if-nez p1, :cond_2e

    goto/16 :goto_e7

    :cond_2e
    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->o:I

    const/high16 v0, 0x43270000  # 167.0f

    const/high16 v1, 0x40000000  # 2.0f

    const-string v2, "barOffset"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez p1, :cond_8d

    iget v7, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    cmpg-float v7, v7, v5

    if-gtz v7, :cond_8d

    iget v7, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    if-eq v7, v6, :cond_8d

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    if-nez p1, :cond_e7

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_59
    new-array p1, v4, [F

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    aput v4, p1, v3

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    aput v3, p1, v6

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    mul-float/2addr v3, v1

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput v6, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    goto :goto_e7

    :cond_8d
    if-gez p1, :cond_e7

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_e7

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    const/4 v5, -0x1

    if-eq p1, v5, :cond_e7

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->p:I

    iget v7, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->q:I

    if-lt p1, v7, :cond_e7

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->a:Z

    if-nez p1, :cond_e7

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_b3
    new-array p1, v4, [F

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    aput v4, p1, v3

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    neg-float v3, v3

    aput v3, p1, v6

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->c:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->j:F

    mul-float/2addr v3, v1

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput v5, p0, Lcom/coui/appcompat/panel/COUIPanelBarView;->r:I

    :cond_e7
    :goto_e7
    return-void
.end method
