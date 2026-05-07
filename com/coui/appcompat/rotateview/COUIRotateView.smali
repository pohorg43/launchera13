.class public Lcom/coui/appcompat/rotateview/COUIRotateView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field public a:Landroid/view/animation/Interpolator;

.field public b:J

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/rotateview/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/rotateview/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e083127  # 0.133f

    const/4 p2, 0x0

    const v0, 0x3e99999a  # 0.3f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, p2, v0, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->a:Landroid/view/animation/Interpolator;

    const-wide/16 p1, 0x190

    iput-wide p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->b:J

    iput-boolean p3, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide p2, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->b:J

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/rotateview/COUIRotateView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/rotateview/COUIRotateView$1;-><init>(Lcom/coui/appcompat/rotateview/COUIRotateView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public setExpanded(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    if-eq v0, p1, :cond_14

    iget-boolean v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    if-eqz v0, :cond_9

    goto :goto_14

    :cond_9
    iput-boolean p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    if-eqz p1, :cond_10

    const/high16 p1, 0x43340000  # 180.0f

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_14
    :goto_14
    return-void
.end method
