.class public Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxSelectableView;->c()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lb/c;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lb/c;->f:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {v1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)I

    move-result v1

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {v2}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->c(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;Z)Z

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const-string p0, "UxSelectableView"

    const-string p1, "outLineAppearAnimator start --  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
