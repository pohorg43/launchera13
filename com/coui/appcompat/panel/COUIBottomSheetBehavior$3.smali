.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startPanelTranslateAnimation(Landroid/view/View;IIFLandroid/view/animation/PathInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->a:Landroid/view/View;

    float-to-int p1, p1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$102(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->b:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;->a:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V

    :cond_37
    return-void
.end method
