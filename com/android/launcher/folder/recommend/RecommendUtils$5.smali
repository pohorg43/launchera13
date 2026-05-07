.class Lcom/android/launcher/folder/recommend/RecommendUtils$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadComplete(Lcom/coui/appcompat/progressbar/COUILoadingView;[Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$loadingView:Lcom/coui/appcompat/progressbar/COUILoadingView;

.field public final synthetic val$views:[Landroid/view/View;


# direct methods
.method public constructor <init>([Landroid/view/View;Lcom/coui/appcompat/progressbar/COUILoadingView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$views:[Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$loadingView:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$views:[Landroid/view/View;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$views:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$views:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$loadingView:Lcom/coui/appcompat/progressbar/COUILoadingView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendUtils$5;->val$loadingView:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
