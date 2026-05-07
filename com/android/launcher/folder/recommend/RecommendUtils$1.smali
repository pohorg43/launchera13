.class Lcom/android/launcher/folder/recommend/RecommendUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RecommendUtils;->animateFooterTitle(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$completeRunnable:Ljava/lang/Runnable;

.field public final synthetic val$next:Landroid/view/View;

.field public final synthetic val$title:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$1;->val$title:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$1;->val$next:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$1;->val$completeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$1;->val$title:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$1;->val$next:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$1;->val$completeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_13
    return-void
.end method
