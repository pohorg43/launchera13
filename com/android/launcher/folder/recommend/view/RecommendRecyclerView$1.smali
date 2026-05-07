.class Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->showWithAnimation(Ljava/lang/Runnable;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

.field public final synthetic val$animEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$1;->val$animEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$1;->val$animEnd:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
