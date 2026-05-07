.class Lcom/android/launcher/pageindicators/OplusPageIndicator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/OplusPageIndicator;->startTrackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$000(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$400(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    sub-float/2addr v2, v0

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V

    goto :goto_5b

    :cond_37
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$200(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V

    :goto_5b
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
