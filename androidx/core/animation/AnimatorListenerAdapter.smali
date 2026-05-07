.class public abstract Landroidx/core/animation/AnimatorListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorListener;
.implements Landroidx/core/animation/Animator$AnimatorPauseListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroidx/core/animation/Animator;)V
    .registers 2
    .param p1  # Landroidx/core/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationEnd(Landroidx/core/animation/Animator;)V
    .registers 2
    .param p1  # Landroidx/core/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationPause(Landroidx/core/animation/Animator;)V
    .registers 2
    .param p1  # Landroidx/core/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationRepeat(Landroidx/core/animation/Animator;)V
    .registers 2
    .param p1  # Landroidx/core/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationResume(Landroidx/core/animation/Animator;)V
    .registers 2
    .param p1  # Landroidx/core/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroidx/core/animation/Animator;)V
    .registers 2
    .param p1  # Landroidx/core/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
