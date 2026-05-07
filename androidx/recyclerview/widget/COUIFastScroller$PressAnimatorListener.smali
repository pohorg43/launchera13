.class Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PressAnimatorListener"
.end annotation


# instance fields
.field private isCancel:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/COUIFastScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/COUIFastScroller;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->isCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->isCancel:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->isCancel:Z

    return-void

    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {p1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$800(Landroidx/recyclerview/widget/COUIFastScroller;)F

    move-result p1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1502(Landroidx/recyclerview/widget/COUIFastScroller;I)I

    goto :goto_20

    :cond_1b
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1502(Landroidx/recyclerview/widget/COUIFastScroller;I)I

    :goto_20
    return-void
.end method
