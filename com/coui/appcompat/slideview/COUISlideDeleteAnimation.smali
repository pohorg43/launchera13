.class public abstract Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$ViewWrapper;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/animation/ValueAnimator;

.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->a:Landroid/view/View;

    const/4 p1, 0x2

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14a

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->b:Landroid/animation/ValueAnimator;

    const v0, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v0, v2, v3, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->b:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$1;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$1;-><init>(Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;)V

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$ViewWrapper;

    iget-object v5, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->a:Landroid/view/View;

    invoke-direct {p3, v5}, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$ViewWrapper;-><init>(Landroid/view/View;)V

    new-array p1, p1, [I

    aput p4, p1, v1

    aput p5, p1, p2

    const-string p2, "height"

    invoke-static {p3, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->c:Landroid/animation/ObjectAnimator;

    invoke-static {v0, v2, v3, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->c:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->c:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->c:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation$2;-><init>(Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->d:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
