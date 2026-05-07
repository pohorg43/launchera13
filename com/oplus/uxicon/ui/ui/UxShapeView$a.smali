.class public Lcom/oplus/uxicon/ui/ui/UxShapeView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxShapeView;->a()Landroid/animation/ValueAnimator;
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

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->a(Lcom/oplus/uxicon/ui/ui/UxShapeView;I)I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->b(Lcom/oplus/uxicon/ui/ui/UxShapeView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->a(Lcom/oplus/uxicon/ui/ui/UxShapeView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;->a:Lcom/oplus/uxicon/ui/ui/UxShapeView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
