.class final Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/OplusIconAnimators;-><init>(Lcom/android/launcher3/BubbleTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/OplusIconAnimators;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;->this$0:Lcom/android/launcher3/icons/anim/OplusIconAnimators;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;->this$0:Lcom/android/launcher3/icons/anim/OplusIconAnimators;

    invoke-static {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->access$getMView$p(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;->invoke()Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;

    move-result-object p0

    return-object p0
.end method
