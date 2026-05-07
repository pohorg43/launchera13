.class Lcom/android/launcher/pageindicators/OplusPageIndicator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$400(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->access$200(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;->this$0:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
