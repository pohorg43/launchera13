.class Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;->buildShowAnimatorAfterOpened()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;

.field public final synthetic val$child:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$1;->val$child:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
