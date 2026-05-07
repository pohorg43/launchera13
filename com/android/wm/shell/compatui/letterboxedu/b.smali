.class public final synthetic Lcom/android/wm/shell/compatui/letterboxedu/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/b;->a:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/letterboxedu/b;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/b;->a:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/b;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->b(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Ljava/lang/Runnable;)V

    return-void
.end method
