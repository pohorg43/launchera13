.class Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;IIII)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->e:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->a:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->b:I

    iput p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->c:I

    iput p5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->e:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->a:I

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->b:I

    sget-object v3, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->a:Landroid/view/animation/Interpolator;

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-static {v2, p1, v1}, Landroidx/core/animation/b;->a(FFI)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->c:I

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;->d:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    invoke-static {p1, p0, v2}, Landroidx/core/animation/b;->a(FFI)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f(II)V

    return-void
.end method
