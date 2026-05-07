.class Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$1;->a:Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$1;->a:Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
