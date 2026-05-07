.class Lcom/coui/appcompat/slideview/COUISlideView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/slideview/COUISlideView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/slideview/COUISlideView;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->b:Lcom/coui/appcompat/slideview/COUISlideView;

    iput p2, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->b:Lcom/coui/appcompat/slideview/COUISlideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->a:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->a:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->a:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/slideview/COUISlideView;->h0:I

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$5;->b:Lcom/coui/appcompat/slideview/COUISlideView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
