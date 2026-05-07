.class Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

.field public final synthetic val$endCallback:Ljava/lang/Runnable;

.field public final synthetic val$startCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$startCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$endCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$endCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;->val$startCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
