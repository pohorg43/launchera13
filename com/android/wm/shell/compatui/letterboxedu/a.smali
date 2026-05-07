.class public final synthetic Lcom/android/wm/shell/compatui/letterboxedu/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/a;->a:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/letterboxedu/a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/letterboxedu/a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/a;->a:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/a;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/a;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->c(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
