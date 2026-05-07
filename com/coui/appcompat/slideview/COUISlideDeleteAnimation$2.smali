.class Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$2;->a:Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$2;->a:Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->a()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
