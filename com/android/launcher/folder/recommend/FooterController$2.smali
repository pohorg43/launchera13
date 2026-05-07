.class Lcom/android/launcher/folder/recommend/FooterController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$OnLoadedAnimatorReadyPlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/recommend/FooterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/FooterController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$2;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Landroid/animation/Animator;)V
    .registers 4

    new-instance v0, Lcom/android/launcher/folder/recommend/FooterController$2$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/FooterController$2$1;-><init>(Lcom/android/launcher/folder/recommend/FooterController$2;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController$2;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/FooterController;->access$200(Lcom/android/launcher/folder/recommend/FooterController;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController$2;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/FooterController;->access$200(Lcom/android/launcher/folder/recommend/FooterController;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/FooterController$2$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/folder/recommend/FooterController$2$2;-><init>(Lcom/android/launcher/folder/recommend/FooterController$2;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_26

    :cond_23
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_26
    return-void
.end method
