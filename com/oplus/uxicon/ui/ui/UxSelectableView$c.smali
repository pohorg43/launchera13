.class public Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d()Landroid/animation/ValueAnimator;
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

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;I)I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lb/c;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)I

    move-result v0

    iput v0, p1, Lb/c;->f:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)I

    move-result v0

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-static {v1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->c(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
