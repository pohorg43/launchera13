.class public final Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OplusRectFSpringAnim;->createAssistantScreenEnterAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/util/OplusRectFSpringAnim;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;->this$0:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;->this$0:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->access$setAssistantScale$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V

    iget-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;->this$0:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-static {p1, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->access$setAssistantAlpha$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V

    iget-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;->this$0:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->access$setAssistantAnimEnded$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;->this$0:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
