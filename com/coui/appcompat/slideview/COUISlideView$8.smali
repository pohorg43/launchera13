.class Lcom/coui/appcompat/slideview/COUISlideView$8;
.super Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;
.source ""


# instance fields
.field public final synthetic e:Lcom/coui/appcompat/slideview/COUISlideView;


# virtual methods
.method public a()V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$8;->e:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j0:Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->K:Z

    invoke-interface {v0}, Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;->a()V

    :cond_c
    return-void
.end method
