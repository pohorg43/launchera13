.class Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;->this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;->this$0:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->access$002(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
