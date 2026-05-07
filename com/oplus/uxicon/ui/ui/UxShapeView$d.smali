.class public Lcom/oplus/uxicon/ui/ui/UxShapeView$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxShapeView;->b()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxShapeView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxShapeView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$d;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$d;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->b(Lcom/oplus/uxicon/ui/ui/UxShapeView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$d;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
